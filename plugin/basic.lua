--
-- vim options
--

vim.opt.clipboard = ""
vim.opt.shell = "/bin/bash" -- https://www.lunarvim.org/docs/troubleshooting#are-you-using-fish
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
-- gui options
vim.opt.guifont = "Hack Nerd Font:h14"
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
