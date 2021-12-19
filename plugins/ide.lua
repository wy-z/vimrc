local use = packer.use

--
-- === IDE ===
--

-- Git integration for buffers
use {
    "lewis6991/gitsigns.nvim",
    requires = {
        "nvim-lua/plenary.nvim"
    }
}

-- An ack.vim alternative mimics Ctrl-Shift-F on Sublime Text 2
use "dyng/ctrlsf.vim"

-- True Sublime Text style multiple selections for Vim
use "terryma/vim-multiple-cursors"

-- Find, Filter, Preview, Pick. All lua, all the time.
use {
    "nvim-telescope/telescope.nvim",
    requires = {{"nvim-lua/plenary.nvim"}},
    config = function()
        local actions = require("telescope.actions")
        require("telescope").setup {
            defaults = {
                mappings = {
                    i = {
                        ["<C-j>"] = actions.move_selection_next,
                        ["<C-k>"] = actions.move_selection_previous
                    }
                }
            }
        }
    end
}

-- Nvim Treesitter configurations and abstraction layer
use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate"
}

-- Quickstart configurations for the Nvim LSP client
use "neovim/nvim-lspconfig"

-- A file explorer tree for neovim written in lua
use {
    "kyazdani42/nvim-tree.lua",
    requires = {{"kyazdani42/nvim-web-devicons"}},
    config = function()
        require "nvim-tree".setup {
            disable_netrw = false,
            auto_close = true,
            git = {
                ignore = true
            },
            view = {
                -- if true the tree will resize itself after opening a file
                auto_resize = true
            }
        }
    end
}

-- A completion plugin for neovim coded in Lua.
use {
    "hrsh7th/nvim-cmp",
    requires = {{"hrsh7th/cmp-nvim-lsp", "hrsh7th/cmp-buffer", "hrsh7th/cmp-path"}},
    config = function()
        local cmp = require "cmp"

        cmp.setup {
            mapping = {
                ["<C-k>"] = cmp.mapping.select_prev_item(),
                ["<C-j>"] = cmp.mapping.select_next_item(),
                ["<CR>"] = cmp.mapping.confirm {select = true},
                ["<Tab>"] = cmp.mapping(
                    function(fallback)
                        if cmp.visible() then
                            cmp.select_next_item()
                        else
                            fallback()
                        end
                    end,
                    {
                        "i",
                        "s"
                    }
                )
            },
            sources = {
                {name = "nvim_lsp"},
                {name = "buffer"},
                {name = "path"}
            }
        }
    end
}

-- Asynchronous linting and make framework
use "neomake/neomake"

-- A (Neo)vim plugin for formatting code
use "sbdchd/neoformat"
