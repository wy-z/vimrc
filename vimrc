"
" === Nvim only ===
"
if !has('nvim')
  "Do not execute rest of the script
  finish
endif


"
" === Bootstrap ===
"
let THIS_DIR = fnamemodify(resolve(expand('<sfile>:p')), ':h')
let &rtp.=','.THIS_DIR

" Automatically install packer
let s:packer_install_path = stdpath("data") . "/site/pack/packer/start/packer.nvim"
if empty(glob(s:packer_install_path))
  echom "Installing packer ..."
  let PACKER_BOOTSTRAP = system(["git", "clone", "--depth", "1",
    \ "https://github.com/wbthomason/packer.nvim", s:packer_install_path])
  packadd packer.nvim
endif


"
" === Plugins ===
"
lua <<EOF
packer = require("packer")
packer.startup(function()
  --- Have packer manage itself
  packer.use "wbthomason/packer.nvim"
  packer.init {
    display = {
      open_fn = function()
      return require("packer.util").float { border = "single" }
    end,
    prompt_border = "single",
    },
  }

  --- Load all plugin files
  vim.cmd [[
    for fpath in split(globpath(THIS_DIR.'/plugins', '*.lua'), '\n')
      exe 'luafile' fpath
    endfor
  ]]

  vim.cmd([[
    augroup packer_user_config
      autocmd!
      autocmd BufWritePost plugins/*.lua source <afile> | PackerCompile
    augroup end
  ]])

  --- Automatically set up configuration after cloning packer.nvim
  if PACKER_BOOTSTRAP then
    packer.sync()
  end
end)
EOF


"
" === Settings ===
"
" Load all setting files
for fpath in split(globpath(THIS_DIR.'/vimrcs', '*'), '\n')
  if fpath =~ '\.vim$' || fpath =~ '\.lua$'
    exe 'source' fpath
  endif
endfor
