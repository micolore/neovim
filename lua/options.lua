-- setting.lua

local opt = vim.opt             -- global/buffer/windows-scoped options
local cmd = vim.cmd     	-- execute Vim commands

opt.encoding = "utf-8" -- Set default encoding to utf-8

opt.cursorcolumn = true
opt.cursorline =true

opt.number = true             -- show line number
opt.relativenumber = true

opt.showmatch = true          -- highlight matching parenthesis
opt.foldmethod = 'marker'     -- enable folding (default 'foldmarker')
opt.splitright = true         -- vertical split to the right
opt.splitbelow = true         -- orizontal split to the bottom
opt.ignorecase = true         -- ignore case letters when search
opt.smartcase = true          -- ignore lowercase for the whole pattern
opt.linebreak = true          -- wrap on word boundary

opt.scrolloff = 4 -- Lines of context
opt.shiftround = true -- Round indent
opt.shiftwidth = 4 -- Size of an indent
opt.sidescrolloff = 8 -- Columns of context
opt.tabstop = 4 -- Number of spaces tabs count for

vim.g.markdown_fenced_languages = { "html", "javascript", "rust","typescript", "css", "scss", "lua", "vim" , "go" }

-- remove whitespace on save
cmd [[au BufWritePre * :%s/\s\+$//e]]

----------------
----colortheme
----------------
-- cmd [[colorscheme rvcs]]
cmd [[colorscheme tokyonight]]

