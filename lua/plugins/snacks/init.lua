local lazygit = require("plugins.snacks.lazygit")
local picker  = require("plugins.snacks.picker")
local bigfile = require("plugins.snacks.bigfile")


local opts = vim.tbl_deep_extend(
	"force",
	{},
	lazygit.opts,
	picker.opts,
	bigfile.opts
)

local keys = {}
vim.list_extend(keys, lazygit.keys)
vim.list_extend(keys, picker.keys)

M = {
	"folke/snacks.nvim",
	-- priority = 1000,
	lazy = false,
	opts = opts,
	keys = keys,
	config = function (_, o)
		require("snacks").setup(o)
		local color = "#c0caf5"
		local groups = {
			"SnacksPickerInputBorder",
			"SnacksPickerInputTitle",
			"SnacksPickerListBorder",
			"SnacksPickerListTitle",
		}
		for _, group in ipairs(groups) do
			vim.api.nvim_set_hl(0, group, { fg = color })
		end
	end,
}

if vim.g.vscode then
	return {}
end
return M
