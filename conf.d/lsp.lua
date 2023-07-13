--
-- null-ls
--

local formatters = require("lvim.lsp.null-ls.formatters")
formatters.setup({
	-- python
	{ name = "black", filetypes = { "python" } },
	{ name = "isort", filetypes = { "python" } },
	-- prettier
	{
		name = "prettier",
		filetypes = {
			"typescript",
			"typescriptreact",
			"javascript",
			"javascriptreact",
			"markdown",
			"json",
			"yaml",
			"css",
			"html",
		},
	},
	-- shell
	{ name = "shfmt", filetypes = { "sh" } },
	-- go
	{ name = "goimports", filetypes = { "go" } },
	-- godot
	{ name = "gdformat", filetypes = { "gdscript" } },
	-- lua
	{ name = "stylua", filetypes = { "lua" } },
})

local linters = require("lvim.lsp.null-ls.linters")
linters.setup({
	-- python
	{ name = "ruff", filetypes = { "python" } },
	{ name = "mypy", filetypes = { "python" } },
	-- godot
	{ name = "gdlint", filetypes = { "gdscript" } },
})

--
-- godot
--

require("lspconfig").gdscript.setup({})
