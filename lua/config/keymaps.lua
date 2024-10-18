local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map("i", "jk", "<Esc>", opts) -- Salir del modo insert con 'jk'

map("n", "<leader>E", ":Ex<CR>", opts)
map("i", "<C-h>", "<Left>", opts)
map("i", "<C-j>", "<Down>", opts)
map("i", "<C-k>", "<Up>", opts)
map("i", "<C-l>", "<Right>", opts)

map("n", ";", ":", opts)

map("n", "<leader>tn", ":if &relativenumber == 1 | set norelativenumber | else | set relativenumber | endif<CR>", opts)
