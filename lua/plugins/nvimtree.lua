vim.g.loaded_newtr = 1
vim.g.loaded_newtrPlugin = 1

require('nvim-tree').setup()

vim.keymap.set('n', '<c-n>', ':NvimTreeToggle<CR>')