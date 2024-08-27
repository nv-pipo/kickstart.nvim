-- Add keybinding for kulala (REST client)
vim.keymap.set('n', '<S-CR>', ":lua require('kulala').run()<CR>", { noremap = true, silent = true, desc = 'Do HTTP request with kulala', buffer = 0 })
