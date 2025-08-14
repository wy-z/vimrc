---@type LazySpec
return {
	-- community plugins
	"AstroNvim/astrocommunity",
	{ import = "astrocommunity.motion.nvim-surround" },
	{ import = "astrocommunity.motion.flash-nvim" },
	{ import = "astrocommunity.utility.noice-nvim" },
	{ import = "astrocommunity.diagnostics.trouble-nvim" },
	{ import = "astrocommunity.search.nvim-spectre" },
	{ import = "astrocommunity.editing-support.vim-visual-multi" },
	{ import = "astrocommunity.git.diffview-nvim" },
	{ import = "astrocommunity.lsp.lsp-signature-nvim" },
	{ import = "astrocommunity.completion.copilot-lua-cmp" },
	{ import = "astrocommunity.editing-support.nvim-treesitter-context" },
}
