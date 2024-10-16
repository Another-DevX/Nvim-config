return {
	{
		"neovim/nvim-lspconfig",
		config = function()
			-- Configuración de rust-analyzer
			require("lspconfig").rust_analyzer.setup({
				settings = {
					["rust-analyzer"] = {
						checkOnSave = {
							command = "clippy", -- Usa Clippy para linting si prefieres.
						},
					},
				},
			})
		end,
	},
}
