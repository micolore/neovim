--golang.lua
-- must install ctags

vim.g.tagbar_type_go = {
    ctagstype = 'go',
    kinds = {
        'p:package',
        'i:imports:1',
        'c:constants',
        'v:variables',
        't:types',
        'n:interfaces',
        'w:fields',
        'e:embedded',
        'm:methods',
        'r:constructor',
        'f:functions'
    },
    sro = '.',
    kind2scope = {
        t = 'ctype',
        n = 'ntype',
    },
    scope2kind = {
        ctype = 't',
        ntype = 'n'
    },
    ctagsbin  = 'gotags',
    ctagsargs = '-sort -silent'
}

vim.api.nvim_set_keymap("n", "<F3>", "<cmd>TagbarToggle<cr>" ,{silent = true, noremap = true})

