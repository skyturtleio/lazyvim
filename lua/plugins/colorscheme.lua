return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      -- flavour = "macchiato",
      flavour = "mocha",
      -- NOTE: Color overrides for super dark mocha theme
      -- https://github.com/catppuccin/nvim/discussions/323#discussion-4496786
      -- color_overrides = {
      --   mocha = {
      --     base = "#000000",
      --     mantle = "#000000",
      --     crust = "#000000",
      --   },
      -- },
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
