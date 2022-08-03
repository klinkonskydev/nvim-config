local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

keymap("", "<Space>", "<Nop>", {})
vim.g.mapleader = " "
vim.g.maplocalleader = " "

keymap("n", "<C-l>", ":vsplit <CR>", {})
keymap("n", "<C-a>", ":Prettier<CR>", {})
keymap("n", "<C-t>", ":Explore<CR>", {})
keymap("n", "<C-p>", ":ToggleTerm<CR>", {})
keymap("n", "<C-s>", ":w<CR>", {})

keymap('n', '[o', ':GitConflictChooseOurs', {})
keymap('n', ']o', ':GitConflictChooseTheirs', {})
keymap('n', '[]', ':GitConflictChooseBoth', {})

keymap("n", "<leader>v", ":Vexplore<CR>", {})
keymap("n", "<leader>p", ":Telescope find_files<CR>", {})
keymap("n", "<leader>o", ":Telescope oldfiles<CR>", {})

keymap('n', 'Q', 'q', {})
keymap('n', 'q', '<nop>', {})
