local tblin = require('utils.operators').tblin

-- Change numbers to relative in insert mode
vim.api.nvim_create_autocmd('InsertEnter', { pattern = '*', command = 'set relativenumber' })
vim.api.nvim_create_autocmd('InsertLeave', { pattern = '*', command = 'set norelativenumber' })

-- Fix issue that cursor changing to block if loose focus in insert mode
vim.api.nvim_create_autocmd('FocusGained', { pattern = '*', callback = function()
  if tblin(vim.fn.mode(), {'i', 'ci', 've'}) then
    vim.opt.guicursor = vim.opt.guicursor
  end
end })
