-- Change numbers to relative in insert mode
vim.api.nvim_create_autocmd('InsertEnter', { pattern = '*', command = 'set relativenumber' })
vim.api.nvim_create_autocmd('InsertLeave', { pattern = '*', command = 'set norelativenumber' })

-- Fix issue that cursor changing to block if loose focus in insert mode
vim.api.nvim_create_autocmd('FocusGained', { pattern = '*', command = 'set guicursor=n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20' })
