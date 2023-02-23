--[[ init.lua ]]

-- LEADER
-- These keybindings need to be defined before the first /
-- is called; otherwise, it will default to "\"
vim.g.mapleader = ' '
vim.g.localleader = ' '

-- Background color
vim.o.termguicolors = true
    vim.o.background = "dark"
    vim.cmd [[
        silent! colorscheme kanna
        hi Normal guibg=#1a1426
    ]]

-- IMPORTS
require('vars')      -- Variables
require('opts')      -- Options
require('keys')      -- Keymaps
require('plug')      -- Plugins
require('plugins') -- Plugin configuration

-- Neovide configuration
if vim.g.Neovide then
    vim.opt.guiFont = "FiraCode Nerd Font:h14"
    vim.opt.linespace = 0
    vim.opt.neovie_scale_factor = 1.0

    -- Helper function for transparency formatting
    local alpha = function()
        return string.format("%x", math.floor(255 * (vim.g.neovide_transparency_point or 0.8)))
    end

    vim.g.neovide_transparency = 0.0
    vim.g.transparency = 0.8
    vim.g.neovide_background_color = "#01a1426" .. alpha()
    -- g:neovide_transparency should be 0 if you want to unify transparency of content and title bar.
    vim.g.neovide_scroll_animation_length = 0

    vim.g.neovide_hide_mouse_when_typing = false

    vim.g.neovide_refresh_rate = 60
    vim.g.neovide_refresh_rate_idle = 5

    vim.g.neovide_fullscreen = true
    vim.g.neovide_cursor_animation_length = 0

    vim.g.neovide_cursor_antialiasing = true

    vim.g.neovide_cursor_animate_in_insert_mode = true

    vim.g.neovide_cursor_animate_command_line = true
    vim.g.neovide_cursor_vfx_mode = "torpedo"
end
