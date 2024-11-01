-- lua/plugins/lazygit.lua
-- lua/plugins/lazygit.lua
local Terminal = require('toggleterm.terminal').Terminal

-- Define lazygit terminal instance
local lazygit = Terminal:new({
  cmd = "lazygit",
  hidden = true,
  direction = "float",
  float_opts = {
    border = "curved",
    width = 100,
    height = 30,
  },
})

local M = {}

-- Toggle function
function M.toggle()
  lazygit:toggle()
end

return M

