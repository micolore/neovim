local servers = {
  sumneko_lua = require "lsp.lua", -- /lua/lsp/lua.lua
}

local lsp_installer = require "nvim-lsp-installer"

require'lspconfig'.gopls.setup{}
require'lspconfig'.rust_analyzer.setup{}

-- Loop through the servers listed above.
for _, server_name in pairs(servers) do
    local server_available, server = lsp_installer.get_server(server_name)
    if server_available then
        server:on_ready(function ()
            local opts = {}
            server:setup(opts)
        end)
        if not server:is_installed() then
            server:install()
        end
    end
end

lsp_installer.on_server_ready(function(server)
  local opts = servers[server.name]
  if opts then
    opts.on_attach = function(_, bufnr)
      local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
      require('mappings').maplsp(buf_set_keymap)
    end
    opts.flags = {
      debounce_text_changes = 150,
    }
    server:setup(opts)
  end
end)
