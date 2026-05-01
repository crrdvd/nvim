return {
    "akinsho/toggleterm.nvim",
    version = "*",
    keys = {
        { "<C-\\>", "<cmd>ToggleTerm<cr>", desc = "Toggle terminal", mode = { "n", "t" } },
    },
    opts = {
        open_mapping = [[<C-\>]],
        direction = "float",
        float_opts = {
            border = "curved",
        },
    },
}
