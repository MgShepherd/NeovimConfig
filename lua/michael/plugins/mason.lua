return {
	"williamboman/mason.nvim",
	dependencies = {
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		local mason = require("mason")
		local mason_tool_installer = require("mason-tool-installer")

		mason.setup({})

		mason_tool_installer.setup({
			ensure_installed = {
				"lua-language-server",
				"stylua",
				"eslint_d",
				"eslint-lsp",
				"prettierd",
				"typescript-language-server",
				"google-java-format",
			},
		})
	end,
}
