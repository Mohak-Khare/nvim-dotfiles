local lsp = require('lsp-zero').preset({})
lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)

local capabilities = require("cmp_nvim_lsp").default_capabilities()
require('lspconfig')['lua_ls'].setup{
    lsp.nvim_lua_ls(),
    capabilities = capabilities,
    settings = {
        Lua = {
            diagnostics = { globals = {'vim', 'require'} },
        }
    }
}
require('lspconfig')['pylsp'].setup{
    capabilities = capabilities
}
lsp.setup()

local cmp = require("cmp")
require("luasnip.loaders.from_vscode").lazy_load()
cmp.setup({
    mapping = cmp.mapping.preset.insert({
        ['<CR>'] = cmp.mapping.confirm({ select = true}),
    }),
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body)
        end,
    },
    sources = cmp.config.sources({
        { name = 'nvim_lsp'},
        { name = 'luasnip'},
    }, {
        {name = 'buffer'},
    }),
})