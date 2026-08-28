return {
  "akinsho/toggleterm.nvim",
  version = "*",
  keys = {
    -- Terminale float predefinito
    { "<C-\\>", "<cmd>ToggleTerm<cr>", desc = "Toggle terminal", mode = { "n", "t" } },

    -- Secondo terminale float generico (#2)
    {
      "<leader>t2",
      function()
        local Terminal = require("toggleterm.terminal").Terminal
        local term2 = Terminal:new({ id = 2, direction = "float" })
        term2:toggle()
      end,
      desc = "Toggle Terminal #2",
      mode = { "n", "t" },
    },

    -- Esempio: terminale float dedicato per Lazygit
    {
      "<leader>lg",
      function()
        local Terminal = require("toggleterm.terminal").Terminal
        local lazygit = Terminal:new({ cmd = "lazygit", hidden = true, direction = "float" })
        lazygit:toggle()
      end,
      desc = "Toggle Lazygit",
      mode = { "n" },
    },
  },
  opts = {
    direction = "float",
    float_opts = {
      border = "curved",
    },
  },
}
