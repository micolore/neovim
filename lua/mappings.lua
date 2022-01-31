-- mappings.lua

local map = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }

local g = vim.g         	  -- global variables
g.mapleader = ','             -- change leader to a comma

map("n", "<Leader>u", ":PackerSync<CR>",default_opts)

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
map('n', '<leader>s', ':w<CR>', default_opts)
map('i', '<leader>s', '<C-c>:w<CR>', default_opts)

-- terminal
map('n', '<leader>t',':ToggleTerm size=60 direction=horizontal <CR>',default_opts)
-- Save
map('n','S','<esc>:w<CR>',{ noremap = true})

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
--vim.api.nvim_set_keymap('n', 'fh',"<cmd>lua require('telescope.builtin').help_tags()<CR>",{ noremap = true, silent = true })

-- Mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
local opts = { noremap=true, silent=true }
vim.api.nvim_set_keymap('n', '<space>e', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
vim.api.nvim_set_keymap('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
vim.api.nvim_set_keymap('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)
vim.api.nvim_set_keymap('n', '<space>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', opts)

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  -- Enable completion triggered by <c-x><c-o>
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  -- See `:help vim.lsp.*` for documentation on any of the below functions
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
end

-- Use a loop to conveniently call 'setup' on multiple servers and
-- map buffer local keybindings when the language server attaches
local servers = { 'gopls' }
for _, lsp in pairs(servers) do
  require('lspconfig')[lsp].setup {
    on_attach = on_attach,
    flags = {
      -- This will be the default in neovim 0.7+
      debounce_text_changes = 150,
    }
  }
end

local pluginKeys = {}

pluginKeys.maplsp = function(mapbuf)

end

-- nvim-cmp 自动补全
pluginKeys.cmp = function(cmp)
  return {
    -- 上一个
    ['<C-k>'] = cmp.mapping.select_prev_item(),
    -- 下一个
    ['<C-j>'] = cmp.mapping.select_next_item(),
    -- 出现补全
    ['<A-.>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
    -- 取消
    ['<A-,>'] = cmp.mapping({
      i = cmp.mapping.abort(),
      c = cmp.mapping.close(),
    }),
    -- 确认
    -- Accept currently selected item. If none selected, `select` first item.
    -- Set `select` to `false` to only confirm explicitly selected items.
    ['<CR>'] = cmp.mapping.confirm({
      select = true ,
      behavior = cmp.ConfirmBehavior.Replace
    }),
    -- ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
    ['<C-u>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
    ['<C-d>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
  }
end


return pluginKeys



