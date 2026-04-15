local set_hl = vim.api.nvim_set_hl
local fg_color = "#c0caf5"
local fg_alt_color = "#414868"

local groups = {
	"SnacksPickerInputBorder",
	"SnacksPickerInputTitle",
	"SnacksPickerListBorder",
	"SnacksPickerListTitle",
	"NoiceCmdlinePopupBorder",
	"NoiceCmdlinePopupTitle",
	"NoiceConfirmBorder",
	"NoicePopupBorder",
	"NoiceSplitBorder",
	"NoiceCmdlineText",
}

for _, group in ipairs(groups) do
	vim.api.nvim_set_hl(0, group, { fg = fg_color })
end

set_hl(0, "BlinkCmpMenuBorder", { fg = fg_alt_color })
set_hl(0, "BlinkCmpDocBorder", { fg = fg_alt_color })
set_hl(0, "NoiceHoverBorder", { fg = fg_alt_color})
