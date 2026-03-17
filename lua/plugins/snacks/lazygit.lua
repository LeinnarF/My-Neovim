local M = {}

M.opts = {
  lazygit = {
    theme_path = vim.fs.normalize(vim.fn.stdpath("cache") .. "/lazygit-theme.json"),
    theme = {
      [241] = { fg = "Special" },
      activeBorderColor = { fg = "MatchParen", bold = true },
      inactiveBorderColor = { fg = "FloatBorder" },
      optionsTextColor = { fg = "Function" },
      selectedLineBgColor = { fg = "Visual" },
      cherryPickedCommitBgColor = { fg = "Identifier" },
      cherryPickedCommitFgColor = { fg = "Function" },
      unstagedChangesColor = { fg = "DiagnosticError" },
      defaultFgColor = { fg = "Normal" },
      searchingActiveBorderColor = { fg = "MatchParen", bold = true },
    },
    win = { style = "lazygit" },
  },
}

M.keys = {
  { "<leader>gg", function() Snacks.lazygit() end,          desc = "LazyGit" },
  { "<leader>gf", function() Snacks.lazygit.log_file() end, desc = "LazyGit file log" },
  { "<leader>gl", function() Snacks.lazygit.log() end,      desc = "LazyGit log" },
}

return M
