-- settings per prime: le opzioni globali (netrw, termguicolors, fold, ...)
-- devono essere impostate prima che lazy.nvim carichi i plugin.
require("settings")
require("config.lazy")
require("keymaps") -- dopo lazy: mapleader è definito in config/lazy.lua
