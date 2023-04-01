vim.o.number = true
vim.o.relativenumber = true
vim.o.smartcase = true
vim.o.linebreak = true
vim.o.scrolloff = 10
vim.o.background = 'dark'
vim.o.termguicolors = true
vim.o.cursorline = true
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.showcmd = true
vim.o.ruler = true
vim.o.shiftwidth = 2
vim.o.softtabstop = 2
vim.o.smarttab = true
vim.o.smartindent = true
vim.o.backup = false
vim.o.autowriteall = true
vim.o.autoread = true
vim.o.encoding = 'utf-8'
vim.o.hidden = false
vim.o.list = true
vim.o.spelllang = 'en,sv'
vim.o.hidden = true
vim.o.confirm = true
vim.o.expandtab = true
vim.cmd([[set clipboard+=unnamedplus]])
vim.cmd([[if exists("g:neovide")
	let g:neovide_cursor_animation_length=0
	let g:neovide_cursor_trail_length=0
endif]])

vim.cmd([[au BufRead,BufNewFile *.go set expandtab tabstop=2]])
