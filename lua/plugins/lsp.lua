return {
    {
        "mason-org/mason.nvim",
        cmd = { "Mason", "MasonInstall", "MasonUpdate", "MasonLog" },
        config = function()
            require("mason").setup()
        end,
    },
    {
        "mason-org/mason-lspconfig.nvim",
        event = { "BufReadPre", "BufNewFile" },
        dependencies = {
            "mason-org/mason.nvim",
            "neovim/nvim-lspconfig",
            -- get_lsp_capabilities() viene chiamata qui sotto: dipendenza esplicita,
            -- altrimenti funziona solo finché blink.cmp si carica per conto suo.
            "saghen/blink.cmp",
        },
        config = function()
            -- Capabilities di default per tutti i server (blink.cmp)
            vim.lsp.config("*", {
                capabilities = require("blink.cmp").get_lsp_capabilities(),
            })

            -- Override per singolo server
            vim.lsp.config("lua_ls", {
                settings = {
                    Lua = {
                        diagnostics = { globals = { "vim" } },
                    },
                },
            })

            require("mason-lspconfig").setup({
                ensure_installed = {
                    "lua_ls",
                    "rust_analyzer",
                    "clangd",
                    "ts_ls",
                    "pyright",
                    "tinymist",
                },
                -- automatic_enable = true (default): i server installati vengono
                -- abilitati automaticamente tramite vim.lsp.enable()
            })
        end,
    },
}
