
return {
  "norcalli/nvim-colorizer.lua",
  -- Optional dependency
  dependencies = {  },
  config = function()
    require("colorizer").setup {
      'css';
      'javascript';
      'html';
    };
  end,
}
