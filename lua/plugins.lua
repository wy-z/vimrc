---@type LazySpec
return {
	--
	-- Basic enhancement
	--
	-- enable repeating supported plugin maps with "."
	"tpope/vim-repeat",
	-- Heuristically set buffer options
	"tpope/vim-sleuth",
	-- Vim plugin that allows you to visually select increasingly larger regions of text using the same key combination.
	"terryma/vim-expand-region",
	-- Make Vim persist editing state without fuss
	"zhimsel/vim-stay",
	-- Better whitespace highlighting for Vim
	{
		"ntpeters/vim-better-whitespace",
		config = function()
			vim.g.strip_whitespace_on_save = 1
			vim.g.strip_whitespace_confirm = 0
		end,
	},
	-- Search local vimrc files (".lvimrc") in the tree (root dir up to current dir) and load them.
	"embear/vim-localvimrc",

	--
	-- IDE
	--
	-- markdown preview plugin for (neo)vim
	{
		"iamcco/markdown-preview.nvim",
		build = "cd app && npm install",
		ft = "markdown",
	},
	-- Vim Just Syntax
	{ "NoahTheDuke/vim-just" },
}
