return {
    'folke/zen-mode.nvim',
    dependencies = {{'folke/twilight.nvim', config = true}},
    opts = {
        plugins = {
            twilight = {enabled = true},
            gitsigns = {enabled = false},
            tmux = {enabled = false},
            options = {enabled = true, ruler = false}
        }
    },
    lazy = false
}
