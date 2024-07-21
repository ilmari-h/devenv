vim.g.mapleader = " "

require('config.lazy')

vim.opt.shortmess='A' -- Ignore swapfile warnings
vim.opt.clipboard={'unnamed','unnamedplus'}
vim.opt.undodir=os.getenv('HOME') .. '/.cache/nvim/undo'
vim.opt.undofile = true
vim.opt.scrolloff = 10 -- margin of scroll
vim.opt.autoread = true

-- case-insensitive search in lowercase.
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- tabs
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.number = true

-- keys
local keymap = vim.keymap
keymap.set('n', '<leader>n', ':noh<cr>')
keymap.set('n', '<C-l>', ':bn<cr>')
keymap.set('n', '<C-h>', ':bp<cr>')
keymap.set('n', '<C-x>', ':bd<cr>')
keymap.set('n', '<C-t>', ':tabnew<cr>')

vim.cmd('command W w')
vim.cmd('command Q qa')


