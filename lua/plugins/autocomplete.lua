return {
	{
		"L3MON4D3/LuaSnip",
		keys = function()
			return {}
		end,
	},
	{
		"hrsh7th/nvim-cmp",
		---@param opts cmp.ConfigSchema
		opts = function(_, opts)
			local cmp = require("cmp")

			opts.mapping = vim.tbl_extend("force", opts.mapping, {
				["<CR>"] = cmp.config.disable,
				["<Tab>"] = cmp.mapping.confirm({ select = true }),
			})
		end,
	},
}
