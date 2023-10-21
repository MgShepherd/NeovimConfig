local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

local lazy_status, lazy = pcall(require, "lazy")
if not lazy_status then
	return
end

-- All plugins to be installed go here
lazy.setup({
	{ "morhetz/gruvbox" },
	{ "nvim-tree/nvim-web-devicons" },
	{ "nvim-lualine/lualine.nvim" },
	{ "nvim-treesitter/nvim-treesitter" },
	{ "nvim-tree/nvim-tree.lua" },
	{ "folke/which-key.nvim" },
	{ "nvim-lua/plenary.nvim" },
	{ "nvim-telescope/telescope.nvim" },
	{ "stevearc/conform.nvim" },
	{ "williamboman/mason.nvim" },
	{ "neovim/nvim-lspconfig" },
	{ "WhoIsSethDaniel/mason-tool-installer.nvim" },
	{ "nvimdev/dashboard-nvim", event = "VimEnter" },
	{ "L3MON4D3/LuaSnip" },
	{ "hrsh7th/nvim-cmp" },
	{ "saadparwaiz1/cmp_luasnip" },
	{ "hrsh7th/cmp-nvim-lsp" },
	{ "windwp/nvim-autopairs" },
	{ "mfussenegger/nvim-lint", event = { "BufReadPre", "BufNewFile" } },
	{ "lewis6991/gitsigns.nvim" },
})
