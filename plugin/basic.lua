--
-- vim options
--

vim.opt.shell = "/bin/zsh" -- https://www.lunarvim.org/docs/troubleshooting#are-you-using-fish
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.relativenumber = true

-- gui options
vim.opt.guifont = "Hack Nerd Font:h14"

-- cursor highlight
vim.opt.colorcolumn = { 80, 100 }
vim.opt.cursorline = true
vim.opt.cursorcolumn = true
vim.cmd([[
  au BufWinEnter * if &filetype == '' | setlocal nocursorline nocursorcolumn colorcolumn= | endif
]])
