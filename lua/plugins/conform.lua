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
        json = { "deno_fmt", "prettier", stop_after_first = true },
        jsonc = { "deno_fmt", "prettier", stop_after_first = true },
        javascript = { "deno_fmt", "prettier", stop_after_first = true },
        javascriptreact = { "deno_fmt", "prettier", stop_after_first = true },
        typescript = { "deno_fmt", "prettier", stop_after_first = true },
        typescriptreact = { "deno_fmt", "prettier", stop_after_first = true },
        svelte = { "deno_fmt", "prettier", stop_after_first = true },
        html = { "prettier", stop_after_first = true },
      },
    },
  },
}
