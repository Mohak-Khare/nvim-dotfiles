vim.g.mapleader = " "

local mark = require("harpoon.mark")
local ui = require("harpoon.ui")
vim.keymap.set('n', '<leader>m', mark.add_file)
vim.keymap.set('n', '<C-e>', ui.toggle_quick_menu)
vim.keymap.set('n', '<C-h>', function() ui.nav_file(1) end)
vim.keymap.set('n', '<C-t>', function() ui.nav_file(2) end)
vim.keymap.set('n', '<C-n>', function() ui.nav_file(3) end)
vim.keymap.set('n', '<C-s>', function() ui.nav_file(4) end)

vim.keymap.set('i', 'jj', '<Esc>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<leader>pv', ':Ex<CR>', { noremap = true, silent = true })

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})

vim.keymap.set('n', '<leader>/', ':CommentToggle<CR>', {noremap=true})

vim.keymap.set('n', 'yy', '"+y<CR>')
