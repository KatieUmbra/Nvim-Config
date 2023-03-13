local builtin = require('telescope.builtin')

vim.keymap.set('n', '<c-p>', builtin.find_files, {})
vim.keymap.set('n', '<Space><Space>', builtin.oldfiles, {})
vim.keymap.set('n', '<Space>fg', builtin.live_grep, {})
vim.keymap.set('n', '<Space>fh', builtin.help_tags, {})

require('telescope').load_extension('projects')

--[[
Normal mode 	Insert mode 	Action
f 	<c-f> 	find_project_files
b 	<c-b> 	browse_project_files
d 	<c-d> 	delete_project
s 	<c-s> 	search_in_project_files
r 	<c-r> 	recent_project_files
w 	<c-w> 	change_working_directory
]]--
