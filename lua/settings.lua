vim.opt.guicursor = ""

-- Fold gestiti da nvim-ufo (provider treesitter/indent) + statuscol.nvim
vim.opt.foldcolumn = "1"      -- Mostra una colonna a sinistra per indicare i fold
vim.opt.foldlevel = 99        -- Inizia con tutti i blocchi aperti
vim.opt.foldlevelstart = 99
vim.opt.foldenable = true

vim.opt.fillchars = {
  eob = " ",       -- Rimuove le ~ a fine buffer
  fold = " ",      -- Rimuove i puntini di sospensione sulla riga foldata
  foldopen = "",  -- Icona per fold aperto
  foldsep = " ",   -- Rimuove la linea verticale di separazione
  foldclose = "", -- Icona per fold chiuso
}

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.swapfile = false
vim.opt.backup = false
-- stdpath("state") non dipende da $HOME e viene creata da Neovim se manca
vim.opt.undodir = vim.fn.stdpath("state") .. "/undo"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

-- colori a 24 bit
vim.opt.termguicolors = true

vim.opt.scrolloff = 16
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50
vim.opt.colorcolumn = ""

vim.opt.mouse = "nvi"

-- disable netrw (richiesto da nvim-tree, va fatto prima che i plugin si carichino)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

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
        vim.opt_local.breakindent = true            --              Mantiene l'indentazione
        vim.opt_local.textwidth = 0                 -- SOFT WRAP    Disattiva l'hard wrap (limite fisico)

        -- Opzionale: muoviti tra le righe visive con j e k
        vim.keymap.set('n', 'j', 'gj', { buffer = true })
        vim.keymap.set('n', 'k', 'gk', { buffer = true })
        -- Nota: l'highlight treesitter lo attiva nvim-treesitter (highlight.enable),
        -- non serve più chiamare vim.treesitter.start() a mano qui.
    end,
})
