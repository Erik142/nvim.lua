local present, nvimtree = pcall(require, "nvim-tree")
local present2, nvimtree_config = pcall(require, "nvim-tree.config")
if not present then return end
if not present2 then return end

local tree_cb = nvimtree_config.nvim_tree_callback

nvimtree.setup({
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
        icons = { hint = "", info = "", warning = "", error = "" }
    },
    view = {
        mappings = {
            list = {
                { key = { "l", "<CR>", "o" }, cb = tree_cb "edit" },
                { key = "h",                cb = tree_cb "close_node" }
            }
        },
        width = { max = -1 }
    },
    git = {
        enable = false,
        ignore = false
    },
    sync_root_with_cwd = true,
    respect_buf_cwd = true,
    update_focused_file = { enable = true, update_root = true }
})

local function open_nvim_tree(data)
  -- buffer is a directory
  local directory = vim.fn.isdirectory(data.file) == 1

  if not directory then return end

  -- change to the directory
  vim.cmd.cd(data.file)

  -- open the tree
  require("nvim-tree.api").tree.open()
end

vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })
