-- disable - no longer necessary with the new LazyVim update
-- stylua: ignore
if true then return {} end

return {
  -- This is a module to deal with Mason.nvim's breaking change.
  -- LazyVim does not have a fix yet for the [issue](https://github.com/LazyVim/LazyVim/issues/6039)
  -- source for fix below: https://github.com/LazyVim/LazyVim/issues/6039#issuecomment-2856227817
  { "mason-org/mason.nvim", version = "^1.0.0" },
  { "mason-org/mason-lspconfig.nvim", version = "^1.0.0" },
}
