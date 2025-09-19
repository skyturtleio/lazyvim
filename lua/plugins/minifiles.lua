return {
  {
    "nvim-mini/mini.files",
    opts = {
      windows = {
        max_number = 1,
        preview = false,
        width_focus = 70,
        -- width_preview = 60,
      },
      mappings = {
        go_in_plus = "<CR>",
      },
      options = {
        -- Whether to use for editing directories
        -- Disabled by default in LazyVim because neo-tree is used for that
        -- I prefer `mini.files` so I'm enabling it
        use_as_default_explorer = true,
      },
    },
    keys = {
      {
        "<leader>fM",
        function()
          require("mini.files").open(vim.api.nvim_buf_get_name(0), true)
        end,
        desc = "Open mini.files (Directory of Current File)",
      },
      {
        "<leader>fm",
        function()
          require("mini.files").open(vim.uv.cwd(), true)
        end,
        desc = "Open mini.files (cwd)",
      },
      { "<leader>e", "<leader>fM", desc = "Open mini.files (Directory of Current File)", remap = true },
      { "<leader>E", "<leader>fm", desc = "Open mini.files (cwd)", remap = true },
    },
  },
}
