-- H for moving to the first non-block character of the line. Remap of ^
vim.keymap.set('n', 'H', '^', { silent = true })

-- Keep visual mode while indenting
vim.keymap.set('v', '<', '<gv', { silent = true })
vim.keymap.set('v', '>', '>gv', { silent = true })

-- Easy move lines in visual mode
vim.keymap.set('x', 'K', ":move '<-2<CR>gv=gv", { silent = true})
vim.keymap.set('x', 'J', ":move '<+1<CR>gv=gv", { silent = true})

-- Keep cursor in the center when scrolling
vim.keymap.set('n', '<C-u>', '<C-u>zz', { silent = true})
vim.keymap.set('n', '<C-d>', '<C-d>zz', { silent = true})

-- Keep cursor in the center when searching
vim.keymap.set('n', 'n', 'nzzzv', silent)
vim.keymap.set('n', 'N', 'Nzzzv', silent)

-- Save file with CTRL-S
vim.keymap.set('n', '<C-s>', ':w<CR>')
vim.keymap.set('i', '<C-s>', '<ESC>:w<CR>')

-- Don't yank on delete char
vim.keymap.set('n', 'x', '"_x', silent)
vim.keymap.set('n', 'X', '"_X', silent)
vim.keymap.set('v', 'x', '"_x', silent)
vim.keymap.set('v', 'X', '"_X', silent)

-- Toggle highlights
vim.keymap.set('n', '<F8>', ':set invhlsearch hlsearch?<CR>', { desc = 'Toggle hlsearch' })

-- Close buffer without exiting nvim
vim.keymap.set('n', '<leader>x', vim.cmd.bd, { desc = 'Close buffer' })
vim.keymap.set('n', '<leader>X', ':bd!<CR>', { desc = 'Close buffer ignoring changes' })

-- Don't yank when pasting
vim.keymap.set('x', '<leader>p', '"_dP', { desc = 'Paste without yanking the old text', silent = true })

-- Easy buffer switch
vim.keymap.set('n', '<Tab>', vim.cmd.bnext, { desc = 'Go to next buffer' })
vim.keymap.set('n', '<S-Tab>', vim.cmd.bprev, { desc = 'Go to previous buffer' })

vim.keymap.set('n', '<leader>cd', '<cmd>cd %:p:h<CR>', { desc = 'Change PWD to current file directory' })

-- CTRL-w is annoying
vim.keymap.set('n', '<leader>w', '<c-w>', { noremap = true })

vim.keymap.set('n', '<leader>ee', vim.cmd.Ex, { desc = 'Open Netrw' })

-- Undotree
vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle, { desc = 'Open Undotree panel' })

-- Ufo folding
-- vim.keymap.set('n', 'zC', require('ufo').closeAllFolds)
-- vim.keymap.set('n', 'zA', require('ufo').openAllFolds)
