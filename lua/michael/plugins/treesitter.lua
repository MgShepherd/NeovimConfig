return {
  'nvim-treesitter/nvim-treesitter',
  opts = {
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
  }
}
