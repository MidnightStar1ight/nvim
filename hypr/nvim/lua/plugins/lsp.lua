--Sth
local lspconfig = require('lspconfig')
lspconfig.clangd.setup {
  -- Server-specific settings. See `:help lspconfig-setup`
  settings = {
    --['rust-analyzer'] = {},
  },
}
