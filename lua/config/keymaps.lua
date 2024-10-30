local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Sugar
map("i", "jk", "<Esc>", opts) -- Salir del modo insert con 'jk'
map("n", ";", ":", opts)

-- Better window navigation
map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-j>", "<C-w>j", opts)
map("n", "<C-k>", "<C-w>k", opts)
map("n", "<C-l>", "<C-w>l", opts)

-- Increment/decrement
map("n", "+", "<C-a>", opts)
map("n", "-", "<C-x>", opts)

-- Move text up and down
map("v", "<A-j>", ":m .+1<CR>==", opts)
map("v", "<A-k>", ":m .-2<CR>==", opts)
map("x", "<A-j>", ":move '>+1<CR>gv=gv", opts)
map("x", "<A-k>", ":move '<-2<CR>gv=gv", opts)

-- GOD NO MORE FCKNG REWRITE THE BUFFER
map("v", "p", '"_dP', opts)

-- Split window
map("n", "sh", ":split<Return>", opts)
map("n", "sv", ":vsplit<Return>", opts)

-- Stay in indent mode
map("v", "<", "<gv", opts)
map("v", ">", ">gv", opts)

map("n", "<leader>tn", ":if &relativenumber == 1 | set norelativenumber | else | set relativenumber | endif<CR>", opts)
