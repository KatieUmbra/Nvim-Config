--[[ keys.lua ]]
local map = vim.api.nvim_set_keymap

-- remap the key used to leave insert mode
map('i', 'jk', '', {})

map('n', '<leader>r', ':RunCode<CR>', { noremap = true, silent = false})
map('n', '<leader>rf', ':RunFile<CR>', { noremap = true, silent = false })
map('n', '<leader>c', ':cd %:h', {})

-- Vimspector
vim.cmd([[
nmap <F9> <cmd>call vimspector#Launch()<cr>
nmap <F5> <cmd>call vimspector#StepOver()<cr>
nmap <F8> <cmd>call vimspector#Reset()<cr>
nmap <F11> <cmd>call vimspector#StepOver()<cr>")
nmap <F12> <cmd>call vimspector#StepOut()<cr>")
nmap <F10> <cmd>call vimspector#StepInto()<cr>")
]])
map('n', "Db", ":call vimspector#ToggleBreakpoint()<cr>", {})
map('n', "Dw", ":call vimspector#AddWatch()<cr>", {})
map('n', "De", ":call vimspector#Evaluate()<cr>", {})
