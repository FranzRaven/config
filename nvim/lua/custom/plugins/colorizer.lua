
return {
  "norcalli/nvim-colorizer.lua",
  -- Optional dependency
  config = function()
    vim.opt.termguicolors = true
    require('colorizer').setup {}

  end,
}
