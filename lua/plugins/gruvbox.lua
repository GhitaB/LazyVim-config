-- colorscheme.lua
-- Configure Gruvbox light variant in LazyVim

return {
  {
    "ellisonleao/gruvbox.nvim",
    lazy = false,       -- load the plugin immediately
    priority = 1000,    -- make sure this plugin is applied before others
    config = function()
      -- Set general options
      vim.o.background = "dark"  -- use the dark variant of Gruvbox

      -- Apply the colorscheme
      vim.cmd([[colorscheme gruvbox]])
    end,
  },
}

