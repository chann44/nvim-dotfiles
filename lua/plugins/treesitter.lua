-- lua/plugins/treesitter.lua

require('nvim-treesitter.configs').setup {
  ensure_installed = { "lua", "javascript", "python", "html", "css" },
  highlight = { enable = true },
}

-- Keybindings
local map = vim.api.nvim_set_keymap
map('n', '<leader>th', "<cmd>TSHighlightCapturesUnderCursor<CR>", { noremap = true, silent = true })

