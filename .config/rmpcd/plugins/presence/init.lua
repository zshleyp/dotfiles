---@class SamplePluginArgs
---@field enabled? boolean

---@class SamplePlugin : RmpcdPlugin<SamplePluginArgs>
---@field enabled boolean

---@type SamplePlugin
local M = {
    enabled = true
}

local app_id = "1478993515869507664"

local RPC = require("lpresence").RPC
RPC:__init(app_id)

-- will be called when a song changes
M.song_change = function(self, _old, new)
    if not self.enabled or new == nil then
        return
    end

    log.info("Hey a new song is playing! " .. new.file)
end

-- will be called when playback is started, stopped or paused
M.state_change = function(self, _old, new)
    if not self.enabled then
        return
    end

    log.info("MPD playback state is now: " .. new)
end

M.setup = function(self, args)
    self.enabled = args.enabled
    RPC:connect()

    RPC:update({
        state = "testing!",
        details = "im gay"
    })
end

M.shutdown = function()
    RPC:close()
end

return M
