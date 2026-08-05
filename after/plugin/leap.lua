local leap = require('leap')

-- Sneak-style mappings; replaces the deprecated leap.create_default_mappings().
-- See :help leap-mappings
vim.keymap.set({ 'n', 'x', 'o' }, 's', '<Plug>(leap-forward)')
vim.keymap.set({ 'n', 'x', 'o' }, 'S', '<Plug>(leap-backward)')
vim.keymap.set('n', 'gs', '<Plug>(leap-from-window)')

leap.highlight = {
    label = { current = true }
}
