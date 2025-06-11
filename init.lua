-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

require("sequoia").colorscheme("insomnia")

vim.g.copilot_node_command = "/Users/cmuan/Library/Caches/fnm_multishells/99489_1746730151919/bin/node"

-- Disable atomic writes because watchers get confused
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.swapfile = false
