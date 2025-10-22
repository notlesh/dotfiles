return {
	{
		"williamboman/mason.nvim",
		dependencies = {
		},
		lazy = false,
		config = function()
			require("mason").setup({
				ui = {
					icons = {
						package_installed = "",
						package_pending = "",
						package_uninstalled = "",
					},
				}
			})
		end
	},
};
