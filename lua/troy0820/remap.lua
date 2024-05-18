vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.termguicolors = true
vim.opt.incsearch = true
vim.opt.hlsearch = false
vim.opt.scrolloff = 8
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.updatetime = 50
vim.opt.colorcolumn = "180"
vim.g.rainbow_active = 1
vim.g.leader = " "
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>v", ":vsp")
vim.keymap.set("n", "<leader>w", ":w<cr>")
vim.keymap.set("n", "<leader>f", "<C-W>W")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v","<c-k>",":m '<-2<CR>gv=gv")
vim.keymap.set("n","<leader>t", ":sp term://zsh<cr>")
vim.keymap.set("t","<ESC>", "<C-\\><C-N>")
vim.keymap.set("n","<leader>rn", function() vim.lsp.buf.rename() end)

vim.keymap.set("n", "<c-k>", ":m .-2<CR>==")
vim.keymap.set("n","<c-j>", ":m .+1<CR>==")
vim.keymap.set("n","<leader><leader>","<c-^>")

vim.keymap.set("n","n", "nzz")
vim.keymap.set("n","N", "Nzz")

vim.keymap.set("n","<leader>y", "\"+y")
vim.keymap.set("v","<leader>y", "\"+y")
vim.keymap.set("n","<leader>y", "\"+Y")
vim.keymap.set("n","<leader>n", ":cnext<CR>")
vim.keymap.set("n","<leader>m", ":cprev<CR>")

-- Commenting out to see if I like this
-- vim.cmd[[hi TreesitterContextBottom cterm=reverse ctermbg=0 guibg=#3b4252 gui=underline]]
-- vim.cmd[[hi link TreesitterContext Normal]]
