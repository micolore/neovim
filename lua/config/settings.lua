
local opt = vim.opt         	-- global/buffer/windows-scoped options
local cmd = vim.cmd     	-- execute Vim commands
local exec = vim.api.nvim_exec 	-- execute Vimscript
local fn = vim.fn       	-- call Vim functions
local g = vim.g         	-- global variables

opt.number = true             -- show line number
opt.showmatch = true          -- highlight matching parenthesis
opt.foldmethod = 'marker'     -- enable folding (default 'foldmarker')
opt.splitright = true         -- vertical split to the right
opt.splitbelow = true         -- orizontal split to the bottom
opt.ignorecase = true         -- ignore case letters when search
opt.smartcase = true          -- ignore lowercase for the whole pattern
opt.linebreak = true          -- wrap on word boundary

-- remove whitespace on save
cmd [[au BufWritePre * :%s/\s\+$//e]]

----------------
----colortheme
----------------
cmd [[colorscheme rvcs]]

-----------------------------------------------------------
-- Tabs, indent
-----------------------------------------------------------
opt.expandtab = true      -- use spaces instead of tabs
opt.shiftwidth = 4        -- shift 4 spaces when tab
opt.tabstop = 4           -- 1 tab == 4 spaces
opt.smartindent = true    -- autoindent new lines

-- statusline
require('lualine').setup()


-- File Explorer
require'nvim-tree'.setup {
  disable_netrw       = true,
  hijack_netrw        = true,
  open_on_setup       = false,
  ignore_ft_on_setup  = {},
  auto_close          = false,
  open_on_tab         = false,
  hijack_cursor       = false,
  update_cwd          = false,
  update_to_buf_dir   = {
    enable = true,
    auto_open = true,
  },
  diagnostics = {
    enable = false,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    }
  },
  update_focused_file = {
    enable      = false,
    update_cwd  = false,
    ignore_list = {}
  },
  system_open = {
    cmd  = nil,
    args = {}
  },
  filters = {
    dotfiles = false,
    custom = {}
  },
  git = {
    enable = true,
    ignore = true,
    timeout = 500,
  },
  view = {
    width = 30,
    height = 30,
    hide_root_folder = false,
    side = 'left',
    auto_resize = false,
    mappings = {
      custom_only = false,
      list = {}
    },
    number = false,
    relativenumber = false,
    signcolumn = "yes"
  },
  trash = {
    cmd = "trash",
    require_confirm = true
  }
}
require('nvim-tree').setup()
