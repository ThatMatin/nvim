require("neodev").setup()

-- vim.lsp.config replaces lspconfig.<server>.setup(); see :help lspconfig-nvim-0.11
-- The server is enabled by mason-lspconfig's automatic_enable.
vim.lsp.config('lua_ls', {
  settings = {
    Lua = {
      completion = {
        callSnippet = "Replace"
      }
    }
  }
})
