return {
    'nvim-telescope/telescope.nvim', version = '*',
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
            local confirm = vim.fn.input("Delete " .. selection.path .. "? [y/n]: ")
            if confirm == "y" then
                actions.close(prompt_bufnr)
                vim.fn.delete(selection.path)
                print("Deleted: " .. selection.path)
            end
        end

        telescope.setup({
            defaults = {
                mappings = {
                    n = {
                        ["dd"] = delete_file,
                    },
                },
            },
        })

        telescope.load_extension('fzf')
    end,
}
