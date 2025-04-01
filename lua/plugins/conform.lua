return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      python = { "autopep8" },
    },
    format_on_save = {
      timeout_ms = 500,
      lsp_fallback = false,
    },
    formatters = {
      autopep8 = {
        prepend_args = { "--max-line-length", "79" },
      },
    },
  },
}

