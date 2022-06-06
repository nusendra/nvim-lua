return require('packer').startup(function()
  use 'wbthomason/packer.nvim'
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
end)
