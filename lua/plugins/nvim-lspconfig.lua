return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ["*"] = { -- Apply to all LSP servers
          keys = {
            { "<leader>co", false }, -- Disables the default Organize Imports mapping, which causes "No code actions available" on TypeScript
          },
        },
      },
    },
  },
}
