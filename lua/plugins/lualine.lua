return {
  {
    "nvim-lualine/lualine.nvim",
    opts = function()
      local opts = {
        options = {
          theme = "catppuccin",
        },
        sections = {
          lualine_c = {
            -- LazyVim.lualine.root_dir(),
            -- { "filetype", icon_only = true, separator = "", padding = { left = 1, right = 0 } },
            -- { LazyVim.lualine.pretty_path() },
            { "filename", path = 4 },
          },
          lualine_x = {
            { "filetype", colored = true },
          },
          lualine_y = {
            "encoding",
          },
          lualine_z = {
            { "progress", separator = " ", padding = { left = 1, right = 0 } },
            { "location", padding = { left = 0, right = 1 } },
          },
        },
      }

      return opts
    end,
  },
}
