vim.o.guicursor = ""

vim.o.nu = true
vim.o.relativenumber = true

vim.o.errorbells = false

vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true

vim.o.smartindent = true

vim.o.wrap = false

vim.o.swapfile = false
vim.o.backup = false
vim.o.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.o.undofile = true

vim.o.clipboard = 'unnamedplus'

vim.o.hlsearch = false
vim.o.incsearch = true

vim.o.termguicolors = true

vim.o.scrolloff = 10
vim.o.signcolumn = "yes"

-- Give more space for displaying messages.
vim.o.cmdheight = 1

vim.o.updatetime = 100

vim.o.colorcolumn = "100"

vim.g.mapleader = "<Space>"

-- Auto format on save
vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.formatting_sync()]]
