require('mithridates.config')
require('mithridates.mappings')
require('mithridates.autocmd')
require('mithridates.lazy')

local lspconfig = require('lspconfig')

lspconfig.rust_analyzer.setup({
  settings = {
    ['rust-analyzer'] = {
      cargo = {
        allFeatures = true,
      },
      checkOnSave = {
        command = 'clippy',
      },
    },
  },
})
