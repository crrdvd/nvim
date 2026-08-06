return {
    "f-person/git-blame.nvim",
    -- Non serve un trigger di lazy-load: lualine lo dichiara come dipendenza,
    -- quindi viene caricato prima della sua config (vedi lualine.lua).
    opts = {
        enabled = true,
        -- Il blame è mostrato nella statusline (lualine_x), non come virtual text.
        display_virtual_text = 0,
        -- Usato da gitblame.get_current_blame_text() per il componente lualine.
        message_template = " <date> • <author> ",
        date_format = "%d-%m-%Y",
    },
}
