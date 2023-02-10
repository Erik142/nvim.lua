local present, nvimtree = pcall(require, "nvim-tree")
local present2, nvimtree_config = pcall(require, "nvim-tree.config")
if not present then return end
if not present2 then return end

local tree_cb = nvimtree_config.nvim_tree_callback

nvimtree.setup({
    open_on_setup = true,
    renderer = {
        icons = {
            glyphs = {
                git = {
                    unstaged = "",
                    staged = "S",
                    unmerged = "",
                    renamed = "➜",
                    untracked = "U",
                    deleted = "",
                    ignored = "◌"
                }
            }
        }
    },
    diagnostics = {
        enable = true,
        show_on_dirs = true,
        icons = {hint = "", info = "", warning = "", error = ""}
    },
    view = {
        mappings = {
            list = {
                {key = {"l", "<CR>", "o"}, cb = tree_cb "edit"},
                {key = "h", cb = tree_cb "close_node"}
            }
        }
    },
    sync_root_with_cwd = true,
    respect_buf_cwd = true,
    update_focused_file = {enable = true, update_root = true}
})
