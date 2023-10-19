local mason_status, mason = pcall(require, "mason")
if not mason_status then
  return
end

local mason_tool_installer_status, mason_tool_installer = pcall(require, "mason-tool-installer")

mason.setup()

mason_tool_installer.setup({
  ensure_installed = {
    'lua-language-server',
    'stylua',
    'eslint_d',
    'prettierd',
    'typescript-language-server',
    'google-java-format'
  },
  auto_update = true,
  run_on_start = true
})
