local present, treesitter = pcall(require, "nvim-treesitter.configs")
local present2, autotag = pcall(require, "nvim-ts-autotag")
if not present then return end
if not present2 then return end

treesitter.setup({
    ensure_installed = "all",
    auto_install = true,
    highlight = {enable = true, disable = {"markdown"}},
    rainbow = {enable = true, extended_mode = true}
})

autotag.setup()
