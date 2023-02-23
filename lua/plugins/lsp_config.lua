require('mason').setup()
require('mason-lspconfig').setup ({
    ensure_installed = { "lua_ls", "jdtls", "jsonls", "html", "gradle_ls", "cssls",
    "clangd", "angularls", "quick_lint_js", "kotlin_language_server", "marksman",
    "sqlls", "rust_analyzer", "tsserver", "lemminx", "codellb" }
})

local on_attach = function(_,_)
    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
    vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
    
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
    vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, {})
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
end

local capabilities = require("cmp_nvim_lsp").default_capabilities()

require("lspconfig").lua_ls.setup {
    on_attach = on_attach,
    capabilities = capabilities
}
require("lspconfig").jdtls.setup {
    on_attach = on_attach,
    capabilities = capabilities
}
require("lspconfig").jsonls.setup {
    on_attach = on_attach,
    capabilities = capabilities
}
require("lspconfig").html.setup {
    on_attach = on_attach,
    capabilities = capabilities
}
require("lspconfig").gradle_ls.setup {
    on_attach = on_attach,
    capabilities = capabilities
}
require("lspconfig").cssls.setup {
    on_attach = on_attach,
    capabilities = capabilities
}
require("lspconfig").clangd.setup {
    on_attach = on_attach,
    capabilities = capabilities
}
require("lspconfig").angularls.setup {
    on_attach = on_attach,
    capabilities = capabilities
}
require("lspconfig").quick_lint_js.setup {
    on_attach = on_attach,
    capabilities = capabilities
}
require("lspconfig").kotlin_language_server.setup {
    on_attach = on_attach,
    capabilities = capabilities
}
require("lspconfig").marksman.setup {
    on_attach = on_attach,
    capabilities = capabilities
}
require("lspconfig").sqlls.setup {
    on_attach = on_attach,
    capabilities = capabilities
}
require("lspconfig").rust_analyzer.setup {
    on_attach = on_attach,
    capabilities = capabilities
}
require("lspconfig").tsserver.setup {
    on_attach = on_attach,
    capabilities = capabilities
}
require("lspconfig").lemminx.setup {
    on_attach = on_attach,
    capabilities = capabilities
}

