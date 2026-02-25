local telescope = require "telescope"
local opts = require "nvchad.configs.telescope"

opts.defaults.file_ignore_patterns = opts.defaults.file_ignore_patterns or {}
vim.list_extend(opts.defaults.file_ignore_patterns, {
  "node_modules/",
  "%.git/",
})

vim.list_extend(opts.defaults.vimgrep_arguments, {
  "--glob",
  "!**/node_modules/**",
  "--glob",
  "!**/.git/**",
})

telescope.setup(opts)
