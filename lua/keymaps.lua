vim.g.mapleader = ' '
vim.g.maplocalleader = '\\'
vim.keymap.set('n', '<leader>w', '<CMD>w<CR>')
vim.keymap.set('n', '<leader>x', '<CMD>bdelete<CR>')
vim.keymap.set('n', '<leader>n', '<CMD>new<CR>')
vim.keymap.set('n', '<leader>c', '<C-w>c')
vim.keymap.set('n', '<C-c><C-c>', '<CMD>qa<CR>')
vim.keymap.set('n', '<leader>lh', vim.lsp.buf.hover)
vim.keymap.set('n', '<leader>lk', vim.lsp.buf.code_action)
vim.keymap.set('n', '<leader>ln', vim.lsp.buf.rename)
vim.keymap.set('n', '<leader>lm', vim.lsp.buf.format)
vim.keymap.set('n', '<leader>lj', vim.lsp.buf.definition)
vim.keymap.set('n', '<leader>ll', vim.lsp.buf.references)
vim.keymap.set('n', '<leader>dd', vim.diagnostic.open_float)
