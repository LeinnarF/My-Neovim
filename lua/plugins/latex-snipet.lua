return{
	"SirVer/ultisnips",
	cond = not vim.g.vscode,
	init = function()
		vim.g.UltiSnipsExpandTrigger = "<Tab>"
		vim.g.UltiSnipsJumpForwardTrigger = "<Tab>"
		vim.g.UltiSnipsJumpBackwardTrigger = "<S-Tab>"
		vim.g.UltiSnipsSnippetDirectories = { "UltiSnips", "my-snippets" }
	end,
}
