local function sort_imports()
  vim.lsp.buf.code_action({ context = { only = { "source.organizeImports" } }, apply = true })
end

return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      pylsp = {
        settings = {
          pylsp = {
            plugins = {
              autopep8 = { enabled = false },
              pyflakes = { enabled = false },
              pycodestyle = { enabled = false },
            },
          },
        },
      },
    },
    setup = {
      ["lua_ls"] = function()
        -- vim.print("configuring")
      end,
    },
    inlay_hints = {
      enabled = false,
    },
  },
  keys = {
    { "<leader>si", sort_imports, desc = "Sort imports with LSP" },
  },
}
