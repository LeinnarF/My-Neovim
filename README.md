# 🌙 Neovim Configuration

A modern, fast, and feature-rich Neovim configuration built with Lua, focused on performance, aesthetics, and a seamless development experience for Python, Web, and LaTeX.

> "I use neovim, btw"

## ✨ Features

- **🚀 Performance:** Built with [lazy.nvim](https://github.com/folke/lazy.nvim) for fast startup and lazy-loading.
- **🎨 Aesthetics:** [tokyonight.nvim](https://github.com/folke/tokyonight) (Night style) with transparency and custom border colors.
- **🛠️ LSP & Completion:** 
  - [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) with [Mason](https://github.com/williamboman/mason.nvim) for automatic server management.
  - [blink.cmp](https://github.com/Saghen/blink.cmp) for ultra-fast completion.
- **🔍 Search & Navigation:**
  - [Snacks.nvim](https://github.com/folke/snacks.nvim) (Picker) for finding files, grep, and LSP symbols.
  - [Neo-tree](https://github.com/nvim-neo-tree/neo-tree.nvim) for file exploration.
  - [Flash.nvim](https://github.com/folke/flash.nvim) for lightning-fast motion.
- **📊 Interactive Computing:** [Molten.nvim](https://github.com/benlubas/molten-nvim) with [image.nvim](https://github.com/3rd/image.nvim) (Kitty backend) for Jupyter-like interactive Python notebooks.
- **📝 LaTeX Support:** Robust setup with [VimTeX](https://github.com/lervag/vimtex), [UltiSnips](https://github.com/SirVer/ultisnips), and [ltex-ls].
- **💎 UI/UX:**
  - [Noice.nvim](https://github.com/folke/noice.nvim) for a clean, centered command-line and notification system.
  - [Lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) for a sleek statusline.
  - [Indent-blankline](https://github.com/lukas-reineke/indent-blankline.nvim) for indentation guides.
- **🤖 AI Integration:** [GitHub Copilot](https://github.com/zbirenbaum/copilot.lua) integration.
- **💻 VS Code Compatibility:** Optimized to work as a backend for the [VSCode Neovim](https://marketplace.visualstudio.com/items?itemName=asvetliakov.vscode-neovim) extension.

## 📁 Structure

```
.config/nvim/
├── init.lua           # Entry point
├── lua/
│   ├── options.lua    # Core Neovim settings
│   ├── keymap.lua     # General keybindings
│   └── plugins/       # Plugin configurations
│       ├── snacks/    # Snacks.nvim sub-configs
│       └── ...        # Individual plugin files
└── UltiSnips/         # Custom snippets (Markdown, TeX)
```

## ⌨️ Keybindings

The leader key is set to `Space`.

| Key | Description |
|-----|-------------|
| `<leader>e` | Toggle Neo-tree |
| `<leader>ff` | Find files (Snacks) |
| `<leader>fg` | Live grep (Snacks) |
| `<leader>fb` | Find buffers (Snacks) |
| `jk` | Exit Insert Mode |
| `<C-s>` | Save file |
| `gd` | Go to definition |
| `gr` | List references |
| `<leader>ca`| Code action |
| `<A-j/k>` | Move line down/up |

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
- **UI Plugins:** Heavy UI plugins like `Noice`, `Lualine`, and `Neo-tree` are automatically disabled.
- **Keybindings:** Essential Neovim keybindings (like `jk` to exit Insert Mode, `H/L` for line ends, and move lines with `Alt+j/k`) are preserved, while LSP and window management are deferred to VS Code.
- **Performance:** Only essential core logic and compatible plugins are loaded for a snappy experience.

To use:
1. Install the **VSCode Neovim** extension in VS Code.
2. In VS Code settings, set `neovim.neovimExecutablePaths.linux` (or your OS equivalent) to your Neovim path.
3. The extension will automatically use your `init.lua` and adapt accordingly.

## 🛠️ Requirements

- **Neovim** >= 0.10.0
- **Nerd Fonts** (e.g., JetBrainsMono)
- **Kitty** (Optional, for Molten image support)
- **External Dependencies:**
  - `git`, `curl`, `ripgrep`, `fd`
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
