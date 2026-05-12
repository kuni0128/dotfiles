local opt = vim.opt

-- Leader (set before plugins load)
vim.g.mapleader = " "

-- General
opt.encoding = "utf-8"
opt.backup = false
opt.swapfile = false
opt.hidden = true
opt.history = 500

-- Appearance
opt.termguicolors = true
opt.background = "dark"
opt.number = true
opt.cursorline = true
opt.showcmd = true
opt.showmatch = true
opt.laststatus = 2
opt.scrolloff = 5

-- Indentation
opt.expandtab = true
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.autoindent = true
opt.smartindent = true

-- Search
opt.ignorecase = true
opt.smartcase = true
opt.incsearch = true
opt.hlsearch = true

-- gitsigns update time
opt.updatetime = 250
