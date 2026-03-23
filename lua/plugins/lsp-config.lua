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
				"pyright",
				"html",
				"cssls",
				"ts_ls",
				"texlab",
				"clangd",
				"bashls",
				"jsonls",
				"yamlls",
				"ltex",
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

      vim.lsp.config("ltex", {
        filetypes = {
					"tex",
					"latex",
					"bib",
					"markdown",
					"plaintex",
				},
        settings = { ltex = { language = "en-US" } },
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

