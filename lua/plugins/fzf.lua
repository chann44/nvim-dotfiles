-- lua/plugins/fzf.lua

-- Assuming you have fzf installed on your system
require('fzf-lua').setup {}

-- Keybindings
local map = vim.api.nvim_set_keymap
map('n', '<leader>fz', "<cmd>lua require('fzf-lua').files()<CR>", { noremap = true, silent = true })

