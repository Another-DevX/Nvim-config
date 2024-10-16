return {
	{
		"folke/trouble.nvim",
		opts = {},
		cmd = "Trouble",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		keys = {
			{
				"<leader>xx",
				":Trouble diagnostics toggle<CR>",
				desc = "Diagnostics (Trouble)",
			},
		},
	},
}
