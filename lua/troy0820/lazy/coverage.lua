return {
"rafaelsq/nvim-goc.lua",
config = function()
vim.opt.switchbuf = 'useopen'

local goc = require('nvim-goc')
goc.setup({ verticalSplit = false })  -- default to horizontal



vim.keymap.set('n', '<Leader>gc', goc.Coverage, {silent=true})       -- run for the whole File
vim.keymap.set('n', '<Leader>gct', goc.CoverageFunc, {silent=true})   -- run only for a specific Test unit
vim.keymap.set('n', '<Leader>gcc', goc.ClearCoverage, {silent=true})  -- clear coverage highlights

-- If you need custom arguments, you can supply an array as in the example below.

-- vim.keymap.set('n', '<Leader>gcf', function() goc.Coverage({ "-race", "-count=1" }) end, {silent=true})
-- vim.keymap.set('n', '<Leader>gct', function() goc.CoverageFunc({ "-race", "-count=1" }) end, {silent=true})

vim.keymap.set('n', ']a', goc.Alternate, {silent=true})
vim.keymap.set('n', '[a', goc.AlternateSplit, {silent=true})          -- set verticalSplit=true for vertical

cf = function(testCurrentFunction)
  local cb = function(path)
    if path then

      -- `xdg-open|open` command performs the same function as double-clicking on the file.
      -- change from `xdg-open` to `open` on MacOSx
      vim.cmd(":silent exec \"!xdg-open " .. path .. "\"")
    end
  end

  if testCurrentFunction then
    goc.CoverageFunc(nil, cb, 0)
  else
    goc.Coverage(nil, cb)
  end
end
end

}
