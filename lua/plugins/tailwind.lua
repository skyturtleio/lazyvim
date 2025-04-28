-- NOTE: This is a workaround to get TailwindCSS LSP compltions working in various projects.
-- With the default setup out of the box with LazyVim, it was hit or miss to get tailwind
-- completions. With this `root_pattern`, I can just `touch .tailwindroot` in any
-- project where I'd like tailwind completion
local nvim_lsp = require("lspconfig")

return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        tailwindcss = {
          root_dir = nvim_lsp.util.root_pattern(".tailwindroot"),
        },
      },
    },
  },
}
