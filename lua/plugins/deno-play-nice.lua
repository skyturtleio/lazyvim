local nvim_lsp = require("lspconfig")

-- the example to set up these root_dirs for deno_ls and vtsls is from
-- https://github.com/LazyVim/LazyVim/issues/4319#issuecomment-2371981600
return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        denols = {
          filetypes = { "typescript", "typescriptreact" },
          root_dir = function(...)
            return nvim_lsp.util.root_pattern("deno.jsonc", "deno.json")(...)
          end,
        },
        vtsls = {
          -- root_dir = nvim_lsp.util.root_pattern("package.json"),

          -- Found this function below on Reddit
          --https://www.reddit.com/r/neovim/comments/1h4f8wb/comment/lzy4321/?utm_source=share&utm_medium=web3x&utm_name=web3xcss&utm_term=1&utm_content=share_button
          root_dir = function()
            return not vim.fs.root(0, { "deno.json", "deno.jsonc" })
              and vim.fs.root(0, {
                "tsconfig.json",
                "jsconfig.json",
                "package.json",
                ".git",
              })
          end,
        },
      },
    },
  },
}
