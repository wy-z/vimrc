---@type LazySpec
return {
	-- lsp
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		opts = {
			ensure_installed = {
				-- common
				"harper-ls",
				"typos-lsp",
				-- lua
				"lua-language-server",
				"stylua",
				"selene",
				-- python
				"pyright",
				"ruff",
				"isort",
			},
		},
	},
}
