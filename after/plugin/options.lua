vim.o.relativenumber = true
vim.o.shiftwidth = 2
vim.o.softtabstop = 2
vim.o.tabstop = 2
vim.o.expandtab = true
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.scrolloff = 10

vim.cmd([[if exists("g:neovide")
	let g:neovide_cursor_animation_length=0
	let g:neovide_cursor_trail_length=0
endif]])
