return {
	"nvim-treesitter/nvim-treesitter",
	branch = "main",
	build = ":TSUpdate",
	init = function()
		vim.opt.runtimepath:append(vim.fn.stdpath("data") .. "/site")
	end,
	config = function()
		require("nvim-treesitter").setup({
			ensure_installed = {
				"lua",
				"c",
				"vim",
				"python",
			},
			auto_install = true,
			highlight = { enable = true, disable = { "latex" } },
			indent = { enable = true },
		})
	end,
}
