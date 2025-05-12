require("g.remap")
require("g.set")
require("g.lazy_init")

local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

local yank_group = augroup("HighlightYank", { clear = true })

autocmd("TextYankPost", {
	group = yank_group,
	desc = "Highlight when yanking text ",
	callback = function()
		vim.highlight.on_yank()
	end,
})

vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25
