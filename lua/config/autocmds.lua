-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- au BufRead,BufNewFile *.mine                set filetype=mine

vim.api.nvim_exec(
  [[
  augroup filetype_mapping
    autocmd!
    autocmd BufRead,BufNewFile *.script set filetype=lua
    autocmd BufRead,BufNewFile *.gui_script set filetype=lua
    autocmd BufRead,BufNewFile *.zcml set filetype=xml
  augroup END
]],
  false
)

-- vim.api.nvim_create_autocmd("BufReadPost", {
--   callback = function()
--     require("cmp").setup.buffer({ enabled = false })
--   end,
-- })
-- autocmd BufWritePre *.py LspStop
-- autocmd BufWritePost *.py LspStart
