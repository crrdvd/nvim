return {
    "nvim-treesitter/nvim-treesitter",
    -- Il branch `main` è un rewrite incompatibile che richiede Neovim >= 0.12.
    -- Su 0.11 va usato `master`, che upstream mantiene apposta per retrocompatibilità.
    branch = "master",
    build = ":TSUpdate",
    -- Su master la setup() sta in nvim-treesitter.configs, non in nvim-treesitter.
    main = "nvim-treesitter.configs",
    opts = {
        ensure_installed = {
            "lua", "rust", "c", "javascript", "typescript", "tsx", "python",
            "vim", "vimdoc", "query",
            -- richiesti da render-markdown.nvim
            "markdown", "markdown_inline",
        },
        auto_install = true,
        highlight = { enable = true },
        indent = { enable = true },
    },
}
