local wk = require("which-key")

local function ts_organize_imports()
  vim.cmd("TSToolsOrganizeImports")
end

wk.add({
  {
    "<leader>co",
    ts_organize_imports,
    desc = "Organize Imports",
    icon = { ft = "typescript" },
    buffer = true,
  },
})
