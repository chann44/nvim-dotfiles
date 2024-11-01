-- lua/plugins/telescope.lua

local telescope = require('telescope')

telescope.setup {
  defaults = {
    file_ignore_patterns = { "node_modules" },
  },
}

-- Keybindings
local map = vim.api.nvim_set_keymap
map('n', '<leader>ff', "<cmd>lua require('telescope.builtin').find_files()<CR>", { noremap = true, silent = true })
map('n', '<leader>fg', "<cmd>lua require('telescope.builtin').live_grep()<CR>", { noremap = true, silent = true })

