return {
  'nvim-telescope/telescope.nvim', tag = '0.1.8',
  keys = {
    {"<leader>p", ":lua require('telescope.builtin').live_grep()<cr>", desc = "live grep"},
    {"<leader>t", ":lua require('telescope.builtin').treesitter()<cr>", desc = "treesitter"},
    {"<leader>g", ":lua require('telescope.builtin').git_status()<cr>", desc = "git st"},
    {"<leader>g", ":lua require('telescope.builtin').git_status()<cr>", desc = "git st"},
    {"<C-p>", ":lua require('telescope.builtin').find_files({hidden=true})<cr>", "file finder"},
    {"<C-b>", ":lua require('telescope.builtin').buffers()<cr>", "search buffers"},
  }
}
