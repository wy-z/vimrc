---@type LazySpec
return {
	{
		"AstroNvim/astrocore",
		opts = function(_, opts)
			opts.options.opt.relativenumber = true
			opts.options.opt.clipboard = ""
		end,
	},
	-- patch
	{
		"hrsh7th/nvim-cmp",
		enabled = false,
	},
	{
		"saghen/blink.compat",
		dependencies = { { "saghen/blink.cmp", version = "1.*" } },
		lazy = true,
		opts = { impersonate_nvim_cmp = true },
	},
	-- community plugins
	"AstroNvim/astrocommunity",
	{ import = "astrocommunity.motion.nvim-surround" },
	{ import = "astrocommunity.motion.flash-nvim" },
	{ import = "astrocommunity.utility.noice-nvim" },
	{ import = "astrocomdinity.diagnostics.trouble-nvim" },
	{ import = "astrocommunity.search.nvim-spectre" },
	{ import = "astrocommunity.editing-support.vim-visual-multi" },
	{ import = "astrocommunity.lsp.lsp-signature-nvim" },
	{ import = "astrocommunity.git.diffview-nvim" },
	{ import = "astrocommunity.lsp.lsp-signature-nvim" },
	{ import = "astrocommunity.completion.copilot-lua-cmp" },
	{ import = "astrocommunity.editing-support.nvim-treesitter-context" },
	{ import = "astrocommunity.recipes.vscode" },
}
