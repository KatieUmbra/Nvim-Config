local cmp = require("cmp")

require("luasnip.loaders.from_vscode").lazy_load()

cmp.setup({
    mapping = cmp.mapping.preset.insert({
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-o>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({select = true})
    }),
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body)
            vim.fn["vsnip#anonymous"](args.body)
        end
    },
    sources = cmp.config.sources({
        { name = 'nvim_lsp', keyword_length = 3 },
        -- { name = 'luasnip' },
        { name = 'path' },                              -- file paths
        { name = 'nvim_lsp_signature_help'},            -- display function signatures with current parameter emphasized
        { name = 'nvim_lua', keyword_length = 2},       -- complete neovim's Lua runtime API such vim.lsp.*
        { name = 'buffer', keyword_length = 2 },        -- source current buffer
        { name = 'vsnip', keyword_length = 2 },         -- nvim-cmp source for vim-vsnip 
        { name = 'calc'},
    }, {
        { name = 'buffer' }
    }),
    window = {
      completion = cmp.config.window.bordered(),
          documentation = cmp.config.window.bordered(),
      },
      formatting = {
          fields = {'menu', 'abbr', 'kind'},
          format = function(entry, item)
              local menu_icon ={
                  nvim_lsp = 'λ',
                  vsnip = '⋗',
                  buffer = 'Ω',
                  path = '🖫',
              }
              local dup_item = {
                vsnip = 0,
                nvim_lsp = 0,
                nvim_lua = 0,
                buffer = 0,
                luasnip = 0,
                pathpath = 0,
                nvim_lsp_signature_help = 0,
                calc = 0
              }
              item.menu = menu_icon[entry.source.name]
              item.dup = dup_item[entry.source.name]
              return item
          end,
      },
})