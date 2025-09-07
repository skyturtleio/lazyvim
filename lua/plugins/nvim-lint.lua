return {
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters_by_ft = {
        javascript = { "eslint_d" },
        javascriptreact = { "eslint_d" },
        typescript = { "eslint_d" },
        typescriptreact = { "eslint_d" },
        svelte = { "eslint_d" },
      },
      linters = {
        eslint_d = {
          -- disable `eslint_d` if there is not an `eslint.config.js` file in the project
          -- directory. It stops the annoying error "Could not parse linter due to...".
          -- I followed the example from LazyVim's docs for `nvim-lint`
          -- https://www.lazyvim.org/plugins/linting#nvim-lint
          condition = function(ctx)
            return vim.fs.find({
              "eslint.config.js",
              "eslint.config.mjs",
              "eslint.config.cjs",
              ".eslintrc.js",
              ".eslintrc.cjs",
              ".eslintrc.json",
              ".eslintrc.yml",
              ".eslintrc.yaml",
            }, { path = ctx.filename, upward = true })[1]
          end,
        },
      },
    },
  },
}
