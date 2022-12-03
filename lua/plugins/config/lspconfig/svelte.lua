local present, lspconfig = pcall(require, "lspconfig")
if not present then return end
require("plugins.config.lspconfig.common")

lspconfig.svelte.setup { on_attach = On_attach }
