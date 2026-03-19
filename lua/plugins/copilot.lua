local M = {
	{
		"github/copilot.vim"
	},
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
      { "nvim-lua/plenary.nvim", branch = "master" },
			{ "github/copilot.vim" }
    },
		build = "make tiktoken",
		opts = {
			model = "gpt-5.3-codex",
			mappings = {
				reset = {
					normal = false,
					insert = false,
					visual = false,
					command = false,
				}
			},
		},
		keys = {
			{ "<leader>zc", ":CopilotChat<CR>", mode = "n", desc = "Copilot Chat" },
			{ "<leader>ze", ":CopilotChatExplain<CR>", mode = "v", desc = "Explain Code" },
			{ "<leader>zr", ":CopilotChatReview<CR>", mode = "v", desc = "Review Code" },
			{ "<leader>zf", ":CopilotChatFix<CR>", mode = "v", desc = "Fix Code" },
			{ "<leader>zo", ":CopilotChatOptimize<CR>", mode = "v", desc = "Optimize Code" },
			{ "<leader>zd", ":CopilotChatDocs<CR>", mode = "v", desc = "Add Documentation" },
			{ "<leader>zt", ":CopilotChatTests<CR>", mode = "v", desc = "Generate Tests" },
			{ "<leader>zm", ":CopilotChatModels<CR>", mode = "n", desc = "Check Models" },
		}
  },
}

if vim.g.vscode then
	return {}
end

return M
