local M = {}

M.open_in_browser = function()
	-- Get the current buffer's file path
	local buffer = vim.api.nvim_get_current_buf()
	local file_path = vim.api.nvim_buf_get_name(buffer)

	-- Format the URL for Enterprise GitHub
	local base_url = "https://your-enterprise-github.com/repos/your-org/your-repo/blob/master"
	local file_url = base_url .. file_path

	-- Try to open the URL in the default web browser
	local command = "silent !open " .. file_url
	if vim.api.nvim_call_function("system", { command }) ~= 0 then
		-- If the Enterprise GitHub URL was not found, try GitHub.com
		file_url = "https://github.com/your-org/your-repo/blob/master" .. file_path
		command = "silent !open " .. file_url
		vim.api.nvim_command(command)
	end
end

return M
