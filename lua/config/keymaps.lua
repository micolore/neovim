
local map = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }


-- map Esc to kk
map('i', 'kk', '<Esc>', {noremap = true})

-- fast saving with <leader> and s
map('n', '<leader>s', ':w<CR>', default_opts)
map('i', '<leader>s', '<C-c>:w<CR>', default_opts)

-- open terminal
map('n', 'ts', ':te<CR>', { noremap = true })
