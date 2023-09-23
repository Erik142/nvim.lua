return {
  'stevearc/oil.nvim',
  opts = {},
  -- Optional dependencies
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local present, oil = pcall(require, "oil")

    if not present then return end

    oil.setup({ view_options = { show_hidden = true }, float = { padding = 10 } })
  end
}
