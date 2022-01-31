-- hop.lua

local map = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }

require'hop'.setup()

map("n", "h", "<cmd>lua require'hop'.hint_words()<cr>",default_opts)
map("n", "l", "<cmd>lua require'hop'.hint_lines()<cr>",default_opts)
map("v", "h", "<cmd>lua require'hop'.hint_words()<cr>",default_opts)
map("v", "l", "<cmd>lua require'hop'.hint_lines()<cr>",default_opts)
