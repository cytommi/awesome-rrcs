local M = {}

M.toggle_quick_fix = function()
  if vim.fn.getqflist({ winid = 0 }).winid ~= 0 then
      vim.cmd [[cclose]]
  else
      vim.cmd [[copen]]
  end
end

return M
