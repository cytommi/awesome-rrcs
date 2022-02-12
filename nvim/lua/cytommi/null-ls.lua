-- local lsp_config = require("lspconfig")
local null_ls = require("null-ls")

null_ls.setup({
    sources = {
      -- null_ls.builtins.diagnostics.eslint_d.with({
      --   extra_args = { "--resolve-plugins-relative-to",  "../eslint-config/" }
      -- }),
      null_ls.builtins.formatting.prettier,
      null_ls.builtins.formatting.rustfmt,
      null_ls.builtins.formatting.stylua,
      null_ls.builtins.formatting.autopep8,
      null_ls.builtins.formatting.gofmt,

    },
    -- you can reuse a shared lspconfig on_attach callback here
    on_attach = function(client)
        if client.resolved_capabilities.document_formatting then
            vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()")
        end
    end,
})

