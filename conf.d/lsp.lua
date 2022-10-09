--
-- lsp
--

lvim.lsp.installer.setup.ensure_installed = {
    "jedi_language_server", "bashls", "tsserver", "gopls"
}
vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "pyright" })

--
-- null-ls
--

local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
    -- python
    { command = "black", filetypes = { "python" } },
    { command = "isort", filetypes = { "python" } },
    -- prettier
    {
        command = "prettier",
        filetypes = { "typescript", "typescriptreact", "javascript", "javascriptreact",
            "markdown", "json", "yaml", "css", "html" },
    },
    -- shell
    { command = "shfmt", filetypes = { "sh" } },
    -- go
    { command = "goimports", filetypes = { "go" } }
}

local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
    -- python
    { command = "flake8", filetypes = { "python" }, },
    { command = "mypy", filetypes = { "python" } },
}
