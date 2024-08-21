-- Use Meta + hl to switch between tabs, and new tab with Meta+Cmd + t, close with Meta+w
vim.keymap.set('n', '<M-t>', '<cmd>tabnew<CR>', { desc = 'New tab' })
vim.keymap.set('n', '<M-h>', '<cmd>tabprevious<CR>', { desc = 'Switch to previous tab' })
vim.keymap.set('n', '<M-l>', '<cmd>tabnext<CR>', { desc = 'Switch to next tab' })
vim.keymap.set('n', '<M-w>', '<cmd>tabclose<CR>', { desc = 'Close tab' })

-- Copilot accept next word
vim.keymap.set('i', '<M-f>', '<Plug>(copilot-accept-word)')
vim.keymap.set('i', '<M-DOWN>', '<Plug>(copilot-accept-line)')

-- Set up keybinding for select all
vim.keymap.set('n', '<M-a>', 'G$vgg0', { desc = 'Select all' })

-- Set move visual blocks with Alt + jk
vim.keymap.set('v', '<M-j>', ":move '>+1<CR>gv=gv", { desc = 'Move selected lines down' })
vim.keymap.set('v', '<M-k>', ":move '<-2<CR>gv=gv", { desc = 'Move selected lines up' })
