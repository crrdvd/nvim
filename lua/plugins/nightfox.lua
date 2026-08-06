return {
    "EdenEast/nightfox.nvim",
    enabled = true,
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      require("nightfox").setup({
        options = {
          transparent = false,
          styles = {
            comments = "italic",
            keywords = "bold",
            types = "italic,bold",
          }
        },
        palettes = {
          carbonfox = {
            bg1 = "#232627",
          },
        },
      })
      vim.cmd([[colorscheme dayfox]])
    end,
}
