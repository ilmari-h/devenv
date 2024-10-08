local map = require("helper").map

-- Quit on <esc>
local actions = require("telescope.actions")
require("telescope").setup{
  defaults = {
    mappings = {
      n = {
        ["<ESC>"] = actions.close
      },
    },
  }
}

map("n", "<leader>p", ":lua require('telescope.builtin').live_grep()<cr>")
map("n", "<leader>t", ":lua require('telescope.builtin').treesitter()<cr>")
map("n", "<leader>g", ":lua require('telescope.builtin').git_status()<cr>")

map("n", "<leader>r", ":lua require('telescope.builtin').lsp_references()<cr>")
map("n", "<leader>ld", ":lua require('telescope.builtin').lsp_definitions()<cr>")
map("n", "<leader>li", ":lua require('telescope.builtin').lsp_implementations()<cr>")
map("n", "<leader>ls", ":lua require('telescope.builtin').lsp_document_symbols()<cr>")

map("n", "<C-p>", ":lua require('telescope.builtin').find_files({hidden=true})<CR>")
map("n", "<C-b>", ":lua require('telescope.builtin').buffers()<cr>")
