local set_hl = vim.api.nvim_set_hl
local fg_color = "#c0caf5"
local fg_alt_color = "#414868"

set_hl(0, "BlinkCmpMenuBorder", { fg = fg_alt_color })
set_hl(0, "BlinkCmpDocBorder", { fg = fg_alt_color })
set_hl(0, "NoiceHoverBorder", { fg = fg_alt_color})
