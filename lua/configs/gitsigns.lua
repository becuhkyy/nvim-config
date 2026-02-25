local options = {
  signs = {
    delete = { text = "󰍵" },
    changedelete = { text = "󱕖" },
  },
  current_line_blame = true,
}

dofile(vim.g.base46_cache .. "git")
require("gitsigns").setup(options)
