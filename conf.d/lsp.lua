--
-- lsp
--

--
-- null-ls
--

local formatters = require("lvim.lsp.null-ls.formatters")
formatters.setup({
	-- python
	{ name = "isort", filetypes = { "python" } },
	{ name = "ruff", filetypes = { "python" } },
	{ name = "ruff_format", filetypes = { "python" } },
	{ name = "djlint", filetypes = { "jinja.html" } },
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
	-- nix
	{ name = "alejandra", filetypes = { "nix" } },
})

local linters = require("lvim.lsp.null-ls.linters")
linters.setup({
	-- python
	{ name = "ruff", filetypes = { "python" } },
	{ name = "mypy", filetypes = { "python" } },
	{ name = "djlint", filetypes = { "jinja.html" } },
	-- godot
	{ name = "gdlint", filetypes = { "gdscript" } },
})

--
-- Python
--
vim.cmd([[
	au BufRead,BufNewFile *.html.j2 set filetype=jinja.html
]])

--
-- godot
--

require("lspconfig").gdscript.setup({})
