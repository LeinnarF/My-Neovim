return {
	"folke/flash.nvim",
	event = "VeryLazy",
	keys = {
		{
			"<leader>s",
			mode = { "n", "x", "o" },
			function() require("flash").jump() end,
			desc = "Flash",
		},
	},
	opts = {
		highlight = {
			groups = {
				label = "FlashLabel",
				secondary = "FlashSecondary",
				backdrop = "FlashBackdrop",
				match = "FlashMatch",
				current = "FlashCurrent",
			},
		},
		modes = {
			char = {
				enabled = false,
				jump_labels = true,
			},
		},
		jump = {
			multi_window = true,
		},
	},
}
