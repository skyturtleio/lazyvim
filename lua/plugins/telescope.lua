return {
  {
    "nvim-telescope/telescope.nvim",
    opts = {
      pickers = {
        find_files = {
          theme = "ivy",
        },
        git_files = {
          theme = "ivy",
        },
        old_files = {
          theme = "ivy",
        },
      },
    },
    keys = {
      { "<leader>ff", LazyVim.pick("files", { root = false }), desc = "Find Files (Rood dir)" },
      { "<leader>fF", LazyVim.pick("files"), desc = "Find Files (cwd)" },
    },
  },
}
