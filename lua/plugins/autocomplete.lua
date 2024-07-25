return {
  {
    "hrsh7th/nvim-cmp",
    ---@param opts cmp.ConfigSchema
    opts = function(_, opts)
      local cmp = require("cmp")

      opts.completion.autocomplete = false
      opts.preselect = cmp.PreselectMode.None
      opts.completion.completeopt = "menu,menuone,noselect"
      opts.experimental.ghost_text = false

      opts.mapping = vim.tbl_extend("force", opts.mapping, {
        -- ["<CR>"] = cmp.config.disable,
        ["<CR>"] = cmp.mapping.confirm({ select = false }),
        ["<Tab>"] = cmp.mapping.confirm({ select = true }),
      })
    end,
  },
}
