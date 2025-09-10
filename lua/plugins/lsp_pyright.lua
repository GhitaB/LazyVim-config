-- ~/.config/nvim/lua/config/lsp_pyright.lua
return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      pyright = {
        settings = {
          python = {
            analysis = {
              typeCheckingMode = "basic",
              diagnosticSeverityOverrides = {
                reportMissingImports = "none",
                reportMissingModuleSource = "none",
              },
            },
          },
        },
      },
    },
  },
}
