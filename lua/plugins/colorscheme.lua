return {
  {
    "folke/tokyonight.nvim",
    opts = {
      on_highlights = function(hl, c)
        -- Make completion menu text much brighter
        hl.CmpItemMenu = { fg = c.fg }
        hl.CmpItemMenuDefault = { fg = c.fg }
        hl.CmpGhostText = { fg = c.fg_dark, italic = true }
        hl.Comment = { fg = c.fg_gutter, italic = true }
      end,
    },
  },
  {
    -- Needs to be setup here rather than in `opts`
    -- See here for why: https://www.lazyvim.org/plugins/colorscheme
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "catppuccin",
      colorscheme = "tokyonight-night",
    },
  },
}
