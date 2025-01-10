require "nvchad.mappings"

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<leader>po", "<cmd>Telescope projects<cr>", {desc = "open projects"})
map("n", "<leader>fp", "<cmd>Telescope projects<cr>", {desc = "open projects"})
map("n", "<Leader>T", "<cmd>TodoTelescope<cr>", {desc = "Open TODOs in Telescope"})
map("n", "<leader>r", "<cmd>?cd %:h<cr>", {desc = "CD to current file"})
map("n", "<leader>e", "<cmd>NvimTreeToggle<cr>")
map("n", ",leader>q", "<cmd>q<cr>")
map({"n","i", "v"}, "C-h", "<cmd>bprevious<cr>")
map({"n","i", "v"}, "C-l", "<cmd>bnext<cr>")

vim.api.nvim_set_keymap('n', '<leader>z', 'za', { noremap = true, silent = true })  -- Toggle fold
vim.api.nvim_set_keymap('n', '<leader>o', 'zo', { noremap = true, silent = true })  -- Open fold
vim.api.nvim_set_keymap('n', '<leader>c', 'zc', { noremap = true, silent = true })  -- Close fold

map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
