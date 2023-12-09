return {
  "nvimtools/none-ls.nvim",
  config = function()
    local nonels = require("null-ls")
    local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

    nonels.setup({
      sources = {
        -- formatting
        nonels.builtins.formatting.prettier,
        nonels.builtins.formatting.buf,
        nonels.builtins.formatting.stylua,
        nonels.builtins.formatting.autopep8,
        nonels.builtins.formatting.gofmt,
        nonels.builtins.formatting.goimports,
        nonels.builtins.formatting.shfmt,
        nonels.builtins.formatting.taplo,
        nonels.builtins.formatting.tidy,
        nonels.builtins.formatting.rustfmt,
      },

      -- you can reuse a shared lspconfig on_attach callback here
      on_attach = function(client, bufnr)
        if client.supports_method("textDocument/formatting") then
          vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
          vim.api.nvim_create_autocmd("BufWritePre", {
            group = augroup,
            buffer = bufnr,
            callback = function()
              vim.lsp.buf.format({ bufnr = bufnr })
            end,
          })
        end
      end,
    })
  end,
}
