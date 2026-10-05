return {
  "nvimdev/dashboard-nvim",
  -- VimEnter e non lazy=false: la dashboard si disegna solo dopo l'avvio e
  -- dashboard-nvim si occupa da solo di non comparire quando nvim viene
  -- lanciato con dei file come argomento.
  event = "VimEnter",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {
    theme = "hyper",
    shortcut_type = "letter",
    -- Aprendo un file recente, sposta la cwd sulla radice del repo git:
    -- così Telescope e live_grep lavorano sull'intero progetto.
    change_to_vcs_root = true,
    config = {
      header = {
        -- Custom ASCII header
      },
      -- Header ASCII con il giorno della settimana + riga con data e ora.
      week_header = { enable = true },
      -- Le shortcut sono mappate solo nel buffer della dashboard (nowait),
      -- quindi non interferiscono con i mapping globali di keymaps.lua.
      shortcut = {
        { desc = " Find file", group = "DashboardShortCut", action = "Telescope find_files", key = "f" },
        { desc = " Live grep", group = "DashboardShortCut", action = "Telescope live_grep", key = "g" },
        { desc = " Recent files", group = "DashboardShortCut", action = "Telescope oldfiles", key = "r" },
        { desc = " New file", group = "DashboardShortCut", action = "enew", key = "n" },
        { desc = " Config", group = "DashboardShortCut", action = "Telescope find_files cwd=" .. vim.fn.stdpath("config"), key = "c" },
        { desc = " Lazy", group = "DashboardShortCut", action = "Lazy", key = "l" },
        { desc = " Quit", group = "DashboardShortCut", action = "qa", key = "q" },
      },
      -- Attenzione: togliere un blocco non lo disattiva. hyper.lua fa
      -- `config.project = vim.tbl_extend('force', { enable = true, ... }, config.project or {})`
      -- (e `config.packages or { enable = true }`), quindi i default rientrano
      -- dalla finestra: per nasconderli serve enable = false esplicito.
      packages = { enable = true },
      project = { enable = false },
      mru = {
        enable = true,
        limit = 10,
        icon = " ",
        label = " File recenti:",
        cwd_only = true,
      },
      footer = {},
    },
  },
}
