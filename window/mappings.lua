-- mappings.lua
local opt = vim.opt             -- global/buffer/windows-scoped options
local map = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }

local g = vim.g         	  -- global variables
g.mapleader = ' '             -- change leader to a comma

opt.cursorcolumn = true
opt.cursorline =true

opt.number = true             -- show line number
opt.relativenumber = true

map("n", "<Leader>u", ":PackerSync<CR>",default_opts)

--search
--map('n', 'jk', ':HopChar2<CR>', default_opts)
--nmap <silent>  <cmd>HopLine<cr>

-- quick new  file
map("n", "<Leader>n", "<cmd>enew<CR>",default_opts)
-- select all of file
map("n", "<Leader>aa", "ggVG<c-$>",default_opts)
-- visual model copy line
map("v", "y", "ygv<Esc>",default_opts)
-- mormal model copy to end  of line
map("n", "Y", "y$",default_opts)

-- map Esc to kk
map('i', 'kk', '<Esc>', {noremap = true})

-- fast saving with <leader> and s
map('n', 'S', ':w<CR>', default_opts)

-- terminal
map('n', '<leader>t',':ToggleTerm size=60 direction=horizontal <CR>',default_opts)

-- Save
map('n','<leader>s','<esc>:w<CR>',{ noremap = true})

-- Quit
map('n','Q',':q<CR>',{ noremap = true})

-- Window Move
map('n','<leader>h','<C-W>h',{ noremap = true})
map('n','<leader>l','<C-W>l',{ noremap = true})
map('n','<leader>k','<C-W>k',{ noremap = true})
map('n','<leader>j','<C-W>j',{ noremap = true})

-- Buffer Move
map('n','bu',':enew<CR>',{ noremap = true})
map('n','bn',':bnext<CR>',{ noremap = true})
map('n','bb',':bprevious<CR>',{ noremap = true})
map('n','bd',':bdelete<CR>',{ noremap = true})

-- Move word、line
map('i','<C-e>','<END>',{ noremap = true})
map('i','<C-a>','<HOME>',{ noremap = true})

-- file exploree
map('n','<leader>r',':NvimTreeToggle<CR>',{noremap = true})

-- window
vim.api.nvim_set_keymap('n', '<leader>wh', ':FocusSplitLeft<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<leader>wd', ':FocusSplitDown<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<leader>wu', ':FocusSplitUp<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<leader>wl', ':FocusSplitRight<CR>', { silent = true })

-- search
-- fzf
-- vim.api.nvim_set_keymap('n', 'ff',"<cmd>lua require('fzf-lua').files()<CR>",{ noremap = true, silent = true })

-- Telescope
vim.api.nvim_set_keymap('n', 'ff',"<cmd>lua require('telescope.builtin').find_files() prompt_prefix=🔍<CR>",{ noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'fg',"<cmd>lua require('telescope.builtin').live_grep()<CR>",{ noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'fb',"<cmd>lua require('telescope.builtin').buffers()<CR>",{ noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'fl',"<cmd>lua require('telescope.builtin').oldfiles()<CR>",{ noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'fh',"<cmd>lua require('telescope.builtin').help_tags()<CR>",{ noremap = true, silent = true })

-- Mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
local opts = { noremap=true, silent=true }
--vim.api.nvim_set_keymap('n', '<space>e', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
--vim.api.nvim_set_keymap('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
--vim.api.nvim_set_keymap('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)
vim.api.nvim_set_keymap('n', '<space>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', opts)

local pluginKeys = {}

pluginKeys.maplsp = function(mapbuf)

end

return pluginKeys
