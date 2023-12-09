local M = {}
local actions = require("telescope.actions")

M.git_branches = function()
	require("telescope.builtin").git_branches({
		attach_mappings = function(_, map)
			map("i", "<c-d>", actions.git_delete_branch)
			map("n", "<c-d>", actions.git_delete_branch)
			return true
		end,
	})
end

M.search_home = function()
	require("telescope.builtin").find_files({
		prompt_title = "< HOME >",
		cwd = "~",
	})
end

M.config_files = function()
	require("telescope.builtin").find_files({
		prompt_title = "< CONFIG >",
		cwd = "~/.config/",
	})
end

M.project_files = function()
	local opts = {} -- define here if you want to define something
	local ok = pcall(require("telescope.builtin").git_files, opts)
	if not ok then
		require("telescope.builtin").find_files(opts)
	end
end

return M
