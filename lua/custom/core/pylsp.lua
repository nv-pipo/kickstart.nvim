require('lspconfig').pylsp.setup {
  plugins = {
    autopep8 = { enabled = false },
    yapf = { enabled = false },
    pyflakes = { enabled = false },
    pycodestyle = { enabled = false },
    mccabe = { enabled = true },
  },
}
