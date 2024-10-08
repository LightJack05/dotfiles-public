local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader><leader>', builtin.find_files, {})
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fs', builtin.current_buffer_fuzzy_find, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>fq', builtin.quickfix, {})
vim.keymap.set('n', '<leader>fl', builtin.oldfiles, {})
vim.keymap.set({'n', 'v'},'<leader>fc', builtin.commands, {})
vim.keymap.set('n', '<leader>gc',builtin.git_commits ,{})
vim.keymap.set('n', '<leader>gb',builtin.git_branches ,{})
vim.keymap.set('n', '<leader>gs',builtin.git_status ,{})
