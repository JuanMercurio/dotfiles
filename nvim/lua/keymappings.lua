-- Map Leader
vim.g.mapleader = " "


-- Change working directory
vim.api.nvim_set_keymap('n', '<leader>cd', ':cd %:p:h<CR>:pwd<CR>', {noremap = true, silent = true})

-- Open tree
vim.api.nvim_set_keymap('n', '<c-n>', ':NvimTreeToggle<cr>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>e', ':NvimTreeToggle<cr>', {noremap = true, silent = true})


-- Better escape insert mode
vim.api.nvim_set_keymap('i', 'jk', '<Esc>', {noremap = true, silent = true})

-- Go to .config/nvim
vim.api.nvim_set_keymap('n', '<leader><leader>\\', ':e ~/.config/nvim<cr> :cd ~/.config/nvim <cr>', {})


-- Better window navigation
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', {silent = true})
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>l', {silent = true})
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', {silent = true})
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', {silent = true})


-- Better indenting in visual mode
vim.api.nvim_set_keymap('v', '<', '<gv', {noremap = true, silent = true})
vim.api.nvim_set_keymap('v', '>', '>gv', {noremap = true, silent = true})


-- Tab Switch
--vim.api.nvim_set_keymap('n', '<TAB>', ':tabnext<cr>', {noremap = true, silent = true})
--vim.api.nvim_set_keymap('n', '<S-TAB>', ':tabprevious<cr>', {noremap = true, silent = true})

-- Quickfix fast Navigation
vim.api.nvim_set_keymap('n', ']q', ':cnext<cr>', {})
vim.api.nvim_set_keymap('n', '[q', ':cprev<cr>', {})


-- Move lines in visual mode
vim.api.nvim_set_keymap('x', 'K', ':move -2<cr>gv', {noremap = true, silent = true})
vim.api.nvim_set_keymap('x', 'J', ':move +2<cr>gv', {noremap = true, silent = true})


-- LSP Keymaps
vim.api.nvim_set_keymap('n', 'gd', ':lua vim.lsp.buf.definition()<cr>', {})
vim.api.nvim_set_keymap('n', 'gD', ':lua vim.lsp.buf.declaration()<cr>', {})
vim.api.nvim_set_keymap('n', 'gi', ':lua vim.lsp.buf.implementation()<cr>', {})
vim.api.nvim_set_keymap('n', 'gw', ':lua vim.lsp.buf.document_symbol()<cr>', {})
vim.api.nvim_set_keymap('n', 'gw', ':lua vim.lsp.buf.workspace_symbol()<cr>', {})
vim.api.nvim_set_keymap('n', 'gr', ':lua vim.lsp.buf.references()<cr>', {})
vim.api.nvim_set_keymap('n', 'gt', ':lua vim.lsp.buf.type_definition()<cr>', {})
vim.api.nvim_set_keymap('n', 'gh', ':lua vim.lsp.buf.hover()<cr>', {})
vim.api.nvim_set_keymap('n', '<leader>k', ':lua vim.lsp.buf.signature_help()<cr>', {})
vim.api.nvim_set_keymap('n', '<leader>ca', ':lua vim.lsp.buf.code_action()<cr>', {})
vim.api.nvim_set_keymap('n', '<leader>cr', ':lua vim.lsp.buf.rename()<cr>', {})

-- Next-prev error/warning
vim.api.nvim_set_keymap('n', ']d', ':lua vim.diagnostic.goto_next()<cr>', {})
vim.api.nvim_set_keymap('n', '[d', ':lua vim.diagnostic.goto_prev()<cr>', {})

-- Telescope mappings
vim.api.nvim_set_keymap('n', '<c-p>',      '<cmd>Telescope find_files<cr>', {})
vim.api.nvim_set_keymap('n', '<leader>ff', '<cmd>Telescope find_files<cr>', {})
vim.api.nvim_set_keymap('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', {})
vim.api.nvim_set_keymap('n', '<leader>fb', '<cmd>Telescope buffers<cr>', {})
vim.api.nvim_set_keymap('n', '<leader>fh', '<cmd>Telescope help_tags<cr>', {})
vim.api.nvim_set_keymap('n', '<leader>fd', '<cmd>Telescope diagnostics<cr>', {})
vim.api.nvim_set_keymap('n', '<leader>fa', '<cmd>Telescope find_files hidden=true<cr>', {})



