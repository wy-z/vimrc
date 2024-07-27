-- embear/vim-localvimrc
vim.g.localvimrc_persistent = 2

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
	-- Search local vimrc files (".lvimrc") in the tree (root dir up to current dir) and load them.
	"embear/vim-localvimrc",
	-- Better whitespace highlighting for Vim
	{
		"ntpeters/vim-better-whitespace",
		config = function()
			vim.g.strip_whitespace_on_save = 1
			vim.g.strip_whitespace_confirm = 0
		end,
	},

	--
	-- IDE
	--
	-- Plugin to improve viewing Markdown files in Neovim
	{
		"MeanderingProgrammer/markdown.nvim",
		main = "render-markdown",
		opts = {},
		name = "render-markdown", -- Only needed if you have another plugin named markdown.nvim
		dependencies = { "nvim-treesitter/nvim-treesitter", "echasnovski/mini.nvim" }, -- if you use the mini.nvim suite
	},
	-- markdown preview plugin for (neo)vim
	{
		"iamcco/markdown-preview.nvim",
		cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
		build = "cd app && yarn install",
		init = function()
			vim.g.mkdp_filetypes = { "markdown" }
		end,
		ft = { "markdown" },
	},
}
