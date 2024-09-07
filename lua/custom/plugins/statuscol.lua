return {
  'luukvbaal/statuscol.nvim',
  config = function()
    local builtin = require 'statuscol.builtin'
    require('statuscol').setup {
      relculright = true,
      segments = {
        { sign = { namespace = { 'diagnostic/signs' }, colwidth = 2, maxwidth = 1, auto = false }, click = 'v:lua.ScSa' },
        { sign = { name = { 'Dap' }, maxwidth = 1, colwidth = 2, auto = true }, click = 'v:lua.ScSa' },
        { text = { builtin.lnumfunc, ' ' }, condition = { true, builtin.not_empty }, click = 'v:lua.ScLa' },
        { sign = { namespace = { 'gitsigns' }, name = { '.*' }, maxwidth = 1, colwidth = 1, auto = false }, click = 'v:lua.ScSa' },
        { text = { builtin.foldfunc, ' ' }, click = 'v:lua.ScFa' },
      },
    }
  end,
}
