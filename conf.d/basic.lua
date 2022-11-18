--
-- vim options
--

vim.o.clipboard = ""
-- gui options
vim.o.guifont = "Hack Nerd Font:h13"
-- neovide
if vim.g.neovide then
    -- full screen
    local timer = vim.loop.new_timer()
    timer:start(
        620,
        0,
        function()
            vim.g.neovide_fullscreen = true
        end
    )
end
-- cursor highlight
vim.opt.colorcolumn = { 80, 100 }
vim.opt.cursorline = true
vim.opt.cursorcolumn = true
vim.cmd([[
  au BufWinEnter * if &filetype == '' | setlocal nocursorline nocursorcolumn colorcolumn= | endif
]])

--
-- lvim options
--

lvim.format_on_save.enabled = true

---
--- plugins
---

for _, v in ipairs(
    {
        -- Vim plugin that allows you to visually select increasingly larger regions of text using the same key combination.
        "terryma/vim-expand-region",
        -- quoting/parenthesizing made simple
        "tpope/vim-surround",
        -- sleuth.vim: Heuristically set buffer options
        "tpope/vim-sleuth",
        -- Pairs of handy bracket mappings
        "tpope/vim-unimpaired",
        -- Next-generation motion plugin with incremental input processing, allowing for unparalleled speed with near-zero cognitive effort
        {
            "ggandor/lightspeed.nvim",
            event = "BufRead"
        },
        -- Make Vim persist editing state without fuss
        "zhimsel/vim-stay",
        -- Range, pattern and substitute preview for Vim
        "markonm/traces.vim",
        -- Better whitespace highlighting for Vim
        "ntpeters/vim-better-whitespace"
    }
) do
    table.insert(lvim.plugins, v)
end
