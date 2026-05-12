local map = vim.keymap.set

-- Clear search highlight
map("n", "<Esc>", ":nohlsearch<CR><Esc>", { silent = true })

-- File tree (neo-tree)
map("n", "<Leader>e", ":Neotree toggle<CR>", { silent = true })

-- Telescope
map("n", "<Leader>f", ":Telescope find_files<CR>", { silent = true })
map("n", "<Leader>b", ":Telescope buffers<CR>", { silent = true })
map("n", "<Leader>g", ":Telescope live_grep<CR>", { silent = true })

-- Window navigation
map("n", "<C-h>", "<C-w>h")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-l>", "<C-w>l")
