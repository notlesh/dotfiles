return {
	{
		"neovim/nvim-lspconfig",
		dependencies = {
		},
		lazy = false,
		config = function()
			vim.lsp.config("pyright", {})
			vim.lsp.config("rust_analyzer", {
				-- Server-specific settings. See `:help lspconfig-setup`
				settings = {
					['rust-analyzer'] = {},
				},
			})

			-- Use LspAttach autocommand to only map the following keys
			-- after the language server attaches to the current buffer
			vim.api.nvim_create_autocmd('LspAttach', {
			  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
			  callback = function(ev)
			    -- Enable completion triggered by <c-x><c-o>
			    vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

			    -- Buffer local mappings.
			    -- See `:help vim.lsp.*` for documentation on any of the below functions
			    local opts = { buffer = ev.buf }
			    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
			    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
			    -- vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
			    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
			    vim.keymap.set('n', '<C-s>', vim.lsp.buf.signature_help, opts)
			    vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
			    vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
			    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
			  end,
			})
		end
	}
}
