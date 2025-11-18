vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"

-- System clipboard
vim.opt.clipboard = "unnamedplus"

-- Visual mode copy
vim.api.nvim_set_keymap("v", "<D-c>", '"+y', { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<C-c>", '"+y', { noremap = true, silent = true })

-- Paste mappings
vim.api.nvim_set_keymap("n", "<D-v>", '"+p', { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<D-v>", '<C-R>+', { noremap = true, silent = true })

vim.opt.colorcolumn = "200"
