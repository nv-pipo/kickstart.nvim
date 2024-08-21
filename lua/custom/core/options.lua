-- Make line numbers relative
vim.opt.relativenumber = true

-- Set backspace to be more intuitive
vim.opt.backspace = { 'indent', 'eol', 'start' }

-- Don't have 'o' add a comment
vim.opt.formatoptions:remove 'o'
