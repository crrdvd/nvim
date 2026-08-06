return {
  "nvim-lualine/lualine.nvim",
  -- git-blame è una dipendenza reale: il componente lualine_x usa le sue funzioni.
  -- Dichiararla qui garantisce che sia caricata e configurata prima di questo config.
  dependencies = { "nvim-tree/nvim-web-devicons", "f-person/git-blame.nvim" },
  config = function()
    -- Il require sta qui, non a livello di file: al top-level girerebbe durante il
    -- parsing degli spec di lazy.nvim, forzando il caricamento di git-blame a startup.
    local git_blame = require("gitblame")

    require("lualine").setup({
      options = {
        theme = "auto",
        globalstatus = true,
        component_separators = { left = "", right = "" },
        section_separators = { left = "", right = "" },
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
