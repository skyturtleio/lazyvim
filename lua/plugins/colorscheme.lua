return {
  {
    "folke/tokyonight.nvim",
    opts = {
      on_highlights = function(hl, c)
        -- Make completion menu text brighter
        hl.CmpGhostText = { fg = c.fg_dark, italic = true }
        -- hl.CmpItemMenu = { fg = c.fg_dark }
        -- hl.CmpItemMenuDefault = { fg = c.fg_dark }
        -- hl.Comment = { fg = c.fg_dark, italic = true }
        -- Make unused/unnecessary code brighter
        -- hl.DiagnosticUnnecessary = { fg = c.fg_gutter }
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
