return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      keys = {
        { "<leader>co", false }, -- Disables the default Organize Imports mapping, which causes "No code actions available" on TypeScript
      },
    },
  },
}
