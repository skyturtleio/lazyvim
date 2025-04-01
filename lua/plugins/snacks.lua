return {
  {
    -- 🍿 A collection of QoL plugins for Neovim
    -- https://github.com/folke/snacks.nvim
    "folke/snacks.nvim",
    opts = {
      notifier = {
        width = { min = 70, max = 0.4 },
      },
      styles = {
        notification = {
          wo = {
            wrap = true,
          },
        },
      },
    },
  },
}
