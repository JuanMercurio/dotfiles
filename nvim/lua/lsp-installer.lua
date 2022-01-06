------ Lsp installer


local lsp_installer = require("nvim-lsp-installer")

lsp_installer.on_server_ready(function(server)
  local opts = {
        capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
    }
  if server.name == "sumneko_lua" then
    opts = {
      settings = {
      runtime = { version = "LuaJIT", path = vim.split(package.path, ';'), },
        Lua = {
          diagnostics = {
            enable = true,
            globals = { 'vim', 'use' }
          },
          workspace = {
            -- Make the server aware of Neovim runtime files
            library = {[vim.fn.expand('$VIMRUNTIME/lua')] = true, [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true}
          }
        }
      }
    }

  end
  server:setup(opts)
end)


