vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()

  -- clolortheme
  use 'shaeinst/roshnivim-cs'
  use 'wbthomason/packer.nvim'

  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icon
    },
    config = function() require'nvim-tree'.setup {} end
    }

    -- nvim-cmp
  use 'hrsh7th/cmp-nvim-lsp' -- { name = nvim_lsp }
  use 'hrsh7th/cmp-buffer'   -- { name = 'buffer' },
  use 'hrsh7th/cmp-path'     -- { name = 'path' }
  use 'hrsh7th/cmp-cmdline'  -- { name = 'cmdline' }
  use 'hrsh7th/nvim-cmp'

  -- vsnip
  use 'hrsh7th/cmp-vsnip'    -- { name = 'vsnip' }
  use 'hrsh7th/vim-vsnip'
  use 'rafamadriz/friendly-snippets'

  -- lsp
  use 'neovim/nvim-lspconfig'
  use 'williamboman/nvim-lsp-installer'

  -- lspkind
  use 'onsails/lspkind-nvim'

  --line
  use 'nvim-lualine/lualine.nvim'

  -- file explorer
  use 'kyazdani42/nvim-tree.lua'

  -- search
  -- use 'ibhagwan/fzf-lua'
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-treesitter/nvim-treesitter'
  use 'nvim-lua/plenary.nvim'

  -- buffer
  use 'akinsho/bufferline.nvim'

  -- git
  use 'lewis6991/gitsigns.nvim'

  -- terminal
  use 'akinsho/toggleterm.nvim'
end)
