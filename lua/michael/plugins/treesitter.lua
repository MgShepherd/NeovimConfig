local treesitter_status, treesitter = pcall(require, "nvim-treesitter.configs")
if not treesitter_status then
	return
end

treesitter.setup({
	ensure_installed = {
		"lua",
		"vim",
		"css",
		"gitignore",
		"html",
		"java",
		"javascript",
		"json",
		"typescript",
		"tsx",
	},
	auto_install = true,
	highlight = {
		enable = true,
	},
	indent = {
		enable = true,
	},
})
