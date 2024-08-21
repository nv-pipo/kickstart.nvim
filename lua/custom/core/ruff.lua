require('lspconfig').ruff.setup {
  init_options = {
    settings = {
      lineLength = 100,
      lint = {
        enabled = true,
        select = { 'ALL' },
        ignore = { 'D100', 'D101', 'D102', 'D103', 'D104', 'D105', 'D106', 'D107' },
      },
    },
  },
}
