vim.g.mapleader = " "

local which_key_status, which_key = pcall(require, "which-key")
if not which_key_status then
  return
end

which_key.setup({
  window = {
    border = "double",
    padding = { 2, 2, 2, 2 },
  },
  ignore_missing = true
})

local opts = {
  mode = "n",
  prefix = "<leader>",
  buffer = nil,
  silent = true,
  noremap = true,
  nowait = true
}

local mappings = {
  ["e"] = { "<cmd>NvimTreeToggle<CR>", "Toggle File Explorer" },
  ["w"] = { "<cmd>WhichKey<CR>", "Open Which Key" },
  s = {
    name = "Manage Splits",
    v = { "<C-w>v", "Split Vertically" },
    h = { "<C-w>s", "Split Horizontally" }, 
    x = { "<cmd>close<CR>", "Close Current Split" },
    ["="] = { "<C-w>=", "Make Splits Equal" } 
  },
  m = {
    name = "Split Navigation",
    h = { "<C-w>h", "Move Left" },
    j = { "<C-w>j", "Move Up" },
    k = { "<C-w>k", "Move Down" },
    l = { "<C-w>l", "Move Right" },
  },
  f = {
    name = "Telescope",
    f = { "<cmd>Telescope find_files<CR>", "Find Files" },
    s = { "<cmd>Telescope live_grep<CR>", "Search in Files" }
  }
}

which_key.register(mappings, opts)
