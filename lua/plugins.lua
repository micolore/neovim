-- plugins.lua

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()

  use 'wbthomason/packer.nvim'

  -- clolortheme
  use 'shaeinst/roshnivim-cs'

  use 'folke/tokyonight.nvim'
  -- use 'norcalli/nvim-colorizer.lua'

  -- dashboard

  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icon
    },
    config = function() require'nvim-tree'.setup {} end
    }
  use 'romgrk/barbar.nvim'

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

  use 'ray-x/go.nvim'

  -- rust
  use 'simrat39/rust-tools.nvim'

  -- lspkind
  use 'onsails/lspkind-nvim'

  --line theme
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  -- file explorer
  use 'kyazdani42/nvim-tree.lua'

  -- search
  -- use 'ibhagwan/fzf-lua'
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-treesitter/nvim-treesitter'
  use 'nvim-lua/plenary.nvim'

  -- buffer
  use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}

  -- terminal
  use {"akinsho/toggleterm.nvim", tag ='*', config = function()
      require("toggleterm").setup()
  end}


  --window
  --use { "beauwilliams/focus.nvim", config = function() require("focus").setup() end }

  use 'windwp/nvim-autopairs'

  use {
  'phaazon/hop.nvim',
  branch = 'v2', -- optional but strongly recommended
  config = function()
    -- you can configure Hop the way you like here; see :h hop-config
    require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
  end
  }

  -- use 'simrat39/symbols-outline.nvim'

  use 'preservim/tagbar'

  -- git
  -- use 'f-person/git-blame.nvim'
  -- use 'lewis6991/gitsigns.nvim'
end)
