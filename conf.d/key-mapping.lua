-- system clipboard
vim.cmd('map cp "+y')
if vim.fn.has("mac") then
    local op = vim.opt.paste:get() and "paste" or "nopaste"
    vim.cmd(string.format("inoremap <d-v> <esc>:set paste<cr>a<c-r>+<esc>:set %s<cr>a", op))
    vim.cmd([[
    noremap <d-v> "+Pa
    cnoremap <d-v> <c-r>+
  ]] )
end

-- which keys
local lvim_mappings = lvim.builtin.which_key.mappings
lvim.builtin.which_key.mappings = {
    -- lvim mappings
    e = lvim_mappings["e"],
    b = lvim_mappings["b"],
    g = lvim_mappings["g"],
    l = lvim_mappings["l"],
    L = lvim_mappings["L"],
    P = lvim_mappings["p"],
    -- custom mappings
    ["p"] = { "<cmd>Telescope git_files<cr>", "Search `git ls-files`" },
    ["pp"] = { "<cmd>Telescope find_files<cr>", "Serach files" },
    ["j"] = { "<cmd>Telescope treesitter<cr>", "Search symbols" },
    ["s"] = { "<cmd>Telescope current_buffer_fuzzy_find<cr>", "Search current buffer" },
    ["<leader>"] = { "<cmd>Telescope commands<cr>", "Lists commands" },
    ["/"] = { "<cmd>Telescope live_grep<cr>", "Search text, respects .gitignore" },
    ["//"] = {
        '<cmd>Telescope grep_string search="" only_sort_text=true shorten_path=true<cr>',
        "Search text"
    },
    ["tt"] = { "<cmd>TroubleToggle<cr>", "Toggle trouble" },
}
