require("config.lazy")
require("settings")
require("keymaps")

vim.api.nvim_create_autocmd("VimEnter", {
  once = true,
  callback = function()
    if vim.fn.argc() == 0 then
      vim.cmd("vsplit")              -- split verticale
      vim.cmd("wincmd l")           -- vai alla finestra destra
      vim.cmd("split")              -- split orizzontale: cursore in alto a destra
      vim.cmd("terminal claude")    -- apri Claude in alto a destra
      vim.cmd("wincmd j")           -- vai in basso a destra
      vim.cmd("terminal")           -- apri terminale in basso a destra
      vim.cmd("wincmd h")           -- torna alla finestra sinistra
    end
  end,
})
