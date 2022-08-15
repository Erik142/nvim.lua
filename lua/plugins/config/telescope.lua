local present, telescope = pcall(require, "telescope")
if not present then return end

telescope.setup {
    defaults = {
        layout_strategy = 'horizontal',
        layout_config = {horizontal = {prompt_position = 'top'}}
    }
}
