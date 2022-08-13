local present, treesitter = pcall(require, "nvim-treesitter.configs")
if not present then return end

treesitter.setup({
	ensure_installed = {
		"lua"
	},
	auto_install = true,
	highlight = {
		enable = true
	}
})
