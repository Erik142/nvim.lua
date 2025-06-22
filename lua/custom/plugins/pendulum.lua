return {
  'ptdewey/pendulum-nvim',
  config = function()
    require('pendulum').setup {
      log_file = vim.env.HOME .. '/.dotfiles/pendulum-log.csv',
      time_format = '24h',
      time_zone = 'Europe/Berlin', -- Format "America/New_York"
    }
  end,
}
