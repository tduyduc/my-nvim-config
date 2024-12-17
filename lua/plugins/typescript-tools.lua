return {
  {
    "pmizio/typescript-tools.nvim",
    dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
    opts = {},
    keys = {
      {
        "<leader>co",
        ":TSToolsOrganizeImports<CR>",
        mode = { "n", "v" },
        desc = "Organize Imports",
      },
    },
  },
}
