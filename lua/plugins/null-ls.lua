-- lua/plugins/null-ls.lua

local null_ls = require("null-ls")

null_ls.setup({
  sources = {
    null_ls.builtins.formatting.prettier.with({
      filetypes = { "javascript", "typescript", "css", "html", "json", "markdown" },
    }),
    null_ls.builtins.diagnostics.eslint.with({
      filetypes = { "javascript", "typescript", "javascriptreact", "typescriptreact" },
    }),
  },
})

