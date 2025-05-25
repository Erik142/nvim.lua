return {
  'folke/snacks.nvim',
  priority = 1000,
  lazy = false,
  ---@type snacks.Config
  opts = {
    picker = { enabled = true, main = { file = false, current = true } },
    indent = { enabled = true },
    image = { enabled = true },
  },
  keys = {
    {
      '<leader>sf',
      function()
        Snacks.picker.files()
      end,
      desc = 'Find Files',
    },
    {
      '<leader>sg',
      function()
        Snacks.picker.grep()
      end,
      desc = 'Grep Files',
    },
    {
      '<leader><space>',
      function()
        Snacks.picker.buffers()
      end,
      desc = 'Buffers',
    },
    -- git
    {
      '<leader>gb',
      function()
        Snacks.picker.git_branches()
      end,
      desc = 'Git Branches',
    },
    {
      '<leader>gl',
      function()
        Snacks.picker.git_log()
      end,
      desc = 'Git Log',
    },
    {
      '<leader>gL',
      function()
        Snacks.picker.git_log_line()
      end,
      desc = 'Git Log Line',
    },
    {
      '<leader>gs',
      function()
        Snacks.picker.git_status()
      end,
      desc = 'Git Status',
    },
    {
      '<leader>gS',
      function()
        Snacks.picker.git_stash()
      end,
      desc = 'Git Stash',
    },
    {
      '<leader>gd',
      function()
        Snacks.picker.git_diff()
      end,
      desc = 'Git Diff (Hunks)',
    },
    {
      '<leader>gf',
      function()
        Snacks.picker.git_log_file()
      end,
      desc = 'Git Log File',
    },
    -- LSP
    {
      '<leader>Ld',
      function()
        Snacks.picker.lsp_definitions()
      end,
      desc = 'Goto Definition',
    },
    {
      '<leader>LD',
      function()
        Snacks.picker.lsp_declarations()
      end,
      desc = 'Goto Declaration',
    },
    {
      '<leader>Lr',
      function()
        Snacks.picker.lsp_references()
      end,
      nowait = true,
      desc = 'References',
    },
    {
      '<leader>LI',
      function()
        Snacks.picker.lsp_implementations()
      end,
      desc = 'Goto Implementation',
    },
    {
      '<leader>Lt',
      function()
        Snacks.picker.lsp_type_definitions()
      end,
      desc = 'Goto Type Definition',
    },
  },
}
