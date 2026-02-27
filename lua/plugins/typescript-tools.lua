return {
  {
    "pmizio/typescript-tools.nvim",
    dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
    config = function()
      require("typescript-tools").setup({
        settings = {
          complete_function_calls = false,
          expose_as_code_action = "all",
          jsx_close_tag = {
            enable = false,
            filetypes = { "javascriptreact", "typescript", "typescriptreact" },
          },
        },
      })
    end,
  },
}
