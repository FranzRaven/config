
return {
  "rebelot/kanagawa.nvim",
  -- Optional dependency
  config = function()
    require('kanagawa').setup {}
   -- vim.cmd.colorscheme 'kanagawa-dragon'
  end,
}
