-- init.lua

-- Load settings first
require('settings')


-- Load keymaps
require('keymaps')

-- Load plugins (this should come before LSP config)
require('plugins')

-- Load LSP configurations after plugins are loaded
-- Ensure plugins are fully loaded before LSP
--   
vim.defer_fn(function()
    require('plugins.null-ls')
    require('plugins.cmp')
    require('lsp.init')

end, 100)

-- lazy git 

local lazygit = require('plugins.lazygit')
vim.keymap.set("n", "<leader>gg", lazygit.toggle, { noremap = true, silent = true })

