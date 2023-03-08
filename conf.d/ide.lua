--
-- lvim options
--

lvim.builtin.treesitter.ensure_installed = {
    "vim",
    "lua",
    "bash",
    "c",
    "elixir",
    "erlang",
    "fish",
    "gdscript",
    "go",
    "gomod",
    "html",
    "javascript",
    "typescript",
    "tsx",
    "python",
    "rust",
    "json",
    "yaml",
    "toml",
}

-- Change Telescope navigation to use j and k for navigation and n and p for history in both input and normal mode.
-- we use protected-mode (pcall) just in case the plugin wasn't loaded yet.
local _, actions = pcall(require, "telescope.actions")
lvim.builtin.telescope.defaults.mappings =
vim.tbl_deep_extend(
    "force",
    lvim.builtin.telescope.defaults.mappings,
    {
        -- for input mode
        i = {
            ["<C-j>"] = actions.move_selection_next,
            ["<C-k>"] = actions.move_selection_previous,
            ["<C-n>"] = actions.cycle_history_next,
            ["<C-p>"] = actions.cycle_history_prev
        },
        -- for normal mode
        n = {
            ["<C-j>"] = actions.move_selection_next,
            ["<C-k>"] = actions.move_selection_previous
        }
    }
)

--
-- plugins
--

for _, v in ipairs(
    {
        {
            "romgrk/nvim-treesitter-context",
            config = function()
                require("treesitter-context").setup {
                    enable = true, -- Enable this plugin (Can be enabled/disabled later via commands)
                    throttle = true, -- Throttles plugin updates (may improve performance)
                    max_lines = 0, -- How many lines the window should span. Values <= 0 mean no limit.
                    patterns = { -- Match patterns for TS nodes. These get wrapped to match at word boundaries.
                        -- For all filetypes
                        -- Note that setting an entry here replaces all other patterns for this entry.
                        -- By setting the 'default' entry below, you can control which nodes you want to
                        -- appear in the context window.
                        default = {
                            'class',
                            'function',
                            'method',
                        },
                    },
                }
            end
        },
        -- Neovim plugin for GitHub Copilot
        {
            "zbirenbaum/copilot-cmp",
            event = "InsertEnter",
            dependencies = { "zbirenbaum/copilot.lua" },
            config = function()
                require("copilot").setup({
                    suggestion = { enabled = false },
                    panel = { enabled = false },
                })
                require("copilot_cmp").setup({
                    formatters = {
                        -- remove extraneous characters such as extra ending parenthesis
                        insert_text = require("copilot_cmp.format").remove_existing
                    },
                })
                local cmp = require('cmp')
                local cr_confirm = cmp.mapping["<CR>"]
                local copilot_confirm = cmp.mapping.confirm({
                    select = true,
                    behavior = cmp.ConfirmBehavior.Replace,
                })
                cmp.setup({
                    mapping = {
                        ["<CR>"] = function(...)
                            local entry = cmp.get_selected_entry()
                            if entry and entry.source.name == "copilot" then
                                return copilot_confirm(...)
                            end
                            return cr_confirm(...)
                        end,
                    }
                })
            end,
        },
        -- 🚦 A pretty diagnostics, references, telescope results, quickfix and location list to help you solve all the trouble your code is causing.
        {
            "folke/trouble.nvim",
            dependencies = "nvim-tree/nvim-web-devicons",
            config = function()
                require("trouble").setup {}
            end
        },
        -- An ack.vim alternative mimics Ctrl-Shift-F on Sublime Text 2
        "dyng/ctrlsf.vim",
        -- Multiple cursors plugin for vim/neovim
        "mg979/vim-visual-multi",
        -- LSP signature hint as you type
        {
            "ray-x/lsp_signature.nvim",
            event = "BufRead",
            config = function()
                require "lsp_signature".on_attach()
            end
        },
        -- markdown preview plugin for (neo)vim
        {
            "iamcco/markdown-preview.nvim",
            build = "cd app && npm install",
            ft = "markdown",
        },
        -- vim match-up: even better % 👊 navigate and highlight matching words 👊 modern matchit and matchparen
        {
            "andymass/vim-matchup",
            event = "CursorMoved",
            config = function()
                vim.g.matchup_matchparen_offscreen = { method = "popup" }
            end
        },
        -- Justfile support
        "NoahTheDuke/vim-just",
        "IndianBoy42/tree-sitter-just"
    }
) do
    table.insert(lvim.plugins, v)
end
