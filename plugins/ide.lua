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

-- Nvim Treesitter configurations and abstraction layer
use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
    config = function()
        require "nvim-treesitter.configs".setup {
            ensure_installed = {
                "bash",
                "c",
                "cpp",
                "elixir",
                "erlang",
                "fish",
                "gdscript",
                "go",
                "gomod",
                "graphql",
                "html",
                "javascript",
                "json",
                "lua",
                "nix",
                "python",
                "rust",
                "toml",
                "tsx",
                "typescript",
                "yaml"
            },
            highlight = {
                enable = true
            }
        }
    end
}

-- Quickstart configurations for the Nvim LSP client
use "neovim/nvim-lspconfig"

-- A file explorer tree for neovim written in lua
use {
    "kyazdani42/nvim-tree.lua",
    requires = {{"kyazdani42/nvim-web-devicons"}},
    config = function()
        require "nvim-tree".setup {
            actions = {
                open_file = {resize_window = true}
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
                ["<Tab>"] = cmp.mapping.select_next_item({behavior = cmp.SelectBehavior.Insert})
            },
            sources = {
                {name = "nvim_lsp"},
                {name = "buffer"},
                {name = "path"}
            }
        }
    end
}

-- LSP signature hint as you type
use {
    "ray-x/lsp_signature.nvim",
    config = function()
        require "lsp_signature".setup {
            fix_pos = true
        }
    end
}

-- vim match-up: even better % 👊 navigate and highlight matching words 👊 modern matchit and matchparen
use {
    "andymass/vim-matchup"
}

-- Asynchronous linting and make framework
use "neomake/neomake"

-- A (Neo)vim plugin for formatting code
use "sbdchd/neoformat"

-- fzf ❤️  vim
use {
    "ibhagwan/fzf-lua",
    -- optional for icon support
    requires = {"kyazdani42/nvim-web-devicons"},
    config = function()
        require "fzf-lua".setup {
            fzf_opts = {
                ["--layout"] = "default"
            }
        }
    end
}
