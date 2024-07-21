return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function ()
      local configs = require("nvim-treesitter.configs")

      configs.setup({
          ensure_installed = { "rust", "go", "lua", "tsx", "typescript", "javascript", "html", "rust" },
          sync_install = false,
          highlight = { enable = true },
          indent = { enable = true },
        })
    end
}
