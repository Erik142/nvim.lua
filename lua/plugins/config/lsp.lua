local present, mason = pcall(require, "mason")
local present2, mason_lspconfig = pcall(require, "mason-lspconfig")
require("plugins.config.lspconfig")
if not present then return end
if not present2 then return end

mason.setup()
mason_lspconfig.setup({
    ensure_installed = {
        "clangd", "cmake", "dockerls", "erlangls", "gopls", "jdtls", "jsonls",
        "prismals", "pyright", "rust_analyzer", "sumneko_lua", "tsserver",
        "yamlls"
    }
})
