require 'settings'
require 'plugins'
require 'lsp-config'

require('lualine').setup()
require('nvim-tree').setup{}
require('telescope').setup{
	defaults = {
		file_ignore_patterns = {
			"node_modules", "vendor"
		}
	}
}
