local keymap = vim.keymap
-- Increment/Decrement (+/-)
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Deleting words backwards and forwards (dw/df)
keymap.set('n', 'dw', 'vbd')
keymap.set('n', 'df', 'vwhd')

-- Select All (C-a)
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- New tab
keymap.set('n', '<C-n>', ':tabedit<Return>', { silent = true })
-- Split window
keymap.set('n', 'ss', ':split<Return><C-w>w', { silent = true })
keymap.set('n', 'sv', ':vsplit<Return><C-w>w', { silent = true })
-- Move window
keymap.set('n', '<Space>', '<C-w>w')
keymap.set('', '<A-Left>', '<C-w>h')
keymap.set('', '<A-Up>', '<C-w>k')
keymap.set('', '<A-Down>', '<C-w>j')
keymap.set('', '<A-Right>', '<C-w>l')

keymap.set('n', '<C-v>', 'p')
