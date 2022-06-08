return require('packer').startup(function()
  use 'wbthomason/packer.nvim'
	use 'neovim/nvim-lspconfig'
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
	use({
			"themercorp/themer.lua",
			config = function()
			require("themer").setup({
					colorscheme = "rose_pine_moon",
					styles = {
							["function"] = { style = 'italic' },
							functionbuiltin = { style = 'italic' },
							variable = { style = 'italic' },
								variableBuiltIn = { style = 'italic' },
							parameter  = { style = 'italic' },
					},
			})
			end
	})
	use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icon
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
	}
	use 'bronson/vim-trailing-whitespace'
	use {
		'nvim-telescope/telescope.nvim',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use 'sheerun/vim-polyglot'
	use 'jiangmiao/auto-pairs'
	use 'tpope/vim-fugitive'
	use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
	use 'prettier/vim-prettier'
end)
