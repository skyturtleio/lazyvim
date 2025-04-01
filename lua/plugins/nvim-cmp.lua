return {
  {
    -- TODO: Look at teej examples from `kickstart.nvim` to see if he does anything different with `ctrl + y`
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      local cmp = require("cmp")

      cmp.setup({
        experimental = {
          ghost_text = false,
        },
      })

      -- Turn off `<CR>` (the Enter or Return key) from accepting suggestions
      -- <CR> will still work if you actually select something from the suggestions list
      -- using ctrl+n or ctrl+p, but you actually have to start moving through the list
      -- first. Otherwise, hitting Enter will just put in a newline.
      --
      -- Figured this out with the sources below
      -- [Safeley select entries with <CR>](https://github.com/hrsh7th/nvim-cmp/wiki/Example-mappings#safely-select-entries-with-cr)
      -- [Supertab recipe](https://www.lazyvim.org/configuration/recipes#supertab)
      -- Reddit post: https://www.reddit.com/r/neovim/comments/1bc6bmx/comment/l9ectbw/?utm_source=share&utm_medium=web3x&utm_name=web3xcss&utm_term=1&utm_content=share_button

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
}
