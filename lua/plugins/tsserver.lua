return {
	"neovim/nvim-lspconfig",
	init = function()
		require("lspconfig").tsserver.setup({
			detached = false,
			init_options = {
				preferences = {
					importModuleSpecifierPreference = "relative",
				},
				completions = {
					completeFunctionCalls = false,
				},
			},
		})
	end,
}
