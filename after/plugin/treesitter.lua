require('nvim-treesitter').install({ "c", "lua", "vim", "python", "vimdoc", "query" })

vim.api.nvim_create_autocmd('FileType', {
  callback = function() pcall(vim.treesitter.start) end,
})
