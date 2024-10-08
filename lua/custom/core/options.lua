-- avante recommendation for laststatus
vim.opt.laststatus = 3

-- nvim-notify
vim.notify = require 'notify'

-- Make line numbers relative
vim.opt.relativenumber = true

-- Set backspace to be more intuitive
vim.opt.backspace = { 'indent', 'eol', 'start' }

-- Live preview
vim.opt.inccommand = 'split'

-- Don't have 'o' add a comment
vim.opt.formatoptions:remove 'o'

vim.filetype.add {
  extension = {
    -- Add extension for 'http' filetype. Required for kulala
    ['http'] = 'http',
    -- Add extension for 'kql' filetype. KUSTO Query Language
    ['kql'] = 'kusto',
  },
}

-- Set spell checking
vim.opt.spell = true
vim.opt.spellcapcheck = ''
vim.opt.spelllang = { 'en' }
vim.opt.spelloptions = { 'camel' }
