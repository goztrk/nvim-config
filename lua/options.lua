local g = vim.g
local opt = vim.opt

-- Timings
opt.timeoutlen = 200
opt.updatetime = 100

opt.mouse = 'a'

opt.cmdheight = 0
opt.viminfo = "'1000"
opt.completeopt = 'menu,menuone,noselect'

-- Enable cursor line
opt.cursorline = true

-- Enable numbers
opt.number         = true
-- There is a autocmd for this to set relative in insert mode
opt.relativenumber = false

-- Use global yank register
opt.clipboard = "unnamed,unnamedplus"

-- Terminal colors
opt.termguicolors = true

-- Set encodings
opt.encoding     = "utf-8"
opt.fileencoding = "utf-8"
opt.swapfile = false

-- Fix annoying indentation
opt.autoindent  = true
opt.smartindent = true
opt.smarttab    = true
opt.expandtab   = true
opt.shiftwidth  = 2
opt.tabstop     = 4
opt.softtabstop = 2

-- Have a global statusline between windows
opt.laststatus = 3

