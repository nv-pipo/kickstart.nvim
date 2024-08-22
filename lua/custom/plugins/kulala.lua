return {
  'mistweaverco/kulala.nvim',
  opts = {
    default_view = 'headers_body',
    contenttypes = {
      ['application/json'] = {
        ft = 'json',
        formatter = { 'jsonlint' },
      },
      ['application/xml'] = {
        ft = 'xml',
        formatter = { 'xmllint', '--format', '-' },
        pathresolver = { 'xmllint', '--xpath', '{{path}}', '-' },
      },
      ['text/html'] = {
        ft = 'html',
        formatter = { 'xmllint', '--format', '--html', '-' },
        pathresolver = {},
      },
    },
  },
}
