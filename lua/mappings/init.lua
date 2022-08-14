vim.g.mapleader = " "

vim.keymap.set("i", "kj", "<Esc>", {})
vim.keymap.set("i", "jk", "<Esc>", {})
vim.keymap.set("n", "<leader>z", "<cmd> ZenMode <CR>", {}) -- Close current buffer
vim.keymap.set("n", "<leader>c", "<cmd> Bdelete <CR>", {}) -- Close current buffer
vim.keymap.set("n", "<leader>C", "<C-W>q", {}) -- Close current window
vim.keymap.set("n", "<leader>v", "<cmd> vsplit <CR>", {}) -- Create vertical split
vim.keymap.set("n", "<S-L>", "<cmd> BufferLineCycleNext <CR>", {}) -- Go to next buffer
vim.keymap.set("n", "<S-H>", "<cmd> BufferLineCyclePrev <CR>", {}) -- Go to previous buffer
vim.keymap.set("n", "<C-L>", "<C-W>l", {}) -- Go to next buffer
vim.keymap.set("n", "<C-H>", "<C-W>h", {}) -- Go to previous buffer
vim.keymap.set("n", "<C-J>", "<C-W>j", {}) -- Go to next buffer
vim.keymap.set("n", "<C-K>", "<C-W>k", {}) -- Go to previous buffer
vim.keymap.set("n", "<leader>e", "<cmd> NvimTreeToggle <CR>", {})
vim.keymap.set("n", "<leader>f", "<cmd> Telescope find_files <CR>", {})
vim.keymap.set("n", "<leader>lg", "<cmd> Telescope live_grep <CR>", {})
vim.keymap.set("n", "<leader>gs", "<cmd> Telescope grep_string <CR>", {})
vim.keymap.set("n", "<leader>h", "<cmd> Telescope help_tags <CR>", {})
vim.keymap.set("n", "K", "<cmd>Lspsaga hover_doc<CR>", { silent = true })
vim.keymap.set("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>",
	{ silent = true })
vim.keymap.set("v", "<leader>ca", "<cmd><C-U>Lspsaga range_code_action<CR>",
	{ silent = true })
vim.keymap.set("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>",
	{ silent = true })
vim.keymap.set("v", "<leader>ca", "<cmd><C-U>Lspsaga range_code_action<CR>",
	{ silent = true })
vim.keymap.set("n", "gs", "<Cmd>Lspsaga signature_help<CR>", { silent = true })
vim.keymap.set("n", "gr", "<cmd>Lspsaga rename<CR>", { silent = true })
vim.keymap
		.set("n", "gd", "<cmd>Lspsaga preview_definition<CR>", { silent = true })
