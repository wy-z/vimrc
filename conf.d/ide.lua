--
-- lvim options
--

lvim.builtin.treesitter.ensure_installed = {
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
}

--
-- plugins
--

for _, v in ipairs({
  -- An ack.vim alternative mimics Ctrl-Shift-F on Sublime Text 2
  "dyng/ctrlsf.vim",
  -- Sublime Text style multiple selections for Vim
  "terryma/vim-multiple-cursors",
  -- LSP signature hint as you type
  {
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
    config = function() require "lsp_signature".on_attach() end,
  },
  -- markdown preview plugin for (neo)vim
  {
    "iamcco/markdown-preview.nvim",
    run = "cd app && npm install",
    ft = { "markdown" },
  },
  -- vim match-up: even better % 👊 navigate and highlight matching words 👊 modern matchit and matchparen
  {
    "andymass/vim-matchup",
    event = "CursorMoved",
    config = function()
      vim.g.matchup_matchparen_offscreen = { method = "popup" }
    end,
  }
}) do
  table.insert(lvim.plugins, v)
end
