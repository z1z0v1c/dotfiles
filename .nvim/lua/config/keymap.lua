-- Remap <Esc> key
vim.keymap.set('i', '<C-j>', '<Esc>', { noremap = true, silent = true })
vim.keymap.set('v', '<C-j>', '<Esc>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-j>', '<cmd>nohlsearch<CR>')

-- Use CTRL+<hjkl> to switch between windows
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

