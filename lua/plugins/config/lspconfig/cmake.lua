local present, lspconfig = pcall(require, "lspconfig")
if not present then return end
require("plugins.config.lspconfig.common")

lspconfig.cmake.setup {on_attach = On_attach}