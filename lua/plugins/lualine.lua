require('lualine').setup {
    options = {
        icons_enabled = true,
        theme = "nightfly"
    },
    sections = {
        lualine_a = {
            {
                'filename',
                path = 1
            }
        },
        lualine_c = {
            require("auto-session-library").current_session_name
        }
    }
}
