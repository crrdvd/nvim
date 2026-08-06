return {
    'MeanderingProgrammer/render-markdown.nvim',
    -- nvim-web-devicons è già in uso da lualine e nvim-tree: riusarlo evita di
    -- tirare dentro l'intera suite mini.nvim solo per le icone.
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' },
    ft = { 'markdown' },
    ---@module 'render-markdown'
    ---@type render.md.UserConfig
    opts = {},
}
