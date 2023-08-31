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
	"fish",
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
		require("fzf-lua").setup({
			winopts = {
				on_create = function()
					vim.keymap.set("t", "<C-j>", "<Down>", { silent = true, buffer = true })
					vim.keymap.set("t", "<C-k>", "<Up>", { silent = true, buffer = true })
				end,
			},
		}),
	},
	{
		"nvim-treesitter/nvim-treesitter-context",
		config = function()
			require("treesitter-context").setup({})
		end,
	},
	-- Github Copilot
	{
		"zbirenbaum/copilot.lua",
		cmd = "Copilot",
		event = "InsertEnter",
		config = function()
			require("copilot").setup({
				{
					suggestion = { enabled = false },
					panel = { enabled = false },
				},
			})
		end,
	},
	{
		"zbirenbaum/copilot-cmp",
		dependencies = "zbirenbaum/copilot.lua",
		config = function()
			require("copilot_cmp").setup({})
		end,
	},
	-- 🚦 A pretty diagnostics, references, telescope results, quickfix and location list to help you solve all the trouble your code is causing.
	{
		"folke/trouble.nvim",
		dependencies = "nvim-tree/nvim-web-devicons",
		config = function()
			require("trouble").setup({})
		end,
	},
	-- An ack.vim alternative mimics Ctrl-Shift-F on Sublime Text 2
	{ "nvim-pack/nvim-spectre", dependencies = "nvim-lua/plenary.nvim" },
	-- Multiple cursors plugin for vim/neovim
	"mg979/vim-visual-multi",
	-- LSP signature hint as you type
	{
		"ray-x/lsp_signature.nvim",
		event = "VeryLazy",
		config = function()
			require("lsp_signature").setup({})
		end,
	},

	-- Highly experimental plugin that completely replaces the UI for messages, cmdline and the popupmenu.
	{
		"folke/noice.nvim",
		event = "VeryLazy",
		dependencies = {
			-- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
			"MunifTanjim/nui.nvim",
			-- OPTIONAL:
			--   `nvim-notify` is only needed, if you want to use the notification view.
			--   If not available, we use `mini` as the fallback
			"rcarriga/nvim-notify",
		},
	},
}) do
	table.insert(lvim.plugins, v)
end
