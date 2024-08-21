require('conform').formatters.black = {
  args = {
    '--stdin-filename',
    '$FILENAME',
    '--quiet',
    '--line-length 100',
    '-',
  },
}
