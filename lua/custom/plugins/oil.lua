local oil_extensions_augroup = vim.api.nvim_create_augroup('oil-extensions',
    { clear = true })

local function set_original_bufid()
    local curr_winid = vim.api.nvim_get_current_win()
    local curr_bufid = vim.api.nvim_get_current_buf()
    if vim.w[curr_winid].oil_bufid then
        if vim.w[curr_winid].oil_bufid ~= curr_bufid then
            vim.w[curr_winid].oil_original_bufid = curr_bufid
        end
    end
end

vim.api.nvim_create_autocmd({ 'BufEnter', 'BufWinEnter' }, {
    group = oil_extensions_augroup,
    callback = set_original_bufid
})

local function toggle_oil(dir)
    local oil = require("oil")
    local winid = vim.api.nvim_get_current_win()
    local has_oil_buf = false
    if vim.w[winid].oil_bufid and vim.w[winid].oil_original_bufid then
        has_oil_buf = true
    end

    local curr_bufid = vim.api.nvim_get_current_buf()

    if has_oil_buf and curr_bufid == vim.w[winid].oil_bufid then
        print("Is oil.nvim buffer, restoring old buffer...")

        local original_bufid = vim.w[winid].oil_original_bufid

        if vim.api.nvim_buf_is_valid(original_bufid) then
            print("Valid original bufid, setting it active...")
            vim.api.nvim_set_current_buf(original_bufid)
        else
            print("oil.nvim buffer is the last buffer in the window...")
        end
    else
        print("Not oil.nvim buffer, opening it...")
        local original_bufid = vim.api.nvim_get_current_buf()
        oil.open(dir)
        local bufid = vim.api.nvim_get_current_buf()
        vim.w[winid].oil_bufid = bufid
        vim.w[winid].oil_original_bufid = original_bufid
    end
end

return {
    'stevearc/oil.nvim',
    lazy = false,
    keys = { { "<leader>t", toggle_oil, desc = "Open file explorer" } },
    opts = {
        view_options = { show_hidden = true },
        columns = { "icon", "size" },
        keymaps = {
            ["g?"] = "actions.show_help",
            ["<CR>"] = "actions.select",
            ["<C-t>"] = "actions.select_tab",
            ["<C-p>"] = "actions.preview",
            ["<C-c>"] = "actions.close",
            ["-"] = "actions.parent",
            ["_"] = "actions.open_cwd",
            ["`"] = "actions.cd",
            ["~"] = "actions.tcd",
            ["gs"] = "actions.change_sort",
            ["gx"] = "actions.open_external",
            ["g."] = "actions.toggle_hidden",
            ["g\\"] = "actions.toggle_trash"
        },
        use_default_keymaps = false
    },
    -- Optional dependencies
    dependencies = { "nvim-tree/nvim-web-devicons" }
}
