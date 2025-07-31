---@type LazySpec
return {
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		opts = {
			ensure_installed = {
				"gdtoolkit",
			},
		},
	},
	{
		"nvimtools/none-ls.nvim",
		opts = function(_, opts)
			local nls = require("null-ls")
			opts.sources = opts.sources or {}
			require("astrocore").list_insert_unique(opts.sources, {
				nls.builtins.formatting.gdformat,
				nls.builtins.diagnostics.gdlint,
			})
		end,
	},
}
