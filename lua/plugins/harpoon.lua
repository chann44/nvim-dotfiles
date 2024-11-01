-- lua/plugins/harpoon.lua

local harpoon = require("harpoon")
local ui = require("harpoon.ui")

harpoon.setup {}

-- Keybindings
local map = vim.api.nvim_set_keymap
map('n', '<leader>ha', "<cmd>lua require('harpoon.mark').add_file()<CR>", { noremap = true, silent = true })
map('n', '<leader>hm', "<cmd>lua require('harpoon.ui').toggle_quick_menu()<CR>", { noremap = true, silent = true })
map('n', '<leader>hn', "<cmd>lua require('harpoon.ui').nav_next()<CR>", { noremap = true, silent = true })

