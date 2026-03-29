M = {
	'saghen/blink.cmp',
	dependencies = {
		'rafamadriz/friendly-snippets',
		'fang2hou/blink-copilot',
	},
	version = '1.*',
	---@module 'blink.cmp'
	---@type blink.cmp.Config
	opts = {
		keymap = {
			preset = 'default',
			['<CR>'] = { 'accept', 'fallback' },
			['<C-j>'] = { 'select_next', 'fallback' },
			['<Tab>'] = { 'select_next', 'fallback' },
			['<C-k>'] = { 'select_prev', 'fallback' },
		},
		cmdline = { enabled = false },
		appearance = {
			nerd_font_variant = 'mono',
		},
		completion = {
			list = {
				selection = {
					preselect = false,
					auto_insert = false,
				},
			},
			documentation = {
				auto_show = true,
				auto_show_delay_ms = 200,
				window = {
					border = "single",
					scrollbar = false,
					direction_priority = {
						menu_north = { "e", "w" },
						menu_south = { "e", "w" },
					},
				}
			},
			ghost_text = { enabled = true },
			menu = {
				border = "single",
				scrollbar = false,
				min_width = 20,
				draw = {
					columns = {
						{ "label", },
						{ "kind_icon", gap = 1 },
					},
					components = {
						label = {
							width = { max = 22, ellipsis = true },
						},
						label_description = {
							width = { max = 18, ellipsis = true },
						},
						kind_icon = {
							text = function (ctx)
								return ctx.kind_icon .. ""
							end
						},
					},
				}
			}
		},
		sources = {
			default = { "lsp", "snippets", "buffer", "path", "copilot" },
			providers = {
				copilot = {
					name = "copilot",
					module = "blink-copilot",
					score_offset = 5,
					async = true,
					opts = {
						max_completions = 3,
						max_attempts = 5,
					},
				},
				path     = { score_offset = 3 },
				lsp      = { score_offset = 0 },
				snippets = { score_offset = -1 },
				buffer   = { score_offset = -3 },
			},
		},
		fuzzy = { implementation = "prefer_rust_with_warning" }
	},
	opts_extend = { "sources.default" }
}

if vim.g.vscode then
	return {}
end

return M
