M = {
	{ "github/copilot.vim" },
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
      { "nvim-lua/plenary.nvim", branch = "master" },
			{ "github/copilot.vim" }
    },
    build = "make tiktoken",
    opts = {},
		keys = {
			{ "<leader>zc", ":CopilotChat<CR>", mode = "n", desc = "Copilot Chat" },
			{ "<leader>ze", ":CopilotChatExplain<CR>", mode = "v", desc = "Explain Code" },
			{ "<leader>zr", ":CopilotChatReview<CR>", mode = "v", desc = "Review Code" },
			{ "<leader>zf", ":CopilotChatFix<CR>", mode = "v", desc = "Fix Code" },
			{ "<leader>zo", ":CopilotChatOptimize<CR>", mode = "v", desc = "Optimize Code" },
			{ "<leader>zd", ":CopilotChatDocs<CR>", mode = "v", desc = "Add Documentation" },
			{ "<leader>zt", ":CopilotChatTests<CR>", mode = "v", desc = "Generate Tests" },
			{ "<leader>zm", ":CopilotChatCommit<CR>", mode = "n", desc = "Generate Commit Message" },
			{ "<leader>zs", ":CopilotChatCommit<CR>", mode = "v", desc = "Generate Commit Message" },
		}
  },
}

if not vim.g.vscode then
	return M
else
	return {}
end
