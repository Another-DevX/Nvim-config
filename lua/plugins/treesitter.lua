return {
	{
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
		config = function()
			require("nvim-treesitter.configs").setup({
				ensure_installed = { "rust" },
				highlight = {
					enable = true,
				},
			})
		end,
	},
}
