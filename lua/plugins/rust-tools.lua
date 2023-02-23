local rt = require('rust-tools')

rt.setup({
    server = {
        on_attach = function (_, bufnr)
            vim.keymap.set('n', '<C-space>', rt.actions.hover_actions, {} )
            vim.keymap.set('n', '<Leader>a', rt.code_action_group, {})
        end
    }
})
