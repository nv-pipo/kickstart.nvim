return {
  'zbirenbaum/copilot.lua',
  cmd = 'Copilot',
  event = 'InsertEnter',
  config = function()
    require('copilot').setup {
      panel = {
        enable = false,
      },
      suggestion = {
        auto_trigger = true,
        keymap = {
          accept = '<tab>',
          accept_word = '<M-l>',
          accept_line = '<M-j>',
          next = '<M-]>',
          prev = '<M-[>',
          dismiss = '<C-]>',
        },
      },
      filetypes = {
        yaml = false,
        markdown = false,
        help = false,
        gitcommit = false,
        gitrebase = false,
        hgcommit = false,
        svn = false,
        cvs = false,
        python = true,
        ['.'] = false,
      },
    }
  end,
}
