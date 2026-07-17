return {
  "luukvbaal/statuscol.nvim",
  config = function()
    local builtin = require("statuscol.builtin")
    require("statuscol").setup({
      relculright = true,
      segments = {
        -- Fold column: mostra i chevron (/) solo dove inizia un fold,
        -- cliccabile per aprire/chiudere
        { text = { builtin.foldfunc }, click = "v:lua.ScFa" },
        -- Sign column (gitsigns, diagnostiche, ecc.)
        { text = { "%s" }, click = "v:lua.ScSa" },
        -- Numeri di riga
        { text = { builtin.lnumfunc, " " }, click = "v:lua.ScLa" },
      },
    })
  end,
}
