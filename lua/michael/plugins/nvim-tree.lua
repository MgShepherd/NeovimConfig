local nvim_tree_status, nvim_tree = pcall(require, "nvim-tree")
if not nvim_tree_status then 
  return
end

nvim_tree.setup({
  renderer = {
    icons = {
      glyphs = {
        folder = {
          arrow_closed = "",
          arrow_open = "", 
        },
      },
    },
  },
  actions = {
    open_file = {
      window_picker = {
        enable = false,
      },
    },
  },
})
