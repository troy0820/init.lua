return {
"tpope/vim-fugitive",
"tpope/vim-surround",
"vim-airline/vim-airline",
"vim-airline/vim-airline-themes",
"nvim-treesitter/nvim-treesitter-context",
"ntpeters/vim-better-whitespace",

config = function()
    vim.g.better_whitespace_enabled = 0
    vim.g.strip_whitespace_on_save = 0
end
}
