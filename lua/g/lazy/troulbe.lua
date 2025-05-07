return {
	{
		"folke/trouble.nvim",
		config = function()
			require("trouble").setup {
				incons = false,
			}
		end
	},
}
