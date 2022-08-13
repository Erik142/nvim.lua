local present, lspconfig = pcall(require, "lspconfig")
if not present then return end

lspconfig.rust_analyzer.setup{}
