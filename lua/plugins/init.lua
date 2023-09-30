local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Plugins to consider later on:
--   * Wansmer/treesj - splitting/joining blocks of code like arrays, hashes, statements, objects, dictionaries, etc.

require('lazy').setup({
  {
    'folke/tokyonight.nvim',
    lazy = false,
    priority = 1000,
    opts = {},
    init = function()
      vim.cmd([[colorscheme tokyonight-night]])
    end,
  },
  {-- Collection of useful lua functions
    'nvim-lua/plenary.nvim'
  },
  {-- Better syntax highlighting
    'nvim-treesitter/nvim-treesitter',
    event = 'BufReadPre',
    config = function()
      require('plugins.treesitter')
    end,
  },
  {-- LSP
    'neovim/nvim-lspconfig',
    lazy = false,
    dependencies = {
      'mason.nvim',
      'williamboman/mason-lspconfig.nvim',
    },
  },
  {
    'williamboman/mason.nvim',
    cmd = 'Mason',
  },
  {
    'pmizio/typescript-tools.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'neovim/nvim-lspconfig',
    },
    opts = {},
    config = function()
      require('lsp.typescript-tools')
    end
  },
  {-- Telescope.nvim to easily find and open files
    'nvim-telescope/telescope.nvim',
    event = 'VeryLazy',
    tag = '0.1.3',
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
    config = function()
      require('plugins.telescope')
    end,
    -- Keys are defined in `keymappings.lua`
  },
  {-- To keep cursor at same point upon yank or paste
    'gbprod/stay-in-place.nvim',
    lazy = false,
    config = true,
  },
  {-- Faster character search with `s`, `f` and `t`. Use `cl` instead of old `s` behavior
    'folke/flash.nvim',
    event = 'VeryLazy',
    opts = {},
  },
  {-- Comment strings easy way
    'numToStr/Comment.nvim',
    lazy = false,
    config = function()
      require('plugins.comment')
    end,
  },
  {-- Show indent scope
    'echasnovski/mini.indentscope',
    event = 'BufEnter',
    version = '*',
    config = function()
      require('mini.indentscope').setup({
        draw = {
          delay = 10,
          animation = require('mini.indentscope').gen_animation.none()
        },
      })
    end,
  },
}, {
  defaults = {
    lazy = true,
  },
  install = {
    colorscheme = { "tokyonight-night" },
  },
  concurrency = 5,
  debug = false,
})

