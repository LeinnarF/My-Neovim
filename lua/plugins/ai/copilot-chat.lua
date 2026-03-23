local M = {

	"CopilotC-Nvim/CopilotChat.nvim",
	dependencies = {
		{ "nvim-lua/plenary.nvim", branch = "master" },
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
		{ "<leader>zc", ":CopilotChat<CR>", mode = "n", desc = "Copilot Chat", silent = true },
		{ "<leader>ze", ":CopilotChatExplain<CR>", mode = "v", desc = "Explain Code", silent = true },
		{ "<leader>zr", ":CopilotChatReview<CR>", mode = "v", desc = "Review Code", silent = true },
		{ "<leader>zf", ":CopilotChatFix<CR>", mode = "v", desc = "Fix Code", silent = true },
		{ "<leader>zo", ":CopilotChatOptimize<CR>", mode = "v", desc = "Optimize Code", silent = true },
		{ "<leader>zd", ":CopilotChatDocs<CR>", mode = "v", desc = "Add Documentation", silent = true },
		{ "<leader>zt", ":CopilotChatTests<CR>", mode = "v", desc = "Generate Tests", silent = true },
		{ "<leader>zm", ":CopilotChatModels<CR>", mode = "n", desc = "Check Models", silent = true },
	}
}

if vim.g.vscode then
	return {}
end

return M
