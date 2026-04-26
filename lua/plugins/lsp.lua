return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        dependencies = {
            "williamboman/mason.nvim",
            "neovim/nvim-lspconfig",
        },
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "lua_ls",
                    "rust_analyzer",
                    "clangd",
                    "ts_ls",
                    "pyright",
                },
                handlers = {
                    function(server_name)
                        require("lspconfig")[server_name].setup({
                            capabilities = require("blink.cmp").get_lsp_capabilities(),
                        })
                    end,
                    ["lua_ls"] = function()
                        require("lspconfig").lua_ls.setup({
                            capabilities = require("blink.cmp").get_lsp_capabilities(),
                            settings = {
                                Lua = {
                                    diagnostics = { globals = { "vim" } },
                                },
                            },
                        })
                    end,
                },
            })
        end,
    },
}
