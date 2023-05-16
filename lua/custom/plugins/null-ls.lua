return {
	'jose-elias-alvarez/null-ls.nvim',
	config = function()
		local null_ls = require 'null-ls'
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.lua_format,
				null_ls.builtins.formatting.clang_format,
				null_ls.builtins.diagnostics.yamllint,
				null_ls.builtins.formatting.prettier,
				null_ls.builtins.formatting.gofmt
			}
		})
	end
}
