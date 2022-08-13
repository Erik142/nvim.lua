local present, gitsigns = pcall(require, "gitsigns")
if not present then return end

gitsigns.setup({
	attach_to_untracked = true,
	current_line_blame = true,
	current_line_blame_opts = {
		delay = 100
	}
})
