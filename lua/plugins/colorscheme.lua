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
    "navarasu/onedark.nvim",
    -- priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      require("onedark").setup({
        style = "dark",
      })
    end,
  },
  {
    -- Needs to be setup here rather than in `opts`
    -- See here for why: https://www.lazyvim.org/plugins/colorscheme
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight-night",
      -- colorscheme = "onedark",
    },
  },
}
