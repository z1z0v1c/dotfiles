-- Set globals.
-- Leader must be set before plugins are loaded.
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.g.have_nerd_font = true

-- Set options
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.mouse = 'a'
vim.opt.breakindent = true
vim.opt.undofile = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.signcolumn = 'yes'
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
vim.opt.inccommand = 'split'
vim.opt.scrolloff = 3

-- Sync clipboard between os and nvim
vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus'
end)


-- [[ Keybindings ]]

-- Remap <Esc> key
vim.keymap.set('i', '<C-j>', '<Esc>', { noremap = true, silent = true })
vim.keymap.set('v', '<C-j>', '<Esc>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-j>', '<cmd>nohlsearch<CR>')

-- Use CTRL+<hjkl> to switch between windows
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

