-- Remove the command line from the bottom of the screen. It's functionality is replaced by noice
vim.opt.cmdheight = 0

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
  },
}

-- Set spell checking
vim.opt.spell = true
vim.opt.spellcapcheck = ''
vim.opt.spelllang = { 'en' }
vim.opt.spelloptions = { 'camel' }

-- Use vim-notify
vim.notify = require 'notify'
