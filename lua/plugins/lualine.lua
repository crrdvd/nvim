vim.g.gitblame_display_virtual_text = 0 -- Disable virtual text
local git_blame = require('gitblame')

return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("lualine").setup({
      options = {
        theme = "auto",
        globalstatus = true,
        component_separators = { left = "", right = "" },
        section_separators = { left = "", right = "" },
      },
      sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch", "diff", "diagnostics" },
        lualine_c = {
          {
            "filename",
            path = 1
          }
        },
        lualine_x = {
          {
            git_blame.get_current_blame_text,
            cond = git_blame.is_blame_text_available
          },
          "filetype"
        },
        lualine_y = { "progress" },
        lualine_z = { "location" },
      },
    })
  end,
}
