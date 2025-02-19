local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then

  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
local function airline_config()
    vim.g.airline_powerline_fonts = true
end
require("lazy").setup({
spec = "troy0820.lazy",
init = airline_config(),
change_detection = {notify = false}
})
