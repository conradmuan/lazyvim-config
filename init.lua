-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

require("sequoia").colorscheme("insomnia")

-- Disable atomic writes because watchers get confused
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.swapfile = false

-- ignored in git. Put all the rando things here
pcall(require, "user.rgd")
