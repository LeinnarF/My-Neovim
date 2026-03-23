local M = {}

M.opts = {
	bigfile = {
		enabled = true,
		notify = true,
		size = 1.5 * 1024 * 1024, -- 1.5 MB
		line_length = 2000,
	}
}

return M
