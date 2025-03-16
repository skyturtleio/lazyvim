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
    },
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    enabled = false,
  },
  {
    "ibhagwan/fzf-lua",
    keys = {
      { "<leader>fF", LazyVim.pick("files"), desc = "Find Files (Root Dir)" },
      { "<leader>ff", LazyVim.pick("files", { root = false }), desc = "Find Files (cwd)" },
    },
  },
  {
    "echasnovski/mini.files",
    opts = {
      windows = {
        preview = true,
        max_number = 3,
      },
      mappings = {
        go_in_plus = "<CR>",
      },
      options = {
        -- Whether to use for editing directories
        -- Disabled by default in LazyVim because neo-tree is used for that
        -- I prefer `mini.files` so I'm enabling it
        use_as_default_explorer = true,
      },
    },
    keys = {
      {
        "<leader>fM",
        function()
          require("mini.files").open(vim.api.nvim_buf_get_name(0), true)
        end,
        desc = "Open mini.files (Directory of Current File)",
      },
      {
        "<leader>fm",
        function()
          require("mini.files").open(vim.uv.cwd(), true)
        end,
        desc = "Open mini.files (cwd)",
      },
      { "<leader>e", "<leader>fm", desc = "Open mini.files (Root Dir)", remap = true },
      { "<leader>E", "<leader>fM", desc = "Open mini.files (cwd)", remap = true },
    },
  },
}
