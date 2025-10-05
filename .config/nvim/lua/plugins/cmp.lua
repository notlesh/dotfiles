return {
	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
		},
		lazy = false,
		config = function()
			local cmp = require('cmp')
			cmp.setup({
				snippet = {},
				window = {},
				mapping = {},
				sources = cmp.config.sources({
					{ name = 'nvim_lsp' },
					{ name = 'nvim_lsp' },
				}),
			})

			local capabilities = require('cmp_nvim_lsp').default_capabilities()
			vim.lsp.config("rust_analyzer", {
				capabilities = capabilities
			})
		end
	}
}
