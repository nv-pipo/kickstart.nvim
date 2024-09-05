return {
  'luukvbaal/statuscol.nvim',
  config = function()
    local builtin = require 'statuscol.builtin'
    require('statuscol').setup {
      relculright = true,
      segments = {
        { text = { '%s' }, click = 'v:lua.ScSa' },
        { sign = { name = { 'Dap' }, maxwidth = 1, colwidth = 2, auto = false }, click = 'v:lua.ScSa' },
        { text = { builtin.lnumfunc, ' ' }, condition = { true, builtin.not_empty }, click = 'v:lua.ScLa' },
        { text = { ' ', builtin.foldfunc, ' ' }, click = 'v:lua.ScFa' },
      },
    }
  end,
}
