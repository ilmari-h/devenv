return {
  "lukas-reineke/indent-blankline.nvim",
  opts = function()
	vim.api.nvim_set_hl(0, 'IblIndent', { fg = "#242424"})
    return {
      indent = {
        char = "╎",
        tab_char = "╎",
      },
      scope = { show_start = false, show_end = false },
      exclude = {
        filetypes = {
          "help",
          "alpha",
          "dashboard",
          "neo-tree",
          "Trouble",
          "trouble",
          "lazy",
          "mason",
          "notify",
          "toggleterm",
          "lazyterm",
        },
      },
    }
  end,
  main = "ibl",
}
