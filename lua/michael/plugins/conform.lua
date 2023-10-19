local conform_status, conform = pcall(require, "conform")
if not conform then
  return
end

require("conform").setup({
  formatters_by_ft = {
    lua = { "stylua" },
    javascript = { "prettierd" },
    typescript = { "prettierd" },
  },
  format_on_save = {
    timeout_ms = 500,
    lsp_fallback = true
  }
})
