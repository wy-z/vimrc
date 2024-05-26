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
