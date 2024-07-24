return {
  "neovim/nvim-lspconfig",
  opts = {
    inlay_hints = {
      enabled = false,
    },
    servers = {
      tsserver = {
        enabled = false,
      },
      vtsls = {
        settings = {
          complete_function_calls = false,
          typescript = {
            suggest = {
              completeFunctionCalls = false,
            },
            preferences = {
              importModuleSpecifier = "relative",
            },
          },
        },
      },
    },
  },
}
