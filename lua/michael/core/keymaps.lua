vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("n", "<leader>sv", "<C-w>v")
keymap.set("n", "<leader>sh", "<C-w>s")
keymap.set("n", "<leader>se", "<C-w>=")
keymap.set("n", "<leader>sx", ":close<CR>")

keymap.set("n", "<leader>mh", "<C-w>h")
keymap.set("n", "<leader>mj", "<C-w>j")
keymap.set("n", "<leader>mk", "<C-w>k")
keymap.set("n", "<leader>ml", "<C-w>l")

keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
