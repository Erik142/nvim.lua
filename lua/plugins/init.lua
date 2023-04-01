local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({
    'git', 'clone', '--depth', '1',
    'https://github.com/wbthomason/packer.nvim', install_path
  })
  vim.cmd [[packadd packer.nvim]]
end

local present, packer = pcall(require, "packer")
if not present then
  print("Packer could not be found on the system...")
  return
end

packer.startup({
  function(use)
    use 'wbthomason/packer.nvim'
    use 'nvim-lua/plenary.nvim'
    use 'christoomey/vim-tmux-navigator'
    use {
      'kylechui/nvim-surround',
      config = function() require("plugins.config.surround") end
    }
    use {
      'nvim-tree/nvim-web-devicons',
      config = function()
        require("plugins.config.nvim-web-devicons")
      end
    }
    use {
      'sainnhe/gruvbox-material',
      config = function() require("plugins.config.gruvbox") end
    }
    use {
      'windwp/nvim-autopairs',
      config = function() require("plugins.config.autopairs") end
    }
    use {
      'nvim-tree/nvim-tree.lua',
      requires = { 'nvim-tree/nvim-web-devicons' },
      config = function() require("plugins.config.nvimtree") end
    }
    use {
      'nvim-telescope/telescope.nvim',
      tag = '0.1.0',
      requires = { { 'nvim-lua/plenary.nvim' } },
      config = function() require("plugins.config.telescope") end
    }
    use 'moll/vim-bbye'
    use {
      'nvim-lualine/lualine.nvim',
      requires = { 'nvim-tree/nvim-web-devicons', opt = true },
      config = function() require("plugins.config.statusline") end
    }
    use {
      'williamboman/mason.nvim',
      requires = {
        'neovim/nvim-lspconfig', 'williamboman/mason-lspconfig.nvim'
      },
      config = function() require("plugins.config.lsp") end
    }
    use {
      'hrsh7th/nvim-cmp',
      requires = {
        'hrsh7th/cmp-cmdline', 'hrsh7th/cmp-path', 'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-nvim-lsp', 'L3MON4D3/LuaSnip',
        'onsails/lspkind.nvim'
      },
      config = function() require("plugins.config.cmp") end
    }
    use {
      'lewis6991/gitsigns.nvim',
      config = function() require("plugins.config.gitsigns") end
    }
    use {
      'nvim-treesitter/nvim-treesitter',
      requires = { 'windwp/nvim-ts-autotag', 'p00f/nvim-ts-rainbow' },
      run = function()
        require('nvim-treesitter.install').update({ with_sync = true })
      end,
      config = function() require("plugins.config.treesitter") end
    }
    use {
      "glepnir/lspsaga.nvim",
      branch = "main",
      config = function() require("plugins.config.lspsaga") end
    }
    use {
      'jose-elias-alvarez/null-ls.nvim',
      config = function() require("plugins.config.null-ls") end
    }
    use {
      'norcalli/nvim-colorizer.lua',
      config = function() require("plugins.config.colorizer") end
    }
    use {
      'lukas-reineke/indent-blankline.nvim',
      config = function()
        require("plugins.config.indent-blankline")
      end
    }
    use {
      'ixru/nvim-markdown',
      requires = {
        'godlygeek/tabular', 'vim-pandoc/vim-pandoc-syntax',
        'vim-pandoc/vim-pandoc'
      },
      config = function()
        require("plugins.config.nvim-markdown")
      end
    }
    use {
      'folke/zen-mode.nvim',
      requires = { 'folke/twilight.nvim' },
      config = function() require("plugins.config.zen-mode") end
    }
    use {
      'numToStr/Comment.nvim',
      config = function() require("plugins.config.comment") end
    }
    use {
      'akinsho/toggleterm.nvim',
      tag = 'v2.*',
      config = function() require("plugins.config.toggleterm") end
    }
    use {
      'goolord/alpha-nvim',
      config = function() require("plugins.config.alpha") end
    }
    use {
      'ahmedkhalf/project.nvim',
      requires = { 'nvim-telescope/telescope.nvim' },
      config = function() require("plugins.config.project") end
    }
    use {
      "folke/which-key.nvim",
      config = function() require("plugins.config.which-key") end
    }

    use {
      "folke/trouble.nvim",
      requires = "nvim-tree/nvim-web-devicons",
      config = function() require("plugins.config.trouble") end
    }

    use {
      "folke/todo-comments.nvim",
      requires = "nvim-lua/plenary.nvim",
      config = function() require("plugins.config.todo") end
    }

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if packer_bootstrap then require('packer').sync() end
  end,
  config = { display = { open_fn = require('packer.util').float } }
})
