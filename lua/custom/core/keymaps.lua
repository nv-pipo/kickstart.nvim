-- Use Meta + h/l to switch between buffers (tabs via tabline plugin), close with Meta+w
vim.keymap.set('n', '<M-h>', '<cmd>bprevious<CR>', { desc = 'Switch to previous buffer' })
vim.keymap.set('n', '<M-l>', '<cmd>bnext<CR>', { desc = 'Switch to next buffer' })
vim.keymap.set('n', '<M-w>', '<cmd>bwipeout<CR>', { desc = 'Close buffer' })
vim.keymap.set('n', '<M-n>', '<cmd>enew<CR>', { desc = 'Create new empty buffer' })

-- Oil
vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent directory' })

-- Copilot accept next word
vim.keymap.set('i', '<M-l>', '<Plug>(copilot-accept-word)')
vim.keymap.set('i', '<M-j>', '<Plug>(copilot-accept-line)')

-- Set up keybinding for select all
vim.keymap.set('n', '<M-ä>', 'G$vgg0', { desc = 'Select all' })

-- Comment line while in insert mode (by exiting insert mode)
vim.keymap.set('i', '<M-ş>', '<Esc>gcc', { desc = 'Comment line', remap = true })
vim.keymap.set('n', '<M-ş>', 'gcc', { desc = 'Comment line', remap = true })
vim.keymap.set('v', '<M-ş>', 'gcgv', { desc = 'Comment selection', remap = true })

-- Add keybinding to duplicate line up and down
vim.keymap.set('n', '<M-J>', 'mz"zVyP`z', { desc = 'Duplicate current line down' })
vim.keymap.set('n', '<M-K>', 'mz"zVyP`z:move .-2<CR>', { desc = 'Duplicate current line up' })

-- Add keybinding to duplicate visual block
vim.keymap.set('v', '<M-K>', "y'>pgv", { desc = 'Duplicate selected lines up' })
vim.keymap.set('v', '<M-J>', 'yPgv', { desc = 'Duplicate selected lines down' })

-- Add keybinding for moving lines up and down
vim.keymap.set('n', '<M-k>', ':m .-2<CR>==', { desc = 'Move current line up' })
vim.keymap.set('n', '<M-j>', ':m .+1<CR>==', { desc = 'Move current line down' })

-- Set move visual blocks with Alt + j/k
vim.keymap.set('v', '<M-j>', ":move '>+1<CR>gv=gv", { desc = 'Move selected lines down' })
vim.keymap.set('v', '<M-k>', ":move '<-2<CR>gv=gv", { desc = 'Move selected lines up' })

-- Keep screen centered when moving up and down
vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = 'Move half screen down' })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = 'Move half screen up' })

-- Keep screen centered when searching
vim.keymap.set('n', 'n', 'nzzzv', { desc = 'Move to next search result' })
vim.keymap.set('n', 'N', 'Nzzzv', { desc = 'Move to previous search result' })

-- Change buffer with Alt + 1/2/3/4
local function go_to_buffer(buffer_number)
  local bufs_loaded = {}
  -- filter out the buffers that are not loaded
  for _, buf_id in ipairs(vim.api.nvim_list_bufs()) do
    if vim.api.nvim_get_option_value('buflisted', { buf = buf_id }) then
      bufs_loaded[#bufs_loaded + 1] = buf_id
    end
  end
  local buf_id = bufs_loaded[buffer_number]
  if buf_id then
    vim.cmd('buffer ' .. buf_id)
  else
    vim.notify('Buffer ' .. buffer_number .. ' does not exist', 'error')
  end
end
vim.keymap.set('n', '<M-1>', function()
  go_to_buffer(1)
end, { desc = 'Switch to buffer 1' })
vim.keymap.set('n', '<M-2>', function()
  go_to_buffer(2)
end, { desc = 'Switch to buffer 2' })
vim.keymap.set('n', '<M-3>', function()
  go_to_buffer(3)
end, { desc = 'Switch to buffer 3' })
vim.keymap.set('n', '<M-4>', function()
  go_to_buffer(4)
end, { desc = 'Switch to buffer 4' })
