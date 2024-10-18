return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		require("telescope").setup({
			defaults = {
				mappings = {
					i = {
						-- Mapea <C-h> para mostrar las teclas en modo de inserción
						["<C-h>"] = "which_key",
					},
				},
			},
		})
		-- Mapea las teclas después de cargar telescope
		vim.api.nvim_set_keymap("n", "<leader>ff", "<cmd>Telescope find_files<CR>", { noremap = true, silent = true })
		vim.api.nvim_set_keymap("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", { noremap = true, silent = true })
		vim.api.nvim_set_keymap("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", { noremap = true, silent = true })
		vim.api.nvim_set_keymap("n", "<leader>fo", "<cmd>Telescope oldfiles<CR>", { noremap = true, silent = true })
		vim.api.nvim_set_keymap(
			"n",
			"<leader>fc",
			"<cmd>Telescope find_files cwd=<root_dir><CR>",
			{ noremap = true, silent = true }
		)
		vim.api.nvim_set_keymap("n", "<leader>fb", "<cmd>Telescope builtin<CR>", { noremap = true, silent = true })
		vim.api.nvim_set_keymap("n", "<leader>th", ":Telescope colorscheme<CR>", { noremap = true, silent = true })
		vim.api.nvim_set_keymap("n", "<leader>fd", "<cmd>Telescope diagnostics<CR>", { noremap = true, silent = true })
	end,
}
