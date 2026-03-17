-- Indentation
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.autoindent = true
vim.opt.smartindent = true

-- Formatting
vim.opt.wrap = true
vim.opt.linebreak = true
vim.opt.list = false

-- Numbering and cursor line
vim.opt.number = true
vim.opt.cursorline = true

-- Window splitting
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Latex setup
vim.g.vimtex_compiler_method = 'latexmk'
vim.g.vimtex_quickfix_mode = 0
vim.g.vimtex_syntax_enabled = 1
vim.g.vimtex_syntax_conceal_disable = 0


if not vim.g.vscode then

  -- Transparent statusline
  vim.api.nvim_set_hl(0, "StatusLine", { bg = "NONE" })
  vim.api.nvim_set_hl(0, "StatusLineNC", { bg = "NONE" })

  -- Disable mode display since we use lualine
  vim.opt.showmode = false
  vim.opt.cmdheight = 0

  -- Error lens
  vim.diagnostic.config({
    virtual_text = {
      spacing = 2,
      prefix = '',
    },
    severity_sort = true,
    float = {
      source = true,
      border = {
        { "┌", "FloatBorder" },
        { "─", "FloatBorder" },
        { "┐", "FloatBorder" },
        { "│", "FloatBorder" },
        { "┘", "FloatBorder" },
        { "─", "FloatBorder" },
        { "└", "FloatBorder" },
        { "│", "FloatBorder" },
      },
    },
    signs = {},
    update_in_insert = false,
  })

  -- Diagnostic signs
  local severity = vim.diagnostic.severity
  vim.diagnostic.config({
    signs = {
      text = {
        [severity.ERROR] = " ",
        [severity.WARN]  = " ",
        [severity.INFO]  = " ",
        [severity.HINT]  = " ",
      },
    }
  })

  -- Highlight groups
  local color = "#c0caf5"
  vim.api.nvim_set_hl(0, "SnacksPickerInputBorder", { fg = color })

end
