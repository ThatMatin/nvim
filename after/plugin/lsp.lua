local lsp_zero = require('lsp-zero')

-- Servers are started by vim.lsp.enable() (via mason-lspconfig's automatic_enable),
-- not by lspconfig.setup(), so lsp-zero's own on_attach hook never fires.
-- Attach the keymaps from the LspAttach event instead.
vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(event)
    -- see :help lsp-zero-keybindings
    lsp_zero.default_keymaps({
      buffer = event.buf,
      preserve_mappings = false
    })
  end,
})

lsp_zero.set_sign_icons({
  error = '✘',
  warn = '▲',
  hint = '⚑',
  info = '»'
})

require('mason').setup({})

-- mason-lspconfig v2 dropped the `handlers` option: installed servers are
-- enabled automatically with vim.lsp.enable().
require('mason-lspconfig').setup({
  ensure_installed = {},
})
