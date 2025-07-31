vim.g.mapleader = " "
local keymap = vim.keymap.set
keymap("n", "<leader>pv", vim.cmd.Ex)

local builtin = require("telescope.builtin")

-- fuzzy finders

vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})

-- tab changer 

vim.keymap.set({"n", "i"}, "<A-l>", ":BufferLineCycleNext<CR>", { noremap = true, silent = true})
vim.keymap.set({"n", "i"}, "<A-h>", ":BufferLineCyclePrev<CR>", { noremap = true, silent = true})

