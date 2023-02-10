local present, whichkey = pcall(require, "which-key")
if not present then return end

whichkey.setup {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
}

whichkey.register({
    b = {
        name = "Buffers",
        d = { "<cmd> Bdelete! <CR>", "Delete buffer" },
        s = { "<cmd> Telescope buffers <CR>", "Switch buffer" }
    },
    e = { "<cmd> NvimTreeToggle <CR>", "Toggle NvimTree" },
    f = {
        name = "Files",
        f = { "<cmd> Telescope find_files <CR>", "Find files" },
        g = { "<cmd> Telescope live_grep <CR>", "Grep files" }
    },
    g = {
        name = "git",
        g = { "<cmd> lua Lazygit_toggle() <CR>", "Toggle lazygit" }
    },
    h = { "<cmd> Telescope help_tags <CR>", "Help" },
    H = { "<cmd>bufdo Bdelete<CR><cmd>Alpha<CR>", "Home" },
    l = {
        name = "Lsp",
        c = { "<cmd> Lspsaga code_action <CR>", "Code actions" },
        d = { "<cmd> Lspsaga peek_definition <CR>", "Preview definition" },
        D = { "<cmd> TroubleToggle <CR>", "Toggle diagnostics" },
        g = {
            name = "Go to",
            d = { "<cmd> Telescope lsp_definitions <CR>", "Go to definition" },
            i = {
                "<cmd> Telescope lsp_implementations <CR>",
                "Go to implementation"
            }
        },
        r = { "<cmd> Telescope lsp_references <CR>", "Find references" },
        R = { "<cmd> Lspsaga rename <CR>", "Rename" }
    },
    p = { "<cmd> Telescope projects <CR>", "Find projects" },
    s = { "<cmd> Telescope spell_suggest <CR>", "Spell suggest" },
    w = {
        name = "Windows",
        c = { "<C-W>q", "Close window" },
        h = { "<cmd hsplit <CR>", "Horisontal split" },
        v = { "<cmd> vsplit <CR>", "Vertical split" }
    },
    z = { "<cmd> ZenMode <CR>", "Zen mode" }
}, { prefix = "<leader>" })

whichkey.register({
    l = {
        name = "Lsp",
        c = { "<cmd><C-U>Lspsaga range_code_action <CR>", "Code actions" }
    }
}, { prefix = "<leader>", mode = "v" })
