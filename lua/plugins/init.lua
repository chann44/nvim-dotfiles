-- lua/plugins/init.lua

local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- LSP and Mason
  use {
    'neovim/nvim-lspconfig',
    requires = {
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',
    }
  }

  -- Autocompletion
  use {
    'hrsh7th/nvim-cmp',               -- Autocompletion plugin
    requires = {
      'hrsh7th/cmp-nvim-lsp',         -- LSP source for nvim-cmp
      'L3MON4D3/LuaSnip',             -- Snippets plugin
      'saadparwaiz1/cmp_luasnip',     -- Snippet completions
      'onsails/lspkind-nvim'          -- Icons for autocompletion
    }
  }

  use 'jose-elias-alvarez/null-ls.nvim'

  -- Tree-sitter for syntax highlighting
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    config = function()
      require('plugins.treesitter')
    end
  }

  -- Additional Plugins
  use {
    'nvim-telescope/telescope.nvim',
    requires = 'nvim-lua/plenary.nvim',
    config = function()
      require('plugins.telescope')
    end
  }

  use {
    'nvim-tree/nvim-tree.lua',
    config = function()
      require('plugins.nvim-tree')
    end
  }

    use {
  'akinsho/toggleterm.nvim',  -- Terminal plugin to manage floating terminals
  tag = 'v2.*',
  config = function()
    require("toggleterm").setup({
      direction = "float",  -- Set floating terminal as default
      float_opts = {
        border = "curved",  -- Set the border style to improve aesthetics
        width = 100,
        height = 30,
      },
    })
  end
}
    
    use {
    'tris203/precognition.nvim',
    config = function()
      require('precognition').setup({
        -- Configuration options for precognition.nvim
        -- Adjust these options based on the plugin's documentation
        enable = true,
        predictive_mode = true,
        max_predictions = 3,
        -- Add any other specific settings
      })
    end
  }


  if packer_bootstrap then
    require('packer').sync()
  end
end)

