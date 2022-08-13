present, nvimtree = pcall(require, "nvim-tree")
if not present then return end

nvimtree.setup({
	open_on_setup = true,
	renderer = {
		icons = {
			glyphs = {
				git = {
					unstaged = "",
					staged = "S",
					unmerged = "",
					renamed = "➜",
					untracked = "U",
					deleted = "",
					ignored = "◌"
				}
			}
		}
	}
})
