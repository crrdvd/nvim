return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    main = "nvim-treesitter",
    opts = {
        ensure_installed = {
            "lua", "rust", "c", "javascript", "typescript", "python",
            "vim", "vimdoc", "query",
        },
        highlight = { enable = true },
        indent = { enable = true },
    },
}
