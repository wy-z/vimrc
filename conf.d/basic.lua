--
-- vim options
--

vim.opt.clipboard = ""
vim.opt.shell = "/bin/bash" -- https://www.lunarvim.org/docs/troubleshooting#are-you-using-fish
-- gui options
vim.opt.guifont = "Hack Nerd Font:h14"
-- neovide
if vim.g.neovide then
	-- full screen
	local timer = vim.loop.new_timer()
	timer:start(620, 0, function()
		vim.g.neovide_fullscreen = true
	end)
end
-- cursor highlight
vim.opt.colorcolumn = { 80, 100 }
vim.opt.cursorline = true
vim.opt.cursorcolumn = true
vim.cmd([[
  au BufWinEnter * if &filetype == '' | setlocal nocursorline nocursorcolumn colorcolumn= | endif
]])
-- encoding
vim.cmd([[
  set fileencodings=ucs-bom,utf-8,gb18030,default,latin1
]])

--
-- lvim options
--

lvim.format_on_save.enabled = true
lvim.builtin.telescope.active = false

---
--- plugins
---

-- embear/vim-localvimrc
vim.g.localvimrc_persistent = 2

for _, v in ipairs({
	-- Add/change/delete surrounding delimiter pairs with ease. Written with ❤️ in Lua.
	{
		"kylechui/nvim-surround",
		version = "*", -- Use for stability; omit to use `main` branch for the latest features
		event = "VeryLazy",
		config = function()
			require("nvim-surround").setup({})
		end,
	},
	-- sleuth.vim: Heuristically set buffer options
	"tpope/vim-sleuth",
	-- enable repeating supported plugin maps with "."
	"tpope/vim-repeat",
	-- Make Vim persist editing state without fuss
	"zhimsel/vim-stay",
	-- Navigate your code with search labels, enhanced character motions and Treesitter integration
	{
		"folke/flash.nvim",
		event = "VeryLazy",
		keys = {
			{
				"s",
				mode = { "n", "x", "o" },
				function()
					require("flash").jump()
				end,
				desc = "Flash",
			},
			{
				"S",
				mode = { "n", "o", "x" },
				function()
					require("flash").treesitter()
				end,
				desc = "Flash Treesitter",
			},
		},
	},
	-- Better whitespace highlighting for Vim
	{
		"ntpeters/vim-better-whitespace",
		config = function()
			vim.g.strip_whitespace_on_save = 1
		end,
	},
	-- Search local vimrc files (".lvimrc") in the tree (root dir up to current dir) and load them.
	"embear/vim-localvimrc",
}) do
	table.insert(lvim.plugins, v)
end
