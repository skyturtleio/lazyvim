return {
  {
    "mason-org/mason-lspconfig.nvim",
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
        eslint = {
          settings = {
            workingDirectories = { mode = "auto" },
          },
        },
        elixirls = {
          settings = {
            dialyzerEnabled = false,
            fetchDeps = false,
          },
        },
      },
    },
  },
}
