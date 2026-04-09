-- telescope

require("telescope").setup({
  defaults = {
    layout_strategy = "horizontal",
    sorting_strategy = "ascending",
    layout_config = { prompt_position = "top" },
  },
})
require("telescope").load_extension("fzf")

-- nvim-notify

require("notify").setup({
    background_colour = "#000000",
})
