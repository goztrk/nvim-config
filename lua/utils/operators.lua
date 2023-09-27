local M = {}

M.tblin = function(a, tbl)
  for _, v in pairs(tbl) do
    if v == a then
      return true
    end
  end
  return false
end

return M
