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

      lspconfig.pylsp.setup {
        settings = {
          pylsp = {
            plugins = {
              pycodestyle = { enabled = false }, -- example to disable pycodestyle
              pylsp_mypy = { enabled = true }, -- enable mypy plugin if installed
              pylsp_black = { enabled = true }, -- enable black formatting
              pylsp_isort = { enabled = true }, -- enable isort formatting
            },
          },
        },
      }

      lspconfig.rust_analyzer.setup {
        settings = {
          ["rust-analyzer"] = {
            cargo = {
              allFeatures = true,
            },
            checkOnSave = {
              enable = true,  -- enable checking on save
              command = "clippy"  -- specify to run clippy instead of default check
            },
          },
        },
      }

      lspconfig.clangd.setup({
        cmd = { "clangd" }, -- optional, use system clangd
        filetypes = { "c", "cpp", "objc", "objcpp" },
        root_dir = lspconfig.util.root_pattern("compile_commands.json", "compile_flags.txt", ".git"),
        -- on_attach = function(client, bufnr) ... end, -- optional
        -- capabilities = capabilities -- optional, for cmp, etc.
      })
      -- You can add more LSP servers similarly
    end,
  },
}

