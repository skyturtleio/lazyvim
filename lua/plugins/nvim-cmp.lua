return {
  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      local cmp = require("cmp")
      opts.mapping = vim.tbl_extend("force", opts.mapping, {
        ["<tab>"] = cmp.config.disable,
        ["<Tab>"] = cmp.config.disable,
        ["<S-Tab>"] = cmp.config.disable,
        ["<CR>"] = cmp.config.disable,
        ["<C-y>"] = cmp.mapping.confirm({ select = true }),
      })
    end,
  },
}
