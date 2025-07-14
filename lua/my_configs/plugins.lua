-- bootstrap lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    -- list plugins here
    { "BurntSushi/ripgrep" }, -- required on system, not a plugin
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make", cond = vim.fn.executable("make") == 1 },
    { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
    { "nvim-lualine/lualine.nvim" },
    { "nvim-telescope/telescope.nvim", dependencies = { "nvim-lua/plenary.nvim" } },
    { "neovim/nvim-lspconfig" },
    {
        "hrsh7th/nvim-cmp",                -- Completion engine
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",          -- LSP source
            "hrsh7th/cmp-buffer",            -- Buffer words
            "hrsh7th/cmp-path",              -- Filesystem paths
            "hrsh7th/cmp-cmdline",           -- Command-line completion
            "L3MON4D3/LuaSnip",              -- Snippet engine
            "saadparwaiz1/cmp_luasnip",      -- Snippet source for cmp
        },
    },
    {
        "akinsho/toggleterm.nvim",
        version = "*",
        config = true,
    },
    {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        config = true,
    },
})
