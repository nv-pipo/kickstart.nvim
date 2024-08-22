-- Add keybinding for kulala (REST client)
vim.api.nvim_buf_set_keymap(0, 'n', '<S-CR>', ":lua require('kulala').run()<CR>", { noremap = true, silent = true, desc = 'Do HTTP request with kulala' })
