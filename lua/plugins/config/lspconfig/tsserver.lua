present, lspconfig = pcall(require, "lspconfig")
if not present then return end

lspconfig.tsserver.setup {}
