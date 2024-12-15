-- Leader must be set before plugins are loaded.
vim.g.have_nerd_font = true
vim.g.mapleader = ' '
vim.g.maplocalleader = '\\'

vim.opt.breakindent = true
vim.opt.cursorline = true
vim.opt.ignorecase = true
vim.opt.inccommand = 'split'
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
vim.opt.mouse = 'a'
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.scrolloff = 3
vim.opt.signcolumn = 'yes'
vim.opt.smartcase = true
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.undofile = true

-- Sync clipboard between os and nvim
vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus'
end)

