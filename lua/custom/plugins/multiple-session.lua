return {
  'niuiic/multiple-session.nvim',
  dependencies = {
    'niuiic/core.nvim',
    'niuiic/dap-utils.nvim',
  },
  config = function()
    local core = require 'core'
    local dap_utils = require 'dap-utils'

    require('multiple-session').setup {

      auto_load_session = function(_, _)
        return true
      end,
      auto_save_session = function(_, _)
        return true
      end,

      on_session_saved = function(session_dir)
        dap_utils.store_breakpoints(session_dir .. '/breakpoints')
        dap_utils.store_watches(session_dir .. '/watches')
      end,
      on_session_restored = function(session_dir)
        if core.file.file_or_dir_exists(session_dir .. '/' .. 'breakpoints') then
          dap_utils.restore_breakpoints(session_dir .. '/breakpoints')
        end
        if core.file.file_or_dir_exists(session_dir .. '/watches') then
          dap_utils.restore_watches(session_dir .. '/watches')
        end
      end,
      session_dir = function(project_root)
        local shared = vim.fn.stdpath 'data' .. '/multiple-session'
        -- remove starting /, to create a structure within the shared directory
        local project_root_str = project_root:gsub('^/', '')
        return shared .. '/' .. project_root_str
      end,
    }
  end,
}
