local line_length = 100
require('lspconfig').ruff.setup {
  init_options = {
    settings = {
      lineLength = line_length,
      lint = {
        enabled = true,
        select = { 'ALL' },
        ignore = { 'D100', 'D101', 'D102', 'D103', 'D104', 'D105', 'D106', 'D107' },
      },
    },
  },
}

require('conform').formatters.ruff_format = {
  args = {
    'format',
    '--force-exclude',
    '--line-length=' .. line_length,
    '--stdin-filename',
    '$FILENAME',
    '-',
  },
}
