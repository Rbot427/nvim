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

      lspconfig.pyright.setup {}

      lspconfig.rust_analyzer.setup({
        settings = {
          ["rust-analyzer"] = {
            cargo = { allFeatures = true },
            checkOnSave = { command = "clippy" },
          },
        },
      })

      lspconfig.clangd.setup {}
      -- You can add more LSP servers similarly
    end,
  },
}

