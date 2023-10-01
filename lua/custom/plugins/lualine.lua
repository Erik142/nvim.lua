return {
	-- Set lualine as statusline
	'nvim-lualine/lualine.nvim',
	-- See `:help lualine.txt`
	opts = {
		options = {
			icons_enabled = false,
			theme = 'gruvbox-baby',
			component_separators = '|',
			section_separators = ''
		}
	},
	lazy = true,
	event = 'BufEnter'
}
