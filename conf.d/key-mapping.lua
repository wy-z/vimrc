-- system clipboard
vim.cmd('map cp "+y')
if vim.fn.has("mac") then
	local op = vim.opt.paste:get() and "paste" or "nopaste"
	vim.cmd(string.format("inoremap <d-v> <esc>:set paste<cr>a<c-r>+<esc>:set %s<cr>a", op))
	vim.cmd([[
        noremap <d-v> "+Pa
        cnoremap <d-v> <c-r>+
        tnoremap <expr> <d-v> '<c-\><c-n>"+Pi'
    ]])
end

-- which keys
for k, v in pairs({
	["p"] = { "<cmd>lua require('fzf-lua').files()<cr>", "Serach files" },
	["pp"] = { "<cmd>lua require('fzf-lua').git_files()<cr>", "Search `git ls-files`" },
	["j"] = { "<cmd>lua require('fzf-lua').lsp_document_symbols()<cr>", "Search symbols" },
	["s"] = { "<cmd>lua require('fzf-lua').lgrep_curbuf()<cr>", "Search current buffer" },
	["S"] = { "<cmd>lua require('spectre').open()<CR>", "Open Spectre" },
	["<leader>"] = { "<cmd>lua require('fzf-lua').commands()<cr>", "Lists commands" },
	["/"] = { "<cmd>lua require('fzf-lua').live_grep()<cr>", "Search text, respects .gitignore" },
	["tt"] = { "<cmd>TroubleToggle<cr>", "Toggle trouble" },
	["tf"] = { "<cmd>NvimTreeToggle<cr>", "Toggle nvim-tree" },
}) do
	lvim.builtin.which_key.mappings[k] = v
end
