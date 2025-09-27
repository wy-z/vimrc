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

	-- Claude Code Neovim IDE Extension
	{
		"coder/claudecode.nvim",
		dependencies = { "folke/snacks.nvim" },
		config = true,
		keys = {
			{ "<leader>a", desc = "AI/Claude" },
			{ "<leader>aa", "<cmd>ClaudeCode<cr>", desc = "Toggle" },
			{ "<leader>ar", "<cmd>ClaudeCode --resume<cr>", desc = "Resume" },
			{ "<leader>ac", "<cmd>ClaudeCode --continue<cr>", desc = "Continue" },
			{ "<leader>ab", "<cmd>ClaudeCodeAdd %<cr>", desc = "Add buffer" },
			{ "<leader>as", "<cmd>ClaudeCodeSend<cr>", mode = "v", desc = "Send selection" },
			{
				"<leader>at",
				"<cmd>ClaudeCodeTreeAdd<cr>",
				desc = "Add from tree",
				ft = { "NvimTree", "neo-tree", "oil", "minifiles" },
			},
			{ "<leader>aj", "<cmd>ClaudeCodeDiffAccept<cr>", desc = "Accept diff" },
			{ "<leader>ak", "<cmd>ClaudeCodeDiffDeny<cr>", desc = "Deny diff" },
		},
	},
}
