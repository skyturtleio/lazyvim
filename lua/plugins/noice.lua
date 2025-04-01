-- I thought I wanted to original, classic command line, but I guess I'm
-- starting to get used to the popup version.
if true then
  return {}
end -- this disables this file for now

return {
  "folke/noice.nvim",
  event = "VeryLazy",
  opts = {
    cmdline = {
      view = "cmdline", -- view for rendering the cmdline. Default: `cmdline_popup`, change to `cmdline` to get a classic cmdline at the bottom
    },
  },
}
