require("autoclose").setup({
    keys = {
        ["$"] = {
            escape = true,
            close = true,
            pair = "$$"
        },
        ["<"] = {
            escape = true,
            close = true,
            pair = "<>"
        }
    }
})

