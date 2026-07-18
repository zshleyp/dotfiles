-- load standard vis module, providing parts of the Lua API
require('vis')

local lsp = require("plugins/vis-lspc")
local modal = require("plugins/vis-modal")
local colorizer = require("plugins/vis-colorizer")
local autoclose = require("plugins/vis-autoclose")
local surround = require("plugins/vis-surround")
local softtabstop = require("plugins/vis-backspace")

lsp.ls_map.lua = {
    name = 'lua-language-server',
    cmd = 'lua-language-server',
    settings = {
        Lua = { diagnostics = { globals = { 'vis' } }, telemetry = { enable = false } },
    },
    formatting_options = { tabSize = 4, insertSpaces = true },
}

vis.events.subscribe(vis.events.INIT, function()
    vis:command("set theme adachi")
end)

local keybinds = require("keybinds")
local options = require("options")

require("modal")(modal)

vis.events.subscribe(vis.events.WIN_OPEN, function(win)
    for setting, value in pairs(options) do
        vis:command("set " .. setting .. " " .. value)
    end

    for mode, keybind in pairs(keybinds) do
        for _, data in ipairs(keybind) do
            vis:map(vis.modes[mode], data[1], data[2])
        end
    end
end)
