require('nvim-treesitter.configs').setup({
  ensure_installed = {
    -- Neovim dev
    'lua',
    'vim',
    'vimdoc',
    -- General
    'gitignore',
    'gitcommit',
    'regex',
    'make',
    'yaml',
    -- Frontend dev
    'css',
    'html',
    'htmldjango',
    'javascript',
    'jsdoc',
    'json',
    'json5',
    'markdown',
    'prisma',
    'scss',
    'tsx',
    'typescript',
    -- Backend dev
    'python',
    'dockerfile',
  },
  sync_install = false,
  highlight = {
    enable = true,
  },
  enable = true,
})
