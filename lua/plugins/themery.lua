return {
	{
		"zaldih/themery.nvim",
		lazy = false,
		config = function()
			require("themery").setup({
				themes = {
					{
						name = "Gruvbox dark",
						colorscheme = "gruvbox",
						before = [[
      -- All this block will be executed before apply "set colorscheme"
      vim.opt.background = "dark"
    ]],
					},
					{
						name = "Gruvbox light",
						colorscheme = "gruvbox",
						before = [[
      vim.opt.background = "light"
    ]],
						after = [[-- Same as before, but after if you need it]],
					},
					{
						name = "Tokyo Night",
						colorscheme = "tokyonight",
						before = [[
      vim.opt.background = "dark"
    ]],
						after = [[-- Add additional configurations if necessary]],
					},
					{
						name = "Neon CherryKiss",
						colorscheme = "neon-cherrykiss-night",
						before = [[
      vim.opt.background = "dark"
    ]],
						after = [[-- Add additional configurations if necessary]],
					},
				},

				livePreview = true,
			})
		end,
	},
	{
		{ "folke/tokyonight.nvim" },
		{ "morhetz/gruvbox" },
		{
			"Zeioth/neon.nvim",
			opts = {
				dim_inactive = false,
				styles = {
					comments = { italic = true },
					keywords = { italic = true },
				},
			},
		},
	},
}
