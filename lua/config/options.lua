-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- disable all animations
vim.g.snacks_animate = false

-- do not hide any markup
vim.opt.conceallevel = 0

-- need to enable this for Bun hot reloading and watcher to work
-- e.g. `bun run --hot --watch src/index.ts`
--
-- source: https://github.com/oven-sh/bun/issues/8520#issuecomment-2585256608
vim.opt.backupcopy = "yes"
