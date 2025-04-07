return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = false },
      servers = {
        -- these servers will automatically be installed
        astro = {},
        elixirls = {},
        gopls = {},
        ocamllsp = {},
      },
    },
  },
}
