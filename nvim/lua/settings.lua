
-- Theme
vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])

vim.opt.clipboard = "unnamedplus"

vim.o.hlsearch = false
vim.o.incsearch = true
vim.o.ruler = true
vim.o.mouse= 'a'
vim.o.expandtab= true
vim.o.shiftwidth=4
vim.o.smartindent= true
vim.o.number= true
vim.o.relativenumber= true

 vim.api.nvim_command([[
augroup automaticLineNumbers
autocmd InsertEnter * :set norelativenumber
autocmd InsertLeave * :set relativenumber 
augroup END 
]])

-- Init nvim tree setup
require'nvim-tree'.setup()

