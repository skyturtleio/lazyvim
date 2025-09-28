return {
  {
    "folke/tokyonight.nvim",
    opts = {
      on_highlights = function(hl, c)
        hl.CmpGhostText = { fg = c.fg_dark, italic = true } -- Make completion menu text brighter
        hl.Comment = { fg = c.comment, italic = false } -- Don't italicize comments
      end,
    },
  },
  {
    -- Needs to be setup here rather than in `opts`
    -- See here for why: https://www.lazyvim.org/plugins/colorscheme
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight-night",
    },
  },
}
