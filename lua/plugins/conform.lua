return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        elixir = { "mix" },
        heex = { "mix" },
        go = { "gofmt" },
        ocaml = { "ocamlformat" },
        -- Conform will run the first available formatter
        javascript = { "prettier", stop_after_first = true },
        javascriptreact = { "prettier", stop_after_first = true },
        typescript = { "prettier", stop_after_first = true },
        typescriptreact = { "prettier", stop_after_first = true },
        svelte = { "prettier", stop_after_first = true },
        html = { "prettier", stop_after_first = true },
      },
    },
  },
}
