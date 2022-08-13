present, nvimtree = pcall(require, "nvim-tree")
if not present then return end

nvimtree.setup({
	open_on_setup = true,
})
