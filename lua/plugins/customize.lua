return {
  {
    "mason-org/mason.nvim",
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
      extended_filetypes = {
        typescript = { "javascript" },
        typescriptreact = { "javascript", "typescript" },
        javascriptreact = { "javascript" },
      },
    },
  },
  {
    "nvim-mini/mini.hipatterns",
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
          [".env.deploy"] = "sh",
        },
      })
    end,
  },
}
