-- nvim-surround v4 removed the `keymaps` option from setup(); the defaults are
-- disabled with vim.g.nvim_surround_no_visual_mappings (set in init.lua, before
-- the plugin loads) and rebound here. See :help nvim-surround.migrating.v3_to_v4
require('nvim-surround').setup({})

vim.keymap.set("x", "ys", "<Plug>(nvim-surround-visual)", {
    desc = "Add a surrounding pair around a visual selection",
})
vim.keymap.set("x", "gys", "<Plug>(nvim-surround-visual-line)", {
    desc = "Add a surrounding pair around a visual selection, on new lines",
})
