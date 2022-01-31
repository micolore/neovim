-- plugins.lua

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()

  use 'wbthomason/packer.nvim'

  -- clolortheme
  use 'shaeinst/roshnivim-cs'

  -- use 'folke/tokyonight.nvim'
  use 'norcalli/nvim-colorizer.lua'

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

  -- lspkind
  use 'onsails/lspkind-nvim'

  --line theme
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true },
    require('lualine').setup {
  	options = {
    	icons_enabled = true,
    	theme = 'auto',
    	component_separators = { left = '', right = ''},
    	section_separators = { left = '', right = ''},
    	disabled_filetypes = {},
    	always_divide_middle = true,
  	},
	  sections = {
	    lualine_a = {'mode'},
	    lualine_b = {'branch', 'diff', 'diagnostics'},
	    lualine_c = {'filename'},
	    lualine_x = {'encoding', 'fileformat', 'filetype'},
	    lualine_y = {'progress'},
	    lualine_z = {'location'}
	  },
	  inactive_sections = {
    	lualine_a = {},
	    lualine_b = {},
	    lualine_c = {'filename'},
	    lualine_x = {'location'},
	    lualine_y = {},
	    lualine_z = {}
  	},
  	tabline = {},
  	extensions = {}
	}
  }

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

  --window
  use { "beauwilliams/focus.nvim", config = function() require("focus").setup() end }

  use 'windwp/nvim-autopairs'

end)
