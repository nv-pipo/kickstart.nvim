-- Text to speach visually selected text
local start_tts = function()
  -- Save the visually selected text to register 's'
  vim.cmd.norm '"sy'
  -- Get the text from register 's'
  local text = vim.fn.getreg 's'
  -- Speak the text with a rate of 200 words per minutes
  vim.system { 'say', text, '-r 200' }
end

-- Stop speaking
local stop_tts = function()
  vim.system { 'pkill', 'say' }
end

vim.keymap.set('v', '<leader>s', start_tts, { desc = '[S]peak visually selected text' })
vim.keymap.set('n', '<leader>ks', stop_tts, { desc = '[K]ill [S]peak visually selected text' })
