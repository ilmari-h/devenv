return {
  {'romgrk/barbar.nvim',
    dependencies = {
      'lewis6991/gitsigns.nvim', -- for git status
      'nvim-tree/nvim-web-devicons', -- for file icons
    },
    init = function()
		vim.g.barbar_auto_setup = false
	end,
    opts = function()
		vim.api.nvim_set_hl(0, "BufferCurrent", { fg="white" })
		vim.api.nvim_set_hl(0, "BufferCurrentSign", { bg="#121212" })
	end,
    version = '^1.0.0', -- optional: only update when a new 1.x version is released
  },
}
