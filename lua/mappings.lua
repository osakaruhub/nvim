require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<leader>r", ":cd %:h<cr>", {desc = "CD to current file"})
map("n", "<leader>e", ":NvimTreeToggle<cr>")
map("n", ",leader>q", ":q<cr>")
map({"n","i", "v"}, "C-h", "<cmd>bprevious<cr>")
map({"n","i", "v"}, "C-k", "<cmd>bnext<cr>")

map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
