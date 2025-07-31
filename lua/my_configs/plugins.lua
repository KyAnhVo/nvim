-- bootstrap lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    -- list plugins here
    { "BurntSushi/ripgrep" }, -- required on system, not a plugin
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make", cond = vim.fn.executable("make") == 1 },
    { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
    { 
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            require("lualine").setup({
                options = {
                    theme = "auto",
                    section_seperators = "",
                },
                sections = {
                    lualine_a = { "mode" },
                    lualine_b = { "branch" },
                    lualine_c = {
                        { "filename", path = 1 },
                        {
                            "diagnostics",
                            sources = { "nvim_lsp" },
                        },
                    },
                    lualine_x = {
                        {
                            function()
                                local clients = vim.lsp.get_active_clients({ bufnr = 0 })
                                if #cliens == 0 then return "No LSP" end
                                return table.concat(
                                    vim.tbl_map(function(c) return c.name end, clients),
                                    ", "
                                )
                            end,
                            icon = "",
                        },
                        "encoding",
                        "fileformat",
                        "filetype",
                    },
                    lualine_y = { "progress" },
                    lualine_z = { "location" },
                },
            })
        end
    },
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
    {
        'akinsho/bufferline.nvim',
        version = "*",
        dependencies = 'nvim-tree/nvim-web-devicons',
        config = function()
            require("bufferline").setup{}
        end
    },
})
