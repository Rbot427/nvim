-- plugins/lsp.lua
return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      -- Basic LSP server setup (e.g., for Lua)
      local lspconfig = require("lspconfig")

      -- Example: setup Lua LSP (sumneko_lua or lua_ls)
      lspconfig.lua_ls.setup {
        settings = {
          Lua = {
            diagnostics = {
              globals = { "vim" },
            },
          },
        },
      }

      -- You can add more LSP servers similarly
    end,
  },
}

