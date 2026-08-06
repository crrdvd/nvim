return {
    'nvim-telescope/telescope.nvim', version = '*',
    cmd = 'Telescope',
    dependencies = {
        'nvim-lua/plenary.nvim',
        -- optional but recommended
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    },
    config = function()
        local telescope = require('telescope')
        local actions = require('telescope.actions')
        local action_state = require('telescope.actions.state')

        local delete_file = function(prompt_bufnr)
            local selection = action_state.get_selected_entry()
            if not selection then return end

            -- Attenzione: il picker `buffers` non popola `path`, solo `filename`.
            local path = selection.path or selection.filename
            if not path then
                vim.notify("Nessun percorso associato a questa selezione", vim.log.levels.WARN)
                return
            end

            if vim.fn.confirm("Eliminare " .. path .. "?", "&Si\n&No", 2) ~= 1 then return end

            local flags = vim.fn.isdirectory(path) == 1 and "rf" or ""
            if vim.fn.delete(path, flags) == 0 then
                vim.notify("Eliminato: " .. path, vim.log.levels.INFO)
                -- Ricarica la lista senza chiudere il picker
                local picker = action_state.get_current_picker(prompt_bufnr)
                if picker then picker:refresh(nil, { reset_prompt = false }) end
            else
                vim.notify("Impossibile eliminare: " .. path, vim.log.levels.ERROR)
            end
        end

        telescope.setup({
            defaults = {
                mappings = {
                    n = {
                        ["dd"] = delete_file,
                    },
                },
                path_display = { "smart" },
            },
        })

        -- Se la build di fzf-native è fallita, non far esplodere tutta la config
        local ok, err = pcall(telescope.load_extension, 'fzf')
        if not ok then
            vim.notify("telescope-fzf-native non caricata: " .. tostring(err), vim.log.levels.WARN)
        end
    end,
}
