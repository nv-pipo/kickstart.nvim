-- Use Meta + hl to switch between buffers (tabs via tabline plugin), close with Meta+w
vim.keymap.set('n', '<M-h>', '<cmd>bprevious<CR>', { desc = 'Switch to previous buffer' })
vim.keymap.set('n', '<M-l>', '<cmd>bnext<CR>', { desc = 'Switch to next buffer' })
vim.keymap.set('n', '<M-w>', '<cmd>bwipeout<CR>', { desc = 'Close buffer' })

-- Copilot accept next word
vim.keymap.set('i', '<M-l>', '<Plug>(copilot-accept-word)')
vim.keymap.set('i', '<M-j>', '<Plug>(copilot-accept-line)')

-- Set up keybinding for select all
vim.keymap.set('n', '<M-a>', 'G$vgg0', { desc = 'Select all' })

-- Add keybinding to duplicate line up and down
vim.keymap.set('n', '<M-J>', 'mz"zVyP`z', { desc = 'Duplicate current line down' })
vim.keymap.set('n', '<M-K>', 'mz"zVyP`z:move .-2<CR>', { desc = 'Duplicate current line up' })

-- Add keybinding to duplicate visual block
vim.keymap.set('v', '<M-K>', "y'>pgv", { desc = 'Duplicate selected lines up' })
vim.keymap.set('v', '<M-J>', 'yPgv', { desc = 'Duplicate selected lines down' })

-- Add keybinding for moving lines up and down
vim.keymap.set('n', '<M-k>', ':m .-2<CR>==', { desc = 'Move current line up' })
vim.keymap.set('n', '<M-j>', ':m .+1<CR>==', { desc = 'Move current line down' })

-- Set move visual blocks with Alt + jk
vim.keymap.set('v', '<M-j>', ":move '>+1<CR>gv=gv", { desc = 'Move selected lines down' })
vim.keymap.set('v', '<M-k>', ":move '<-2<CR>gv=gv", { desc = 'Move selected lines up' })

-- Keep screen cenered when moving up and down
vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = 'Move half screen down' })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = 'Move half screen up' })

-- Keep screen centered when searching
vim.keymap.set('n', 'n', 'nzzzv', { desc = 'Move to next search result' })
vim.keymap.set('n', 'N', 'Nzzzv', { desc = 'Move to previous search result' })
