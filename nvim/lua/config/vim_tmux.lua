local map = require("helper").map

vim.g.tmux_navigator_no_mappings = 1
map('', '<M-h>', ':<C-U>TmuxNavigateLeft<cr>', {silent = true})
map('', '<M-l>', ':<C-U>TmuxNavigateRight<cr>', {silent = true})
map('', '<M-j>', ':<C-U>TmuxNavigateDown<cr>', {silent = true})
map('', '<M-k>', ':<C-U>TmuxNavigateUp<cr>', {silent = true})

