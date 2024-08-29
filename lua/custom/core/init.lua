for filename in io.popen('ls ' .. vim.fn.stdpath 'config' .. '/lua/custom/core/*.lua | grep -v init.lua'):lines() do
  local module_name = string.match(filename, '([^/]+)[.]lua')
  require('custom.core.' .. module_name)
end
