local present, treesitter = pcall(require, "nvim-treesitter.configs")
present2, autotag = pcall(require, "nvim-ts-autotag")
if not present then return end
if not present2 then return end

treesitter.setup({
	ensure_installed = { "lua" },
	auto_install = true,
	highlight = { enable = true }
})

autotag.setup()
