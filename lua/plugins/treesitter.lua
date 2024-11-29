return {
	{
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
		opts = {

			auto_install = true,
			ensure_installed = {
				"bash",
				"html",
				"javascript",
				"json",
				"lua",
				"markdown",
				"markdown_inline",
				"python",
				"query",
				"regex",
				"tsx",
				"typescript",
				"vim",
				"yaml",
				"dockerfile",
				"gitignore",
				"graphql",
				"http",
				"java",
				"astro",
				"bash",
				"css",
				"php",
				"sql",
				"latex",
			},
			autotag = {
				enable = true,
				enable_rename = true,
				enable_close = true,
				enable_close_on_slash = true,
				filetypes = {
					"html",
					"javascript",
					"typescript",
					"javascriptreact",
					"typescriptreact",
					"svelte",
					"vue",
					"tsx",
					"jsx",
					"rescript",
					"xml",
					"php",
					"markdown",
					"markdown_inline",
					"astro",
					"glimmer",
					"handlebars",
					"hbs",
				},
			},
			indent = {
				enable = true,
			},
			highlight = {
				enable = true, -- false will disable the whole extension
				disable = { "" }, -- list of language that will be disabled
				additional_vim_regex_highlighting = true,
			},
		},
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
