-- system clipboard
vim.opt.clipboard = ""
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

-- alias key maps
vim.keymap.set("n", "<leader>p", "<leader>ff", { remap = true })
vim.keymap.set("n", "<leader>s", "<leader>f/", { remap = true })
vim.keymap.set("n", "<leader>j", "<leader>ls", { remap = true })
vim.keymap.set("n", "<leader>/", "<leader>fW", { remap = true })
vim.keymap.set("n", "<leader><leader>", "<leader>fC", { remap = true })
