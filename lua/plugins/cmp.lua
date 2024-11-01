-- lua/plugins/cmp.lua

local cmp = require'cmp'
local lspkind = require'lspkind'

cmp.setup({
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body) -- For luasnip users.
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item.
  }),
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
  }),
  formatting = {
    format = lspkind.cmp_format({ mode = 'symbol_text', maxwidth = 50 })
  }
})

-- Command to enable completion in `:` mode
cmp.setup.cmdline(':', {
  sources = cmp.config.sources({
    { name = 'cmdline' }
  })
})

