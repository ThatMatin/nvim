require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "lua", "vim", "python", "vimdoc", "query" },

  sync_install = true,

  auto_install = true,

  highlight = {
      enable = true,
  }
}
