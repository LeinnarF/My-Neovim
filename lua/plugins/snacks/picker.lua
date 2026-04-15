local M = {}


M.opts = {
  picker = {
    layout = {
      preset = "telescope",
      cycle = false,
      layout = {
        width = 75,
        height = 0.37,
        box = "vertical",
        -- border = "single",
        {
          box = "vertical",
          -- width = 0.5,
          {
            win = "input",
            height = 1,
            border = "single",
            title = " {source} {live} ",
            title_pos = "center",
          },
          {
            win = "list",
						border = "single",
          },
        },
        -- {
        --   win = "preview",
        --   -- width = 0.5,
        --   border = "single",
        --   title = " {preview} ",
        --   title_pos = "center",
        -- },
      },
    },
    sources = {
      -- files = { hidden = true, ignored = true },
      grep  = { hidden = true, ignored = true },
    },
    icons = {
      ui = { selected = " " },
    },
  },
}

M.keys = {
  { "<leader>fF", function() Snacks.picker.files({
		hidden = true, ignored = true,
	}) end,                   desc = "Find files (hidden)" },

	{ "<leader>ff", function() Snacks.picker.files() end,                   desc = "Find Files" },
  { "<C-f>",      function() Snacks.picker.files({ cwd = vim.env.HOME }) end,                   desc = "Find all files" },
  { "<leader>fg", function() Snacks.picker.grep() end,                    desc = "Live grep" },
  { "<leader>fb", function() Snacks.picker.buffers() end,                 desc = "Find buffers" },
  { "<leader>fc", function() Snacks.picker.commands() end,                desc = "Commands" },
  { "<leader>fC", function() Snacks.picker.command_history() end,         desc = "Command history" },
  { "<leader>fh", function() Snacks.picker.help() end,                    desc = "Help pages" },
  { "<leader>fk", function() Snacks.picker.keymaps() end,                 desc = "Keymaps" },
  { "<leader>fr", function() Snacks.picker.recent() end,                  desc = "Recent files" },
  { "<leader>fd", function() Snacks.picker.diagnostics() end,             desc = "Diagnostics" },
  { "<leader>fs", function() Snacks.picker.lsp_symbols() end,             desc = "LSP symbols" },
  { "gd",         function() Snacks.picker.lsp_definitions() end,         desc = "Go to definition" },
  { "gr",         function() Snacks.picker.lsp_references() end,          desc = "List references" },
}

return M
