return {
  'kevinhwang91/nvim-ufo',
  event = 'BufReadPost',
  dependencies = {
    'kevinhwang91/promise-async',
    'nvim-treesitter/nvim-treesitter',
  },
  init = function()
    vim.o.foldenable = true
    vim.o.foldcolumn = '1'
    vim.o.foldlevel = 99
    vim.o.foldlevelstart = 99
    vim.o.fillchars = [[eob: ,fold: ,foldopen:,foldsep: ,foldclose:]]
  end,
  opts = {
    provider_selector = function()
      return { 'lsp', 'indent' }
    end,
  },
}
