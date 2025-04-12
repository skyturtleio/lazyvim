return {
  {
    -- NOTE: I'm using `mini.files`
    "nvim-neo-tree/neo-tree.nvim",
    enabled = false,
  },
  {
    -- NOTE: This is what powers LazyVim's fancy-looking tabs
    -- I didn't like the screen real estate it took up
    { "akinsho/bufferline.nvim", enabled = false },
  },
  {
    -- NOTE: I didn't like the floating command line popup menu
    "folke/noice.nvim",
    enabled = false,
  },
  {
    -- NOTE: I don't like the opening dashboard
    "folke/snacks.nvim",
    opts = {
      dashboard = { enabled = false },
    },
  },
}
