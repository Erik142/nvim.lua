local present, lspconfig = pcall(require, "lspconfig")
if not present then return end
require("plugins.config.lspconfig.common")

lspconfig.jsonls.setup {on_attach = On_attach}
