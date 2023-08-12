local opt = vim.opt
local cmd = vim.cmd
local g = vim.g
local o = vim.o
local fn = vim.fn

local map = require("utils").map

-- Appearance
o.termguicolors = true
opt.number = true -- show line numbers
opt.wrap = true
opt.wrapmargin = 8 -- wrap lines when coming within n characters from side
opt.linebreak = true -- set soft wrapping
opt.showbreak = "↪"
opt.autoindent = true -- automatically set indent of new line
opt.ttyfast = true -- faster redrawing
table.insert(opt.diffopt, "vertical")
table.insert(opt.diffopt, "iwhite")
table.insert(opt.diffopt, "internal")
table.insert(opt.diffopt, "algorithm:patience")
table.insert(opt.diffopt, "hiddenoff")
opt.laststatus = 3 -- show the global statusline all the time
opt.scrolloff = 7 -- set 7 lines to the cursors - when moving vertical
opt.wildmenu = true -- enhanced command line completion
opt.hidden = true -- current buffer can be put into background
opt.showcmd = true -- show incomplete commands
opt.showmode = true -- don't show which mode disabled for PowerLine
opt.wildmode = {"list", "longest"} -- complete files like a shell
opt.cmdheight = 1 -- command bar height
opt.title = true -- set terminal title
opt.showmatch = true -- show matching braces
opt.mat = 2 -- how many tenths of a second to blink
opt.updatetime = 300
opt.signcolumn = "yes"
opt.shortmess = "atToOFc" -- prompt message options
opt.relativenumber = true

-- Tab control
opt.smarttab = true -- tab respects 'tabstop', 'shiftwidth', and 'softtabstop'
opt.tabstop = 2 -- the visible width of tabs
opt.softtabstop = 2 -- edit as if the tabs are 4 characters wide
opt.shiftwidth = 2 -- number of spaces to use for indent and unindent
opt.shiftround = true -- round indent to a multiple of 'shiftwidth'

-- Prettier
cmd([[
	let g:prettier#autoformat = 0
	autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html Prettier
]])

-- Keymaps
map("n", "<C-H>", "<C-W><C-H>")
map("n", "<C-J>", "<C-W><C-J>")
map("n", "<C-K>", "<C-W><C-K>")
map("n", "<C-L>", "<C-W><C-L>")
map("n", "<C-B>", ":NvimTreeToggle<CR>")
map("n", "<C-N>", ":tabnew<CR>")
map("n", "<C-Y>", ":tabprevious<CR>")
map("n", "<C-U>", ":tabnext<CR>")
map("n", "<C-F>", ":FixWhitespace<CR>")
map("n", "<C-P>", ":Telescope find_files<CR>")
map("n", "<C-O>", ":Telescope live_grep<CR>")

-- Fix the overflowed error message / diagnostics
vim.diagnostic.config({
  virtual_text = false
})

-- Show line diagnostics automatically in hover window
vim.o.updatetime = 250
vim.cmd [[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]

-- Grep with Far plugin
-- opt.lazyredraw = true            -- improve scrolling performance when navigating through large results
-- opt.regexpengine=1        -- use old regexp engine
-- opt.ignorecase = true  -- ignore case only when the pattern contains no capital letters
