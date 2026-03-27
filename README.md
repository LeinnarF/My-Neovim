# 🌙 Neovim Configuration

A modern, fast, and feature-rich Neovim configuration built with Lua, focused on performance, aesthetics, and a seamless development experience for Python, Web, and LaTeX.

> "I use neovim, btw"

## ✨ Features

- **🚀 Performance:** Built with [lazy.nvim](https://github.com/folke/lazy.nvim) for fast startup and lazy-loading.
- **🎨 Aesthetics:** [tokyonight.nvim](https://github.com/folke/tokyonight) (Night style) with transparency and custom border colors.
- **🛠️ LSP & Completion:** 
  - [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) with [Mason](https://github.com/williamboman/mason.nvim) for automatic server management.
  - [blink.cmp](https://github.com/Saghen/blink.cmp) for ultra-fast completion, including Copilot and snippet support.
- **🔍 Search & Navigation:**
  - [Snacks.nvim](https://github.com/folke/snacks.nvim) (Picker) for finding files, grep, and LSP symbols.
  - [Flash.nvim](https://github.com/folke/flash.nvim) for lightning-fast motion (`<leader>s`).
  - [Neo-tree](https://github.com/nvim-neo-tree/neo-tree.nvim) for file exploration.
- **📊 Interactive Computing:** [Molten.nvim](https://github.com/benlubas/molten-nvim) with [image.nvim](https://github.com/3rd/image.nvim) (Kitty backend) for Jupyter-like interactive Python notebooks.
- **📝 LaTeX & Markdown:**
  - Robust LaTeX setup with [VimTeX](https://github.com/lervag/vimtex), [UltiSnips](https://github.com/SirVer/ultisnips), and [ltex-ls].
  - Beautiful Markdown previews with [markview.nvim](https://github.com/OXY2DEV/markview.nvim).
- **🤖 AI Integration:** [GitHub Copilot](https://github.com/zbirenbaum/copilot.lua) and [CopilotChat.nvim](https://github.com/CopilotC-Nvim/CopilotChat.nvim).
- **💎 UI/UX:**
  - [Noice.nvim](https://github.com/folke/noice.nvim) for a clean, centered command-line and notification system.
  - [Lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) for a sleek statusline.
  - [mini.nvim](https://github.com/echasnovski/mini.nvim) modules for indentation, pairs, comments, and more.
  - [Stay-centered.nvim](https://github.com/arnamak/stay-centered.nvim) to keep your cursor in the middle of the screen.
- **🏃 Productivity:**
  - [LazyGit](https://github.com/jesseduffield/lazygit) integration via Snacks.nvim.
  - [Code Runner](https://github.com/CRAG666/code_runner.nvim) for quick code execution (`<C-A-n>`).
  - [TreeSJ](https://github.com/Wansmer/treesj) for toggling code blocks (split/join).

## 📁 Structure

```
.config/nvim/
├── init.lua           # Entry point
├── lua/
│   ├── options.lua    # Core Neovim settings
│   ├── keymap.lua     # General keybindings
│   ├── highlights.lua # Custom highlight groups
│   ├── filetype.lua   # Filetype-specific logic
│   └── plugins/       # Plugin configurations
│       ├── ai/        # AI (Copilot, Chat)
│       ├── snacks/    # Snacks.nvim (Picker, LazyGit)
│       └── ...        # Individual plugin files
└── UltiSnips/         # Custom snippets (Markdown, TeX)
```

## ⌨️ Keybindings

The leader key is set to `Space`.

### General

| Key | Description |
|-----|-------------|
| `<leader>e` | Toggle Neo-tree |
| `jk` | Exit Insert Mode |
| `<C-s>` | Save file |
| `<C-a>` | Select all |
| `<C-c>` | Copy to clipboard |
| `H / L` | Jump to beginning/end of line |
| `<A-j/k>` | Move line down/up |
| `<leader>tt`| Open Terminal |
| `sc` | Toggle stay-centered |

### Navigation (Snacks Picker & Flash)

| Key | Description |
|-----|-------------|
| `<leader>ff` | Find files |
| `<leader>fg` | Live grep |
| `<leader>fb` | Find buffers |
| `<leader>fr` | Recent files |
| `<leader>fs` | LSP symbols |
| `<leader>s`  | Flash jump |
| `gd` | Go to definition |
| `gr` | List references |

### AI (Copilot Chat)

| Key | Description |
|-----|-------------|
| `<leader>zc` | Open Copilot Chat |
| `<leader>ze` | Explain Code (Visual) |
| `<leader>zf` | Fix Code (Visual) |
| `<leader>zo` | Optimize Code (Visual) |

### Git (LazyGit)

| Key | Description |
|-----|-------------|
| `<leader>gg` | Open LazyGit |
| `<leader>gl` | LazyGit Log |

### Molten (Interactive Python)

| Key | Description |
|-----|-------------|
| `<localleader>mi` | Initialize Kernel |
| `<localleader>me` | Evaluate Operator/Selection |
| `<localleader>ml` | Evaluate Line |
| `<localleader>mr` | Re-evaluate Cell |

## 💻 VS Code Setup

This configuration is optimized for use with the [VSCode Neovim](https://marketplace.visualstudio.com/items?itemName=asvetliakov.vscode-neovim) extension. 

When running in VS Code:
- **UI Plugins:** Heavy UI plugins like `Noice`, `Lualine`, `Neo-tree`, and `Snacks Picker` are automatically disabled.
- **Keybindings:** Essential Neovim keybindings (like `jk` to exit Insert Mode, `H/L` for line ends, and move lines with `Alt+j/k`) are preserved.
- **Performance:** Only essential core logic and compatible plugins are loaded for a snappy experience.

## 🛠️ Requirements

- **Neovim** >= 0.10.0
- **Nerd Fonts** (e.g., JetBrainsMono)
- **Kitty** (Optional, for Molten image support)
- **External Dependencies:**
  - `git`, `curl`, `ripgrep`, `fd`, `make`
  - `lazygit`
  - Python (for Molten/Jupytext)
  - Node.js (for some LSP servers)

## 🚀 Installation

1. Backup your current configuration:
   ```bash
   mv ~/.config/nvim ~/.config/nvim.bak
   ```
2. Clone this repository:
   ```bash
   git clone <your-repo-url> ~/.config/nvim
   ```
3. Open Neovim:
   ```bash
   nvim
   ```
   `lazy.nvim` will automatically install the plugins. Use `:Mason` to manage LSP servers.
