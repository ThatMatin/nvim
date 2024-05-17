local api = require("nvim-tree.api")
vim.keymap.set("n","<leader>te", function() api.tree.toggle() end)
vim.keymap.set("n","<leader>fe", function() api.tree.focus() end)

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.termguicolors = true

require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})
