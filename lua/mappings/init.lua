vim.g.mapleader = " "

vim.api.nvim_set_keymap("n", "<leader>c", "<cmd> Bdelete <CR>", {}) -- Close current buffer
vim.api.nvim_set_keymap("n", "<leader>C", "<C-W>q", {}) -- Close current window
vim.api.nvim_set_keymap("n", "<leader>v", "<cmd> vsplit <CR>", {}) -- Create vertical split
vim.api.nvim_set_keymap("n", "<S-L>", "<cmd> BufferLineCycleNext <CR>", {}) -- Go to next buffer
vim.api.nvim_set_keymap("n", "<S-H>", "<cmd> BufferLineCyclePrev <CR>", {}) -- Go to previous buffer
vim.api.nvim_set_keymap("n", "<C-L>", "<C-W>l", {}) -- Go to next buffer
vim.api.nvim_set_keymap("n", "<C-H>", "<C-W>h", {}) -- Go to previous buffer
vim.api.nvim_set_keymap("n", "<C-J>", "<C-W>j", {}) -- Go to next buffer
vim.api.nvim_set_keymap("n", "<C-K>", "<C-W>k", {}) -- Go to previous buffer
vim.api.nvim_set_keymap("n", "<leader>e", "<cmd> NvimTreeToggle <CR>", {})
vim.api.nvim_set_keymap("n", "<leader>f", "<cmd> Telescope find_files <CR>", {})
vim.api.nvim_set_keymap("n", "<leader>lg", "<cmd> Telescope live_grep <CR>", {})
vim.api.nvim_set_keymap("n", "<leader>gs", "<cmd> Telescope grep_string <CR>", {})
vim.api.nvim_set_keymap("n", "<leader>h", "<cmd> Telescope help_tags <CR>", {})
