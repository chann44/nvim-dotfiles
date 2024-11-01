-- lua/plugins/nvim-tree.lua
require('nvim-tree').setup {
  view = {
    width = 30,
    side = 'left',
  },
  renderer = {
    icons = {
      show = {
        file = true,
        folder = true,
        folder_arrow = true,
      },
    },
  },
  update_focused_file = {
    enable = true,
    update_cwd = true,
  },
}

