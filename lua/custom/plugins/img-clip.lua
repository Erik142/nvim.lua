function os.capture(cmd)
  local handle = io.popen(cmd)

  if handle == nil then
    return ''
  end

  local output = handle:read '*a'
  output = output:gsub('[\n\r]', '')
  handle:close()

  return output
end

local function get_img_dir()
  local img_dir_suffix = 'assets'
  local file_dir = os.capture(string.format("dirname '%s'", vim.api.nvim_buf_get_name(0)))
  local repo_path = os.capture(string.format('git -C %s rev-parse --show-toplevel 2>/dev/null', file_dir))
  local img_base_dir = repo_path

  if repo_path == '' then
    img_base_dir = file_dir
  end

  local absolute_img_dir = string.format('%s/%s', img_base_dir, img_dir_suffix)

  local img_dir = os.capture(string.format("realpath --relative-to='%s' '%s'", file_dir, absolute_img_dir))
  print(string.format('Current image dir is: %s', img_dir))

  return img_dir
end

return {
  'HakonHarnes/img-clip.nvim',
  event = 'VeryLazy',
  opts = {
    -- add options here
    -- or leave it empty to use the default settings
    default = {
      dir_path = function()
        return get_img_dir()
      end,
      prompt_for_file_name = false,
      relative_to_current_file = true,
    },
  },
  keys = {
    -- suggested keymap
    { '<leader>pi', '<cmd>PasteImage<cr>', desc = 'Paste image from system clipboard' },
  },
}
