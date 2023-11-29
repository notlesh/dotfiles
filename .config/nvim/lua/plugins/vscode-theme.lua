return {
	{
		"Mofiqul/vscode.nvim",
		dependencies = { },
		lazy = false,
		config = function()
			require("vscode").setup({
				transparent = true,
				italic_comments = true
			})
			require("vscode").load("dark")
		end
	},
};
