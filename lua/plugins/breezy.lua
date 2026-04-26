 return {
    "fneu/breezy",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
    -- load the colorscheme here
    vim.cmd([[set background=light]])
    vim.cmd([[set termguicolors]]) -- if you want to run vim in a terminal
    vim.cmd([[colorscheme breezy]])
    end,
}
