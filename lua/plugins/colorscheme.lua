return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    opts = {
      -- flavour = "macchiato",
      flavour = "mocha",
    },
  },
  {
    -- Needs to be setup here rather than in `opts`
    -- See here for why: https://www.lazyvim.org/plugins/colorscheme
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
