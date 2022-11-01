local ObjInfo = {}
ObjInfo.name = "Object Information"
ObjInfo.version = "1.0"
ObjInfo.author = "Quin Marilyn <quin.marilyn05@gmail.com>"
ObjInfo.license = "MIT"

local ax = require("hs.AXUIElement")
local inspect = hs.inspect

local function getFocusedElement()
    local systemElement = ax.systemWideElement()
    local element = systemElement.AXFocusedUIElement
    return element
end

local function getObjectInfo()
    local element = getFocusedElement()
    local info = element:allAttributeValues()
    hs.dialog.textPrompt("Object Information", "Info", inspect(info))
end

local infoHotkey = hs.hotkey.new("ctrl-shift", "f1", getObjectInfo)

function ObjInfo:init() end

function ObjInfo:start()
    infoHotkey:enable()
end

function ObjInfo:stop()
    infoHotkey:disable()
end

return ObjInfo
