return{
  'saghen/blink.cmp',
  dependencies = { 'rafamadriz/friendly-snippets' },
  version = '1.*',
  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
	
  opts = {
    keymap = {
			preset = 'default',
			['<CR>'] = { 'accept', 'fallback' },
			['<C-j>'] = { 'select_next', 'fallback' },
			['<C-k>'] = { 'select_prev', 'fallback' },
		},

		cmdline = { enabled = false },

    appearance = {
      nerd_font_variant = 'mono'
    },

    completion = {
			documentation = {
				auto_show = true,
				auto_show_delay_ms = 500,
			},
			ghost_text = {enabled = false},
			menu = {
				draw = {
					columns = {
						{ "label", "label_description"},
						{ "kind", "source_name"},
					}
				}
			}
		},

		sources = {
			default = {"lsp", "snippets", "buffer", "path"},
			providers = {
				path     = { score_offset = 3 },
				lsp      = { score_offset = 0 },
				snippets = { score_offset = -1 },
				buffer   = { score_offset = -3 },
			}
		},

    fuzzy = { implementation = "prefer_rust_with_warning" }

  },
  opts_extend = { "sources.default" }
}
