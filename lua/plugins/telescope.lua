return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local actions = require("telescope.actions")
		require("telescope").setup({
			defaults = {
				-- Default configuration for telescope goes here:
				-- config_key = value,
				mappings = {
					i = {
						-- map actions.which_key to <C-h> (default: <C-/>)
						-- actions.which_key shows the mappings for your picker,
						-- e.g. git_{create, delete, ...}_branch for the git_branches picker
						["<C-h>"] = actions.which_key,
					},
				},
			},
		})
		vim.api.nvim_set_keymap(
			"n",
			"<leader>ff",
			"<cmd>Telescope find_files<CR>",
			{ noremap = true, silent = true, desc = "Find files" }
		)
		vim.api.nvim_set_keymap(
			"n",
			"<leader>fg",
			"<cmd>Telescope live_grep<CR>",
			{ noremap = true, silent = true, desc = "Live grep" }
		)
		vim.api.nvim_set_keymap(
			"n",
			"<leader>fh",
			"<cmd>Telescope help_tags<CR>",
			{ noremap = true, silent = true, desc = "Find help" }
		)
		vim.api.nvim_set_keymap(
			"n",
			"<leader>fo",
			"<cmd>Telescope oldfiles<CR>",
			{ noremap = true, silent = true, desc = "Recent files" }
		)
		vim.api.nvim_set_keymap(
			"n",
			"<leader>fc",
			"<cmd>Telescope find_files cwd=<root_dir><CR>",
			{ noremap = true, silent = true, desc = "Find files in root dir" }
		)
		vim.api.nvim_set_keymap(
			"n",
			"<leader>fb",
			"<cmd>Telescope builtin<CR>",
			{ noremap = true, silent = true, desc = "Telescope builtins" }
		)
		vim.api.nvim_set_keymap(
			"n",
			"<leader>th",
			"<cmd>Telescope colorscheme<CR>",
			{ noremap = true, silent = true, desc = "Select colorscheme" }
		)
		vim.api.nvim_set_keymap(
			"n",
			"<leader>fd",
			"<cmd>Telescope diagnostics<CR>",
			{ noremap = true, silent = true, desc = "Diagnostics" }
		)
	end,
}
