-- hop.lua

local map = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }

require'hop'.setup()

map("n", "hw", "<cmd>lua require'hop'.hint_words()<cr>",default_opts)
map("n", "hl", "<cmd>lua require'hop'.hint_lines()<cr>",default_opts)
map("v", "hw", "<cmd>lua require'hop'.hint_words()<cr>",default_opts)
map("v", "hl", "<cmd>lua require'hop'.hint_lines()<cr>",default_opts)
