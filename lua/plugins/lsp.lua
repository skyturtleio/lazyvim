return {
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      automatic_installation = false,
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = false },
      servers = {
        -- these servers will automatically be installed
      },
    },
  },
}
