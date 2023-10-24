return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
  },
  config = function()
    local lsp_config = require("lspconfig")
    local cmp_nvim_lsp = require("cmp_nvim_lsp")
    
    vim.keymap.set("n", "<space>e", vim.diagnostic.open_float)
    vim.keymap.set("n", "[d", vim.diagnostic.goto_prev)
    vim.keymap.set("n", "]d", vim.diagnostic.goto_next)
    vim.keymap.set("n", "<space>q", vim.diagnostic.setloclist)

    vim.api.nvim_create_autocmd("LspAttach", {
	    group = vim.api.nvim_create_augroup("UserLspConfig", {}),
	    callback = function(ev)
		    vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"

		    local opts = { buffer = ev.buf }
		    vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
		    vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
		    vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
		    vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
		    vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, opts)
		    vim.keymap.set("n", "<space>wa", vim.lsp.buf.add_workspace_folder, opts)
		    vim.keymap.set("n", "<space>wr", vim.lsp.buf.remove_workspace_folder, opts)
		    vim.keymap.set("n", "<space>wl", function()
			    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
		    end, opts)
		    vim.keymap.set("n", "<space>D", vim.lsp.buf.type_definition, opts)
	    	vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, opts)
		    vim.keymap.set({ "n", "v" }, "<space>ca", vim.lsp.buf.code_action, opts)
		    vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
		    vim.keymap.set("n", "<space>f", function()
			    vim.lsp.buf.format({ async = true })
		    end, opts)
	    end,
    })

    local capabilities = cmp_nvim_lsp.default_capabilities()

    lsp_config.lua_ls.setup({
	    capabilities = capabilities,
	    settings = {
		    Lua = {
			    diagnostics = {
				    globals = { "vim" },
			    },
		    },
	    },
    })
    lsp_config.tsserver.setup({ capabilities = capabilities })
    lsp_config.cssls.setup({ capabilities = capabilities })
    lsp_config.eslint.setup({ capabilities = capabilities })
    lsp_config.java_language_server.setup({ capabilities = capabilities })
  end
}

