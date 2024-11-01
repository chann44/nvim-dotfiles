require("mason").setup()
require("mason-lspconfig").setup {
  ensure_installed = {
    "tsserver",       -- JavaScript and TypeScript
    "tailwindcss",    -- Tailwind CSS
    "cssls",          -- CSS
    "html",           -- HTML
    "dockerls",       -- Docker
  },
}
