local rt = require('rust-tools')

rt.setup({
    server = {
        cmd = {"C:\\Users\\kanwi\\AppData\\Local\\nvim-data\\mason\\bin\\rust-analyzer.cmd"},
        on_attach = function (_, bufnr)
            vim.keymap.set('n', '<C-space>', rt.hover_actions.hover_actions, { buffer = bufnr } )
            vim.keymap.set('n', '<Leader>a', rt.code_action_group.code_action_group , { buffer = bufnr })
        end
    }
})
