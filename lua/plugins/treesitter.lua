require('nvim-treesitter.configs').setup {
    ensure_installed = {"c", "lua", "rust", "vim", "java", "kotlin", "cpp", "javascript", "typescript", "html", "css", "toml"},

    sync_install = true,
    auto_install = true,
    highlighting = {
        enable = true
    },
    rainbow = {
    enable = true,
    -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
    extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
    max_file_lines = nil, -- Do not enable for files with more than n lines, int
    -- colors = {}, -- table of hex strings
    -- termcolors = {} -- table of colour name strings
  },
}
