-- lua/keymaps.lua

-- Set leader key to space
vim.g.mapleader = " "

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
-- General keybindings
map('n', '<leader>q', ':q<CR>', opts) -- Quit
map('n', '<leader>w', ':w<CR>', opts) -- Save

-- Plugin-specific general keybindings
map('n', '<leader>e', ':NvimTreeToggle<CR>', opts) -- Toggle NvimTree
