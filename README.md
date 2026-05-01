# Neovim Configuration

Configurazione Neovim moderna basata su **Lazy.nvim** con supporto LSP, autocompletamento, integrazione Git e AI.

**Leader key**: `Space`  
**Local leader**: `\`

---

## Plugin Installati

### Editor & IDE

| Plugin | Descrizione |
|--------|-------------|
| **nvim-treesitter** | Syntax highlighting avanzato e parsing per Lua, Rust, C, JS/TS, Python |
| **blink.cmp** | Autocompletamento con sorgenti LSP, path, snippet e buffer |
| **nvim-tree.lua** | File explorer sidebar con icone |
| **toggleterm.nvim** | Terminale floating all'interno di Neovim |

### LSP & Language Servers

| Plugin | Descrizione |
|--------|-------------|
| **mason.nvim** | Package manager per language servers e tools |
| **mason-lspconfig.nvim** | Integrazione Mason + nvim-lspconfig |

Language servers installati automaticamente: `lua_ls`, `rust_analyzer`, `clangd`, `ts_ls`, `pyright`

### Version Control

| Plugin | Descrizione |
|--------|-------------|
| **neogit** | Client Git interattivo con UI stile Magit |
| **diffview.nvim** | Visualizzazione diff avanzata |

### Note-taking & Markdown

| Plugin | Descrizione |
|--------|-------------|
| **obsidian.nvim** | Integrazione con vault Obsidian in `~/notes/vault` |
| **render-markdown.nvim** | Rendering markdown formattato nel buffer |

### AI Assistant

| Plugin | Descrizione |
|--------|-------------|
| **claudecode.nvim** | Integrazione Claude Code (Anthropic) in Neovim |

### Tema

| Plugin | Descrizione |
|--------|-------------|
| **nightfox.nvim** | Colorscheme attivo (variante carbonfox) |
| **tokyonight.nvim** | Colorscheme alternativo (disabilitato) |

### Dipendenze

`lazy.nvim` · `plenary.nvim` · `snacks.nvim` · `telescope.nvim` · `nvim-web-devicons` · `friendly-snippets`

---

## Shortcut

### Navigazione Finestre

| Tasto | Azione |
|-------|--------|
| `Ctrl+h` | Finestra a sinistra |
| `Ctrl+j` | Finestra in basso |
| `Ctrl+k` | Finestra in alto |
| `Ctrl+l` | Finestra a destra |

Funzionano anche dalla modalità terminale.

### Buffer

| Tasto | Azione |
|-------|--------|
| `Shift+l` | Buffer successivo |
| `Shift+h` | Buffer precedente |
| `Space bd` | Chiudi buffer |

### File Explorer (nvim-tree)

| Tasto | Azione |
|-------|--------|
| `Space e` | Apri/chiudi file explorer |

### Fuzzy Finder (Telescope)

| Tasto | Azione |
|-------|--------|
| `Space ff` | Cerca file |
| `Space fg` | Cerca testo nel progetto (live grep) |
| `Space fb` | Cerca nei buffer aperti |
| `Space fr` | File recenti |

### LSP

Attivi quando un language server e' collegato al buffer.

| Tasto | Modalita' | Azione |
|-------|-----------|--------|
| `gd` | Normal | Vai alla definizione |
| `gr` | Normal | Trova riferimenti |
| `gi` | Normal | Vai all'implementazione |
| `K` | Normal | Documentazione hover |
| `Space rn` | Normal | Rinomina simbolo |
| `Space ca` | Normal | Code action |
| `Space d` | Normal | Mostra diagnostica |
| `[d` | Normal | Diagnostica precedente |
| `]d` | Normal | Diagnostica successiva |

### Autocompletamento (blink.cmp)

| Tasto | Azione |
|-------|--------|
| `Ctrl+Space` | Apri menu completamento |
| `Ctrl+n` | Elemento successivo |
| `Ctrl+p` | Elemento precedente |
| `Ctrl+y` | Accetta completamento |

### Terminale (toggleterm)

| Tasto | Modalita' | Azione |
|-------|-----------|--------|
| `Ctrl+\` | Normal / Terminal | Apri/chiudi terminale floating |

### Git (neogit)

| Tasto | Azione |
|-------|--------|
| `Space gg` | Apri interfaccia Git (Neogit) |

### Claude Code (AI)

| Tasto | Modalita' | Azione |
|-------|-----------|--------|
| `Space ac` | Normal | Apri/chiudi Claude Code |
| `Space af` | Normal | Porta il focus su Claude |
| `Space ar` | Normal | Riprendi sessione Claude |
| `Space aC` | Normal | Continua sessione Claude |
| `Space am` | Normal | Seleziona modello Claude |
| `Space ab` | Normal | Aggiungi buffer corrente al contesto |
| `Space as` | Visual | Invia selezione a Claude |
| `Space as` | Normal (file explorer) | Aggiungi file al contesto Claude |
| `Space aa` | Normal | Accetta diff proposto da Claude |
| `Space ad` | Normal | Rifiuta diff proposto da Claude |

---

## Impostazioni Generali

- **Indentazione**: 2 spazi
- **Clipboard**: sincronizzata con il sistema (`unnamedplus`)
- **Numeri di riga**: relativi
- **Undo persistente**: abilitato (`~/.vim/undodir`)
- **Swap/Backup**: disabilitati
- **Colonna guida**: 80 caratteri
- **Mouse**: abilitato in normal, visual e insert
