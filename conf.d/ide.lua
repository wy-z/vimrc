--
-- lvim options
--

lvim.builtin.treesitter.ensure_installed = {
	"vim",
	"lua",
	"bash",
	"c",
	"elixir",
	"erlang",
	"gdscript",
	"go",
	"gomod",
	"html",
	"javascript",
	"typescript",
	"tsx",
	"python",
	"rust",
	"json",
	"yaml",
	"toml",
}

--
-- plugins
--

for _, v in ipairs({
	{
		"ibhagwan/fzf-lua",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		opts = {
			winopts = {
				on_create = function()
					vim.keymap.set("t", "<C-j>", "<Down>", { silent = true, buffer = true })
					vim.keymap.set("t", "<C-k>", "<Up>", { silent = true, buffer = true })
				end,
			},
		},
	},
	{
		"nvim-treesitter/nvim-treesitter-context",
		opts = {},
	},
	-- Github Copilot
	{
		"zbirenbaum/copilot.lua",
		cmd = "Copilot",
		event = "InsertEnter",
		opts = {
			-- for https://github.com/zbirenbaum/copilot-cmp
			suggestion = { enabled = false },
			panel = { enabled = false },
		},
	},
	{
		"zbirenbaum/copilot-cmp",
		dependencies = "zbirenbaum/copilot.lua",
		opts = {},
	},
	-- 🚦 A pretty diagnostics, references, telescope results, quickfix and location list to help you solve all the trouble your code is causing.
	{
		"folke/trouble.nvim",
		dependencies = "nvim-tree/nvim-web-devicons",
		opts = {},
	},
	-- An ack.vim alternative mimics Ctrl-Shift-F on Sublime Text 2
	{ "nvim-pack/nvim-spectre", dependencies = "nvim-lua/plenary.nvim" },
	-- Multiple cursors plugin for vim/neovim
	"mg979/vim-visual-multi",
	-- LSP signature hint as you type
	{
		"ray-x/lsp_signature.nvim",
		event = "BufRead",
		opts = {},
	},
	-- Single tabpage interface for easily cycling through diffs for all modified files for any git rev.
	{ "sindrets/diffview.nvim" },
	-- markdown preview plugin for (neo)vim
	{
		"iamcco/markdown-preview.nvim",
		build = "cd app && npm install",
		ft = "markdown",
	},
	-- Vim Just Syntax
	{ "NoahTheDuke/vim-just" },
}) do
	table.insert(lvim.plugins, v)
end
