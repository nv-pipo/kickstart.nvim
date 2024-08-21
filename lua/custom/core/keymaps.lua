-- Use Meta + hl to switch between buffers (tabs via tabline plugin), close with Meta+w
vim.keymap.set('n', '<M-h>', '<cmd>bprevious<CR>', { desc = 'Switch to previous buffer' })
vim.keymap.set('n', '<M-l>', '<cmd>bNext<CR>', { desc = 'Switch to next buffer' })
vim.keymap.set('n', '<M-w>', '<cmd>bwipeout<CR>', { desc = 'Close buffer' })

-- Copilot accept next word
vim.keymap.set('i', '<M-f>', '<Plug>(copilot-accept-word)')
vim.keymap.set('i', '<M-DOWN>', '<Plug>(copilot-accept-line)')

-- Set up keybinding for select all
vim.keymap.set('n', '<M-a>', 'G$vgg0', { desc = 'Select all' })

-- Set move visual blocks with Alt + jk
vim.keymap.set('v', '<M-j>', ":move '>+1<CR>gv=gv", { desc = 'Move selected lines down' })
vim.keymap.set('v', '<M-k>', ":move '<-2<CR>gv=gv", { desc = 'Move selected lines up' })

-- Keep screen cenered when moving up and down
vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = 'Move half screen down' })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = 'Move half screen up' })
