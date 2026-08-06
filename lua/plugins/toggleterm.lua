return {
    "akinsho/toggleterm.nvim",
    version = "*",
    -- Il mapping è definito qui (per il lazy-load); non usare anche `open_mapping`
    -- nelle opts, altrimenti la stessa combinazione viene registrata due volte.
    keys = {
        { "<C-\\>", "<cmd>ToggleTerm<cr>", desc = "Toggle terminal", mode = { "n", "t" } },
    },
    opts = {
        direction = "float",
        float_opts = {
            border = "curved",
        },
    },
}
