return {
    "nordtheme/vim",
    config = function()
        vim.cmd[[colorscheme nord]]
        vim.g.airline_theme = "nord"
    end
}
