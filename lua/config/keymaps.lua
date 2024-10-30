local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Sugar
map("i", "jk", "<Esc>", opts) -- Salir del modo insert con 'jk'
map("n", ";", ":", opts)
map("i", "<C-h>", "<Left>", opts)
map("i", "<C-j>", "<Down>", opts)
map("i", "<C-k>", "<Up>", opts)
map("i", "<C-l>", "<Right>", opts)

-- Increment/decrement
map("n", "+", "<C-a>", opts)
map("n", "-", "<C-x>", opts)

map("n", "te", "tabedit", opts)
map("n", "<tab>", ":tabnext<Return>", opts)
map("n", "<s-tab>", ":tabprev<Return>", opts)

-- Split window
map("n", "sh", ":split<Return>", opts)
map("n", "sv", ":vsplit<Return>", opts)

map("n", "<leader>tn", ":if &relativenumber == 1 | set norelativenumber | else | set relativenumber | endif<CR>", opts)
