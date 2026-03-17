return{
	"nvim-lualine/lualine.nvim",
	cond = not vim.g.vscode,
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("lualine").setup {
			options = {
				section_separators = { left = "", right = "" },
				component_separators = " ",
				globalstatus = true,
			},
			extensions ={}
		}
	end,
}
