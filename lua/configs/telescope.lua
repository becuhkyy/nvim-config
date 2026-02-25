local telescope = require "telescope"
local opts = require "nvchad.configs.telescope"

opts.defaults.file_ignore_patterns = opts.defaults.file_ignore_patterns or {}

vim.list_extend(opts.defaults.file_ignore_patterns, {
  "node_modules/",
  "%.git/",
})

-- ignore for find_files / general telescope filtering
opts.defaults.file_ignore_patterns = opts.defaults.file_ignore_patterns or {}

vim.list_extend(opts.defaults.file_ignore_patterns, {
  "node_modules/",
  "%.git/",
})

-- ignore for live_grep (ripgrep args)
local rg_args = opts.defaults.vimgrep_arguments or require("telescope.config").values.vimgrep_arguments

-- make a copy so we never mutate Telescope's shared default table
opts.defaults.vimgrep_arguments = vim.deepcopy(rg_args)

vim.list_extend(opts.defaults.vimgrep_arguments, {
  "--glob",
  "!**/node_modules/**",
  "--glob",
  "!**/.git/**",
})

telescope.setup(opts)
