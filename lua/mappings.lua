require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

map("n", "<leader>gd", function()
  require("gitsigns").diffthis()
end, { desc = "Git diff file" })

map("n", "<leader>gp", function()
  require("gitsigns").preview_hunk()
end, { desc = "Git preview hunk" })

map("n", "<leader>gb", function()
  require("gitsigns").toggle_current_line_blame()
end, { desc = "Git toggle line blame" })
