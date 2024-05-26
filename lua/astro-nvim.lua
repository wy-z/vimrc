---@type LazySpec
return {
	"AstroNvim/astrocommunity",
	{ import = "astrocommunity.motion.nvim-surround" },
	{ import = "astrocommunity.motion.flash-nvim" },
	{ import = "astrocommunity.utility.noice-nvim" },
	{ import = "astrocommunity.editing-support.nvim-treesitter-context" },
	{ import = "astrocommunity.completion.copilot-cmp" },
	{ import = "astrocommunity.diagnostics.trouble-nvim" },
	{ import = "astrocommunity.project.nvim-spectre" },
	{ import = "astrocommunity.editing-support.vim-visual-multi" },
	{ import = "astrocommunity.lsp.lsp-signature-nvim" },
	{ import = "astrocommunity.git.diffview-nvim" },
	{ import = "astrocommunity.lsp.lsp-signature-nvim" },

	--
	-- Custom
	--
	{
		"nvim-telescope/telescope.nvim",
		keys = {
			{ "<leader>p",        "<leader>ff", remap = true },
			{ "<leader>s",        "<leader>f/", remap = true },
			{ "<leader>j",        "<leader>ls", remap = true },
			{ "<leader>/",        "<leader>fW", remap = true },
			{ "<leader><leader>", "<leader>fC", remap = true },
		},
	}
}
