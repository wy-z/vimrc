local use = packer.use

--
-- === UI ===
--

-- Dark theme for all the things!
use "dracula/vim"

-- A blazing fast and easy to configure neovim statusline plugin written in pure lua.
use "nvim-lualine/lualine.nvim"

--
-- === Functional enhancements ===
--

-- Vim plugin that allows you to visually select increasingly larger regions of text using the same key combination.
use "terryma/vim-expand-region"

-- Smart and powerful comment plugin for neovim. Supports treesitter, dot repeat, left-right/up-down motions, hooks, and more
use {
    "numToStr/Comment.nvim",
    config = function()
        require("Comment").setup()
    end
}

-- sensible.vim: Defaults everyone can agree on
use "tpope/vim-sensible"
-- quoting/parenthesizing made simple
use "tpope/vim-surround"
-- enable repeating supported plugin maps with '.'
use "tpope/vim-repeat"
-- sleuth.vim: Heuristically set buffer options
use "tpope/vim-sleuth"
-- Pairs of handy bracket mappings
use "tpope/vim-unimpaired"

-- Next-generation motion plugin with incremental input processing, allowing for unparalleled speed with near-zero cognitive effort
use "ggandor/lightspeed.nvim"

-- autopairs for neovim written by lua
use {
    "windwp/nvim-autopairs",
    config = function()
        require("nvim-autopairs").setup {}
    end
}

-- Indent guides for Neovim
use {
    "lukas-reineke/indent-blankline.nvim",
    config = function()
        require("indent_blankline").setup {
            show_current_context = true,
            show_current_context_start = true
        }
    end
}

-- Make Vim persist editing state without fuss
use "zhimsel/vim-stay"

-- Range, pattern and substitute preview for Vim
use "markonm/traces.vim"

-- Search local vimrc files (".lvimrc") in the tree (root dir up to current dir) and load them.
use "embear/vim-localvimrc"

-- Better whitespace highlighting for Vim
use "ntpeters/vim-better-whitespace"
