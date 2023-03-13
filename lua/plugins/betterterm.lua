local betterTerm = require('betterTerm')

vim.keymap.set({"n", "t"}, "<leader>t", betterTerm.open, { desc = "Open Terminal" })

betterTerm.setup {
    prefix = "Term_",
    startInserted = false,
    position = "bot",
    size = 25
}
