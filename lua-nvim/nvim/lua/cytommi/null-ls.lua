-- local lsp_config = require("lspconfig")
local null_ls = require("null-ls")

local sources = {
      null_ls.builtins.formatting.autopep8.with({
        prefer_local = "~/.virtualenv/intus/bin/autopep8"
      }),

      null_ls.builtins.formatting.rustfmt,
      null_ls.builtins.formatting.stylua,

      null_ls.builtins.diagnostics.eslint.with({
        prefer_local = "node_modules/.bin"
      }),
      null_ls.builtins.formatting.prettier.with({
        prefer_local = "node_modules/.bin"
      })
}

null_ls.setup({
    sources = sources,
    -- you can reuse a shared lspconfig on_attach callback here
    on_attach = function(client)
        if client.resolved_capabilities.document_formatting then
            vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()")
        end
    end,
})




