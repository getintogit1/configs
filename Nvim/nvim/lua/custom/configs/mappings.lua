
local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Resize splits using Alt + Arrow keys
map("n", "<A-Up>", ":resize +2<CR>", opts)
map("n", "<A-Down>", ":resize -2<CR>", opts)
map("n", "<A-Left>", ":vertical resize -2<CR>", opts)
map("n", "<A-Right>", ":vertical resize +2<CR>", opts)
