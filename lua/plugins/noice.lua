return {
	"folke/noice.nvim",
	cond = not vim.g.vscode,
	event = "VeryLazy",
	dependencies = {
		"MunifTanjim/nui.nvim",
		"rcarriga/nvim-notify",
	},
	opts = {
		lsp = {
			override = {
				["vim.lsp.util.convert_input_to_markdown_lines"] = true,
				["vim.lsp.util.stylize_markdown"] = true,
				["cmp.entry.get_documentation"] = true,
			},
		},
		cmdline = {
			view = "cmdline_popup",
			format = {
				cmdline = { icon = "❯", title = " Command " },
			},
		},
		messages = {
			enabled = true,
		},
		notify = {
			enabled = true,
		},
		hover = {
			enabled = false,
			opts = {},
			view = nil,
		},
		views = {
			hover = {
				border = "single",
				scrollbar = false,
				relative = "cursor",
				position = {
					row = 2,
				},
				win_options = {
					winhighlight = "Normal:Normal,FloatBorder:NoiceHoverBorder",
				},
			},
			cmdline_popup = {
				position = {
					row = "35%",
					col = "50%",
				},
				size = {
					width = 70,
					height = "auto",
				},
				border = {
					style = "single",
					padding = { 0, 1 },
				},
				win_options = {
					winhighlight = "Normal:Normal,FloatBorder:NoiceCmdlinePopupBorder",
				},
			},
			cmdline_popupmenu = {
				relative = "editor",
				position = {
					row = "52%",
					col = "50%",
				},
				size = {
					width = 70,
					height = 10,
				},
				border = {
					style = "single",
				},
				win_options = {
					winhighlight = "Normal:Normal,FloatBorder:NoiceCmdlinePopupBorder",
				},
			},
		}
	},
}
