return {
"fatih/vim-go",
config = function()
    vim.g.go_gopls_enabled = 1
    vim.g.go_def_mode = 'gopls'
    vim.g.go_info_mode = 'gopls'
    vim.g.go_def_mapping_enabled = 0
    vim.g.go_addtags_transform = "camelcase"
    vim.g.go_fmt_autosave = 1
    vim.g.go_auto_type_info = 1
    vim.g.go_fmt_command = "goimports"

end
}
