local builtin = require('telescope.builtin')
vim.keymap.set('n', 'ff', builtin.find_files, {})
vim.keymap.set('n', 'fg', builtin.git_files, {})
vim.keymap.set('n', 'fr', builtin.live_grep, {}) -- requires ripgrep
vim.keymap.set('n', 'fb', builtin.buffers, {})
