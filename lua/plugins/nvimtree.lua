vim.g.loaded_newtr = 1
vim.g.loaded_newtrPlugin = 1

require('nvim-tree').setup({
    sync_root_with_cwd = true,
    respect_buf_cwd = true,
    update_focused_file = {
        enable = true,
        update_root = true
    }
})

vim.keymap.set('n', '<c-n>', ':NvimTreeToggle<CR>')
