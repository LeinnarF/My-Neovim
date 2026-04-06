M = {
	{
		"williamboman/mason.nvim",
		lazy = false,
		config = true,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		dependencies = { "williamboman/mason.nvim" },
	},
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"williamboman/mason-lspconfig.nvim",
			"saghen/blink.cmp"
		},
		config = function()
			local servers = {
				"lua_ls",
				"pylsp",
				"html",
				"cssls",
				"ts_ls",
				"texlab",
				"clangd",
				"bashls",
				"jsonls",
				"yamlls",
				"harper_ls",
				"markdown_oxide"
			}

			require("mason-lspconfig").setup({
				ensure_installed = servers,
				automatic_installation = true,
			})

			local capabilities = require("blink.cmp").get_lsp_capabilities(
				vim.lsp.protocol.make_client_capabilities()
			)


			vim.lsp.config("*", { capabilities = capabilities })

			vim.lsp.config("lua_ls", {
				settings = {
					Lua = {
						diagnostics = { globals = { "vim" } },
						workspace = {
							library = vim.api.nvim_get_runtime_file("", true),
							maxPreload = 0,
							checkThirdParty = false,
						},
					},
				},
			})

			vim.lsp.config("harper_ls", {
				settings = {
					["harper-ls"] = {
						linters = {
							SpellCheck = true,
							SentenceCapitalization = true,
							RepeatedWords = true,
							LongSentences = false,
							SpelledNumbers = false,
							Spaces = false,
						},
						userDictPath = vim.fn.stdpath("config") .. "/spell/harper.txt",
						diagnosticSeverity = "hint",
					},
				},
				filetypes = { "markdown", "tex" },
			})

			vim.lsp.config("pylsp", {
				settings = {
					pylsp = {
						plugins = {
							pyflakes = { enabled = true },
							flake8 = { enabled = false },
							mccabe = { enabled = false },
							pycodestyle = { enabled = false },
						},
					},
				},
			})

			vim.lsp.config("markdown_oxide", {
				capabilities = require("blink.cmp").get_lsp_capabilities({
					workspace = {
						didChangeWatchedFiles = {
							dynamicRegistration = true,
						},
					},
				}),
			})

			vim.lsp.enable(servers)
		end,
	},
}

if not vim.g.vscode then
	return M
else
	return {}
end

