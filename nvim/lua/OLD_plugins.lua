gConfigFiles = {}

function install_configs()
	for k,config in pairs(gConfigFiles) do
		require( config );
	end
end

function use_config(name)
	table.insert(gConfigFiles,name)
end

return require('packer').startup(function(use)


	use 'wbthomason/packer.nvim'
	
	----------------------
	-- Language servers --
	----------------------

	use 'neovim/nvim-lspconfig'

	-- Autocomplete plugin
	use 'hrsh7th/nvim-cmp'
	-- Autocomplete providers
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	-- Snippet plugin, required by nvim-cmp
	use 'hrsh7th/cmp-vsnip'
	use 'hrsh7th/vim-vsnip'
	-- Autocomplete config
	use_config('config/autocomplete')
	use_config('config/diagnostics')

	-- Syntax highlighting
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate' -- Update parsers when updating plugin.
	}
	use_config('config/treesitter')

	-- Symbol navigation
	use 'simrat39/symbols-outline.nvim'
	use_config('config/symbols_outline')

	--------------------------
	-- Telescope navigation --
	--------------------------

	-- Telescope: plugins
	use 'nvim-telescope/telescope.nvim'
	use { 'nvim-telescope/telescope-fzf-native.nvim', run= 'make' }
	use 'nvim-lua/plenary.nvim' -- Helper functions required by telescope

	-- Telescope config
	use_config('config/telescope')

	-------------------------
	-- Terminal navigation --
	-------------------------

	-- Tmux navigation inside Neovim
	use 'christoomey/vim-tmux-navigator'
	use_config('config/vim_tmux');

	-----------
	-- Other --
	-----------

	-- Line guides
	use 'lukas-reineke/indent-blankline.nvim'
	require('ibl').setup {
	    indent = { highlight = highlight, char = "¦" },
	}

	-- statusline and tabline
	use {
		'j-hui/fidget.nvim',
		tag = 'legacy'
	}
	require"fidget".setup{
	  text = {
		spinner = "pipe",         -- animation shown when tasks are ongoing
		done = "✓",               -- character shown when all tasks are complete
		commenced = "Started",    -- message shown when task starts
		completed = "Completed",  -- message shown when task completes
	  }
	}
	use 'nvim-tree/nvim-web-devicons'
	use {'romgrk/barbar.nvim', requires = 'nvim-web-devicons'}
	use {
	  'nvim-lualine/lualine.nvim',
	  requires = { 'nvim-tree/nvim-web-devicons' }
	}
	use_config('config/barbar')
	use_config('config/lualine')

	-- Session management
	use 'rmagatti/auto-session'
	require('auto-session').setup({
		log_level = "error",
		auto_session_suppress_dirs = { "~/", "~/Workspaces", "~/Downloads", "/"},
	})
	vim.o.sessionoptions="blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"

	install_configs()

end)
