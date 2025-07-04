return {
  'goolord/alpha-nvim',
  config = function()
    local alpha = require 'alpha'
    local theme = require 'alpha.themes.dashboard'

    theme.section.header.val = {
      '                                                                                                                ',
      ' _____ _         _                       _ _                        _                                           ',
      '|_   _| |       | |                     ( ) |                      | |                                          ',
      '  | | | |_    __| | ___   ___  ___ _ __ |/| |_  __      _____  _ __| | __                                       ',
      "  | | | __|  / _` |/ _ \\ / _ \\/ __| '_ \\  | __| \\ \\ /\\ / / _ \\| '__| |/ /                                       ",
      ' _| |_| |_  | (_| | (_) |  __/\\__ \\ | | | | |_   \\ V  V / (_) | |  |   < _ _ _                                  ',
      '|_____|\\__|  \\__,_|\\___/ \\___||___/_| |_| _\\__|   \\_/\\_/_\\___/|_|  |_|\\_(_|_|_)                     _           ',
      '          /\\             | | |_   _|     | |           ( ) |   | |                                 | |          ',
      '         /  \\   _ __   __| |   | |     __| | ___  _ __ |/| |_  | | ___ __   _____      __ __      _| |__  _   _ ',
      "        / /\\ \\ | '_ \\ / _` |   | |    / _` |/ _ \\| '_ \\  | __| | |/ / '_ \\ / _ \\ \\ /\\ / / \\ \\ /\\ / / '_ \\| | | |",
      ' _ _ _ / ____ \\| | | | (_| |  _| |_  | (_| | (_) | | | | | |_  |   <| | | | (_) \\ V  V /   \\ V  V /| | | | |_| |',
      '(_|_|_)_/    \\_\\_| |_|\\__,_| |_____|  \\__,_|\\___/|_| |_|  \\__| |_|\\_\\_| |_|\\___/ \\_/\\_/     \\_/\\_/ |_| |_|\\__, |',
      '                                                                                                           __/ |',
      '                                                                                                          |___/ ',
      '                                                                                                                ',
      '                                                                                                                ',
      '                                                                                                                ',
      '                                                                                                                ',
      '                                                                                                                ',
      '                                         (╯°□°)╯︵ ┻━┻                                                          ',
      '                                                                                                                ',
      '                                                                                                                ',
      '                                                                                                                ',
    }

    theme.section.buttons.val = {
      theme.button('e', '  > New file', ':ene <BAR> startinsert <CR>'),
      theme.button('f', ' > Find file', ':cd $HOME/Projekt | Telescope find_files<CR>'),
      theme.button('rf', '  > Recent files', ':lua Snacks.picker.recent()<CR>'),
      theme.button('rp', '  > Recent projects', ':lua Snacks.picker.projects()<CR>'),
      theme.button('s', '  > Settings', ':cd $HOME/.config/nvim/ | :lua Snacks.picker.files() <CR>'),
      theme.button('q', '󰈆 > Quit NVIM', ':qa<CR>'),
    }

    alpha.setup(theme.config)
  end,
}
