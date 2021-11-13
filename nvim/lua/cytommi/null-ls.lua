local lsp_config = require("lspconfig")
local null_ls = require("null-ls")

function Fmt_on_save(client)
    -- Formatting on save
    if client.resolved_capabilities.document_formatting then
        vim.cmd('autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync()')
    end
end
-- https://github.com/jose-elias-alvarez/nvim-lsp-ts-utils/issues/63
-- local local_eslint = "node_modules/.bin/eslint"
-- local local_prettier = "node_modules/.bin/prettier"

null_ls.config({ sources =  {
  null_ls.builtins.diagnostics.eslint_d,
  null_ls.builtins.formatting.prettier,
  null_ls.builtins.formatting.rustfmt,
  null_ls.builtins.formatting.styler
  -- null_ls.builtins.diagnostics.eslint.with({
  --   command = local_eslint,
  --   condition = function(utils)
  --     return utils.root_has_file(local_eslint)
  --   end,
  -- }),

  -- null_ls.builtins.formatting.eslint.with({
  --   command = local_eslint,
  --   condition = function(utils)
  --     return utils.root_has_file(local_eslint)
  --   end,
  -- }),

  -- null_ls.builtins.formatting.prettier.with({
  --   command = local_prettier,
  --   condition = function(utils)
  --     return utils.root_has_file(local_prettier)
  --   end,
  -- })
}})

lsp_config['null-ls'].setup({
  on_attach = function(client)
    Fmt_on_save(client)
  end
})
