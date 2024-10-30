return {
	"petertriho/nvim-scrollbar",
	config = function()
		require("scrollbar").setup({
			show = true,
			show_in_active_only = false,
			set_highlights = true,
			handlers = {
				cursor = true,
			},
		})
		vim.api.nvim_create_autocmd("ColorScheme", {
			callback = function()
				local colors = {
					bg_highlight = vim.api.nvim_get_hl_by_name("CursorLine", true).background or "#5C5C5C",
					orange = vim.api.nvim_get_hl_by_name("Search", true).background or "#FFA500",
					error = vim.api.nvim_get_hl_by_name("DiagnosticError", true).foreground or "#FF0000",
					warning = vim.api.nvim_get_hl_by_name("DiagnosticWarn", true).foreground or "#FFD700",
					info = vim.api.nvim_get_hl_by_name("DiagnosticInfo", true).foreground or "#87CEEB",
					hint = vim.api.nvim_get_hl_by_name("DiagnosticHint", true).foreground or "#D3D3D3",
					purple = vim.api.nvim_get_hl_by_name("Keyword", true).foreground or "#800080",
				}

				require("scrollbar").setup({
					handle = { color = colors.bg_highlight },
					marks = {
						Search = { color = colors.orange },
						Error = { color = colors.error },
						Warn = { color = colors.warning },
						Info = { color = colors.info },
						Hint = { color = colors.hint },
						Misc = { color = colors.purple },
					},
				})
			end,
		})
	end,
}
