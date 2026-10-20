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

-- Don't have 'o' add a comment ( FileType autocmd so it applies to every buffer )
vim.api.nvim_create_autocmd('FileType', {
  callback = function(args)
    vim.bo[args.buf].formatoptions = vim.bo[args.buf].formatoptions:gsub('o', '')
  end,
})

-- Set spell checking
vim.opt.spell = true
vim.opt.spellcapcheck = ''
vim.opt.spelllang = { 'en' }
vim.opt.spelloptions = { 'camel' }
