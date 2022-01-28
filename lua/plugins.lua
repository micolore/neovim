vim.cmd [[packadd packer.nvim]]

return require('packer').startup({
    function()
        use 'wbthomason/packer.nvim'
        use {'neoclide/coc.nvim', branch = 'release'}
        use 'hardcoreplayers/dashboard-nvim'
        use 'ryanoasis/vim-devicons'
        use {'liuchengxu/vim-clap', run = ':Clap install-binary'}
    end,
    config = {
        ensure_dependencies = true,
        plugin_package = 'packer',
    }
})


