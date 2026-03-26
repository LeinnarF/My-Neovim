local M = {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  event = "InsertEnter",
  config = function()
    require("copilot").setup({
      suggestion = {
        enabled = true,
				--     auto_trigger = true,
				-- keymap = {
				--       accept = "<Tab>",
				--       accept_word = "<A-l>",
				--       accept_line = false,
				--       next = "<M-]>",
				--       prev = "<M-[>",
				--       dismiss = "<C-]>",
        -- },
      },
			server = { type = "binary" },
      panel = { enabled = false },
      filetypes = { ["*"] = true },
    })
  end,
}

if vim.g.vscode then
	return {}
end

return M
