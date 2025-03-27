return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    enabled = false,
  },
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
        svelte = {},
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
  {
    -- This is what powers LazyVim's fancy-looking tabs
    -- I didn't like the screen real estate it took up
    { "akinsho/bufferline.nvim", enabled = false },
  },
  {},
  {
    {
      -- Turn off `<CR>` (the Enter or Return key) from accepting suggestions
      -- <CR> will still work if you actually select something from the suggestions list
      -- using ctrl+n or ctrl+p, but you actually have to start moving through the list
      -- first. Otherwise, hitting Enter will just put in a newline.
      --
      -- Figured this out with the sources below
      -- [Safeley select entries with <CR>](https://github.com/hrsh7th/nvim-cmp/wiki/Example-mappings#safely-select-entries-with-cr)
      -- [Supertab recipe](https://www.lazyvim.org/configuration/recipes#supertab)
      -- Reddit post: https://www.reddit.com/r/neovim/comments/1bc6bmx/comment/l9ectbw/?utm_source=share&utm_medium=web3x&utm_name=web3xcss&utm_term=1&utm_content=share_button
      "hrsh7th/nvim-cmp",
      opts = function(_, opts)
        local cmp = require("cmp")

        cmp.setup({
          experimental = {
            ghost_text = false,
          },
        })

        opts.mapping = vim.tbl_extend("force", opts.mapping, {
          ["<CR>"] = cmp.mapping({
            i = function(fallback)
              if cmp.visible() and cmp.get_active_entry() then
                cmp.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = false })
              else
                fallback()
              end
            end,
            s = cmp.mapping.confirm({ select = true }),
            c = cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = true }),
          }),
        })
      end,
    },
  },
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        elixir = { "mix" },
        -- Conform will run the first available formatter
        javascript = { "prettierd", "prettier", stop_after_first = true },
        javascriptreact = { "prettierd", "prettier", stop_after_first = true },
        typescript = { "prettierd", "prettier", stop_after_first = true },
        typescriptreact = { "prettierd", "prettier", stop_after_first = true },
        svelte = { "prettierd", "prettier", stop_after_first = true },
        html = { "prettierd", "prettier", stop_after_first = true },
      },
    },
  },
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters_by_ft = {
        javascript = { "eslint_d" },
        javascriptreact = { "eslint_d" },
        typescript = { "eslint_d" },
        typescriptreact = { "eslint_d" },
      },
      linters = {
        eslint_d = {
          -- disable `eslint_d` if there is not an `eslint.config.js` file in the project
          -- directory. It stops the annoying error "Could not parse linter due to...".
          -- I followed the example from LazyVim's docs for `nvim-lint`
          -- https://www.lazyvim.org/plugins/linting#nvim-lint
          condition = function(ctx)
            return vim.fs.find({ "eslint.config.js" }, { path = ctx.filename, upward = true })[1]
          end,
        },
      },
    },
  },
  {
    "ibhagwan/fzf-lua",
    keys = {
      { "<leader>fF", LazyVim.pick("files"), desc = "Find Files (Root Dir)" },
      { "<leader>ff", LazyVim.pick("files", { root = false }), desc = "Find Files (cwd)" },
    },
  },
}
