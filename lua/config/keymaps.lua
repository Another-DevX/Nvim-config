local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map("i", "jk", "<Esc>", opts) -- Salir del modo insert con 'jk'

map("n", "<leader>E", ":Ex<CR>", opts)
