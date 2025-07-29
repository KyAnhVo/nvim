local lspconfig = require("lspconfig")

-- pyright (pyright)

lspconfig.pyright.setup({
    before_init = function(_, config)
        local venv = os.getenv("VIRTUAL_ENV")
        if venv then
            config.settings.python = {
                pythonPath = venv .. "/bin/python"
            }
        end
    end,
})

-- gopls (golang)

lspconfig.gopls.setup({
  settings = {
    gopls = {
      analyses = {
        unusedparams = true,
        shadow = true,
      },
      staticcheck = true,
    },
  },
})

-- clangd (c / cpp)

lspconfig.clangd.setup({})

-- HTML / CSS / JS / TS

lspconfig.html.setup({})
lspconfig.cssls.setup({})
lspconfig.ts_ls.setup({})

-- Lua

require("lspconfig").lua_ls.setup {
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" },  -- prevent "undefined global 'vim'" warning
      },
      workspace = {
        library = vim.api.nvim_get_runtime_file("", true),
        checkThirdParty = false,
      },
    },
  },
}

