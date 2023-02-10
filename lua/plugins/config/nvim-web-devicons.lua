local present, webdev_icons = pcall(require, "nvim-web-devicons")

if not present then return end

webdev_icons.setup {color_icons = true, default = true}
