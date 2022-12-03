vim.g.mapleader = " "

vim.keymap.set("i", "kj", "<Esc>", {})
vim.keymap.set("i", "jk", "<Esc>", {})
vim.keymap.set("n", "<C-L>", "<C-W>l", {}) -- Go to next buffer
vim.keymap.set("n", "<C-H>", "<C-W>h", {}) -- Go to previous buffer
vim.keymap.set("n", "<C-J>", "<C-W>j", {}) -- Go to next buffer
vim.keymap.set("n", "<C-K>", "<C-W>k", {}) -- Go to previous buffer
vim.keymap.set("n", "K", "<cmd>Lspsaga hover_doc<CR>", {silent = true})
vim.keymap.set("n", "gs", "<Cmd>Lspsaga signature_help<CR>", {silent = true})
vim.keymap.set("n", "gr", "<cmd>Lspsaga rename<CR>", {silent = true})
