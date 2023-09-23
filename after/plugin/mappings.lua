vim.keymap.set("i", "kj", "<Esc>", {})
vim.keymap.set("i", "jk", "<Esc>", {})
vim.keymap.set('n', "<leader>t", require("oil").toggle_float,
	{ desc = "Open file explorer" })
