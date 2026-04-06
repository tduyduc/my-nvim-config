local wk = require("which-key")

local function pyright_organize_imports()
  vim.cmd("LspPyrightOrganizeImports")
end

wk.add({
  {
    "<leader>co",
    pyright_organize_imports,
    desc = "Organize Imports",
    icon = { ft = "python" },
    buffer = true,
  },
})
