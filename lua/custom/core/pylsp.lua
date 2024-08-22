require('lspconfig').pylsp.setup {
  settings = {
    pylsp = {
      plugins = {
        rope_autoimport = { enabled = true },
        autopep8 = { enabled = false },
        yapf = { enabled = false },
        pyflakes = { enabled = false },
        pycodestyle = { enabled = false },
        mccabe = { enabled = true },
      },
    },
  },
}
