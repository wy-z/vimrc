--
-- Install Lazy.vim
--

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out,                            "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end
vim.opt.rtp:prepend(lazypath)

--
-- Install AstroNvim
--

-- Dynamically import all .lua files from lua/ folder
local imports = {
	{
		"AstroNvim/AstroNvim",
		import = "astronvim.plugins",
	},
	{ import = "astro" }, -- Ensure astro.lua is imported first
}

-- Get all .lua files in the lua/ directory relative to current script
local current_dir = vim.fn.fnamemodify(vim.fn.expand("<sfile>"), ":p:h")
local lua_dir = current_dir .. "/lua"
local files = vim.fn.readdir(lua_dir, function(name)
	return name:match("%.lua$") and name ~= "astro.lua"
end)

-- Add each .lua file as an import (without .lua extension)
for _, file in ipairs(files) do
	local module_name = file:gsub("%.lua$", "")
	table.insert(imports, { import = module_name })
end

require("lazy").setup(imports)
