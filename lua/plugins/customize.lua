return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "bash",
        "elixir",
        "eex",
        "heex",
        "html",
        "javascript",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        "python",
        "query",
        "regex",
        "svelte",
        "tsx",
        "typescript",
        "vim",
        "yaml",
      },
    },
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "stylua",
      },
    },
  },
  {
    "garymjr/nvim-snippets",
    opts = {
      friendly_snippets = false,
    },
  },
  {
    "echasnovski/mini.hipatterns",
    opts = {
      tailwind = {
        enabled = false,
      },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, _)
      vim.filetype.add({
        filename = {
          [".env.development"] = "sh",
          [".env.production"] = "sh",
          [".env.example"] = "sh",
          [".env.local"] = "sh",
        },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = false },
      servers = {
        -- these servers will automatically be installed
        elixirls = {},
      },
    },
  },
  {
    "saghen/blink.cmp",
    opts = {
      completion = {
        ghost_text = {
          enabled = false,
        },
      },
    },
  },
}
