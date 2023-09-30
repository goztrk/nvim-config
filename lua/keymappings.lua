-- Set <leader> key to <space>
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

local keymap = vim.keymap.set
local silent = { silent = true }


-- Save using CTRL+s
keymap('n', '<C-s>', '<Cmd>w<CR>')
keymap('i', '<C-s>', '<Cmd>w<CR>')

-- Quit
keymap('n', '<C-q>', '<Cmd>q<CR>')
keymap('i', '<C-q>', '<Cmd>q<CR>')

-- Switch buffers using <Tab> key. <Shift>+<Tab> for previous tab
keymap('n', '<Tab>', '<Cmd>bn<CR>', silent)
keymap('n', '<S-Tab>', '<Cmd>bp<CR>', silent)

-- Keep visual mode while indenting
keymap('v', '<', '<gv', silent)
keymap('v', '>', '>gv', silent)

-- Binding <leader>+w to windows. I don't like using CTRL too much
keymap('n', '<Leader>wq', '<Cmd>close<CR>', silent)
keymap('n', '<Leader>ww', '<Cmd>vsplit<CR>', silent)
keymap('n', '<Leader>wh', '<Cmd>hsplit<CR>', silent)

--
-- Plugin keymappings
--

-- Telescope
keymap('n', '<Leader>ff', '<Cmd>lua require("telescope.builtin").find_files()<Cr>', silent)
keymap('n', '<Leader>gf', '<Cmd>lua require("telescope.builtin").git_files()<Cr>', silent)
keymap('n', '<Leader>fw', '<Cmd>lua require("telescope.builtin").grep_string()<Cr>', silent)
keymap('n', '<Leader>fb', '<Cmd>lua require("telescope.builtin").buffers()<Cr>', silent)
keymap('n', '<Leader>fk', '<Cmd>lua require("telescope.builtin").keymaps()<Cr>', silent)
keymap('n', '<Leader>fo', '<Cmd>lua require("telescope.builtin").vim_options()<Cr>', silent)
keymap('n', '<Leader>gs', '<Cmd>lua require("telescope.builtin").git_status()<Cr>', silent)
keymap('n', '<Leader>gb', '<Cmd>lua require("telescope.builtin").git_branches()<Cr>', silent)

-- Flash
keymap({'n', 'o', 'x'}, 's', '<Cmd>lua require("flash").jump()<Cr>', silent)

