local lspconfig = require("lspconfig")

-- pyright

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

-- gopls

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
