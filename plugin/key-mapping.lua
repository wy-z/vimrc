-- system clipboard
vim.opt.clipboard = ""
vim.cmd('map cp "+y')

-- alias key maps
vim.keymap.set("n", "<leader>p", "<leader>ff", { remap = true })
vim.keymap.set("n", "<leader>s", "<leader>f/", { remap = true })
vim.keymap.set("n", "<leader>j", "<leader>ls", { remap = true })
vim.keymap.set("n", "<leader>/", "<leader>fW", { remap = true })
vim.keymap.set("n", "<leader><leader>", "<leader>fC", { remap = true })
