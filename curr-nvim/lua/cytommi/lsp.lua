local lsp_installer = require("nvim-lsp-installer")

vim.diagnostic.config({
	float = {
		source = "always",
	},
})

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local function on_attach(client, bufnr)
	local function buf_set_keymap(...)
		vim.api.nvim_buf_set_keymap(bufnr, ...)
	end
	local function buf_set_option(...)
		vim.api.nvim_buf_set_option(bufnr, ...)
	end

	-- Enable completion triggered by <c-x><c-o>
	buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")

	-- (optional) Customize the options passed to the server
	if client.name == "tsserver" then
		-- Use null-ls for all formatting
		client.resolved_capabilities.document_formatting = false
		client.resolved_capabilities.document_range_formatting = false

		local ts_utils = require("nvim-lsp-ts-utils")
		ts_utils.setup({})
	end

	if client.name == "denols" then
		-- Use null-ls for all formatting
		client.resolved_capabilities.document_formatting = false
		client.resolved_capabilities.document_range_formatting = false
	end

	if client.name == "gopls" then
		-- Use null-ls for all formatting
		client.resolved_capabilities.document_formatting = false
		client.resolved_capabilities.document_range_formatting = false
	end

	if client.name == "rust_analyzer" then
		-- Use null-ls for all formatting
		client.resolved_capabilities.document_formatting = false
		client.resolved_capabilities.document_range_formatting = false
	end

	-- Mappings.
	local opts = { noremap = true, silent = true }

	-- See `:help vim.lsp.*` for documentation on any of the below functions
	buf_set_keymap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
	-- buf_set_keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
	buf_set_keymap("n", "gd", ":lua require('telescope.builtin').lsp_definitions()<cr>", opts)
	-- buf_set_keymap("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
	buf_set_keymap("n", "gr", ":lua require('telescope.builtin').lsp_references()<cr>", opts)
	buf_set_keymap("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
	buf_set_keymap("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
	buf_set_keymap("n", "<C-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
	buf_set_keymap("n", "<leader>wa", "<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>", opts)
	buf_set_keymap("n", "<leader>wr", "<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>", opts)
	buf_set_keymap("n", "<leader>wl", "<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>", opts)
	buf_set_keymap("n", "<leader>D", "<cmd>lua vim.lsp.buf.type_definition()<CR>", opts)
	buf_set_keymap("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
	buf_set_keymap("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts)
	buf_set_keymap("n", "<space>e", "<cmd>lua vim.diagnostic.open_float()<CR>", opts)
	buf_set_keymap("n", "[d", "<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>", opts)
	buf_set_keymap("n", "]d", "<cmd>lua vim.lsp.diagnostic.goto_next()<CR>", opts)
	buf_set_keymap("n", "<space>q", "<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>", opts)
	buf_set_keymap("n", "<space>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)

	-- lspsaga overrides
	-- buf_set_keymap('n', '<leader>ca', "<cmd>lua require('lspsaga.codeaction').code_action()<CR>", opts)
	-- buf_set_keymap('n', 'K', "<cmd>lua require('lspsaga.hover').render_hover_doc()<CR>", opts)
	-- buf_set_keymap('n', '<leader>sh', "<cmd>lua require('lspsaga.signaturehelp').signature_help()<CR>", opts)
	-- buf_set_keymap('n', '<leader>rn', "<cmd>lua require('lspsaga.rename').rename()<CR>", opts)
	-- buf_set_keymap('n', '<leader>sd', "<cmd>lua require('lspsaga.provider').preview_definition()<CR>", opts)
	-- buf_set_keymap('n', '<leader>e', "<cmd>lua require('lspsaga.diagnostic').show_line_diagnostics()<CR>", opts)
	-- buf_set_keymap('n', '<leader>]e', "<cmd>lua require'lspsaga.diagnostic'.lsp_jump_diagnostic_prev()<CR>", opts)
	-- buf_set_keymap('n', '<leader>[e', "<cmd>lua require'lspsaga.diagnostic'.lsp_jump_diagnostic_next()<CR>", opts)
end

lsp_installer.on_server_ready(function(server)
	local opts = {}
	server:setup({
		on_attach = on_attach,
		flags = {
			debounce_text_changes = 150,
		},
	})
end)
