vim.opt.number = true

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.wrap = false
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8

vim.opt.clipboard = "unnamedplus"

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.cursorline = true
vim.opt.termguicolors = false
vim.opt.signcolumn = "yes"

vim.opt.updatetime = 300
vim.opt.timeoutlen = 500

vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.swapfile = false

vim.opt.splitbelow = true
vim.opt.splitright = true

-- web langs: 2 tas
vim.api.nvim_create_autocmd("FileType", {
  pattern = { 
    "html", "css", "scss", "javascript", "typescript", 
    "javascriptreact", "typescriptreact", "json", 
    "svelte", "vue", "astro" 
  },
  callback = function()
    vim.opt_local.expandtab = true
    vim.opt_local.tabstop = 2
    vim.opt_local.softtabstop = 2
    vim.opt_local.shiftwidth = 2
  end,
})
