vim.opt.guicursor = ""

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 16
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50
vim.opt.colorcolumn = ""

vim.opt.mouse = "nvi"

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

-- for always copy to clipboard
vim.o.clipboard = "unnamedplus"

-- Auto-wrap
vim.api.nvim_create_autocmd("FileType", {
    pattern = "markdown",
    callback = function()
        -- vim.opt_local.textwidth = 80             -- HARD WRAP    Imposta il limite a 80 caratteri
        -- vim.opt_local.formatoptions:append("t")  -- HARD WRAP    Attiva l'auto-wrap durante la digitazione
        vim.opt_local.wrap = true                   -- SOFT WRAP    Attiva il wrap visivo
        vim.opt_local.linebreak = true              -- SOFT WRAP    Spezza la riga agli spazi, non a metà parola
        vim.opt_local.breakindent = true            --              Mantiene l'indentazione'
        vim.opt_local.textwidth = 0                 -- SOFT WRAP    Disattiva l'hard wrap (limite fisico)

        -- Opzionale: muoviti tra le righe visive con j e k
        vim.keymap.set('n', 'j', 'gj', { buffer = true })
        vim.keymap.set('n', 'k', 'gk', { buffer = true })

        vim.treesitter.start()
    end,
})

---------------
----KEYMAPS----
---------------

-- vim.keymap.set("n", "to", nvim-tree-api.tree.open())
