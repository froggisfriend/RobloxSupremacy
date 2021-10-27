
local watermark = framework:createScreenLabel{text = "YUKIHOOK | " .. os.date("%X") .. " | YUKINO"}
local watermarkConnection = framework("createConnection", {name = "watermark", connection = RunService.Heartbeat, callback = function()
    watermark:changeText("YUKIHOOK | " .. os.date("%X") .. " | YUKINO")
end})
local window = framework:createWindow{}
local tab = window:createTab{name = "aimbot"}
local label = tab:createLabel{text = "Soon"}

local antiaim = window:createTab{name = "anti-aim"}
local label = antiaim:createLabel{text = "textLabel"}
local button = antiaim:createButton{text = "button", callback = function()
    framework("changeAccent", {accent = nHSV(math.random(0, 360)/360, math.random(50,100)/100, 1)})
end}

local toggle = antiaim:createToggle{text = "toggle", side = "right", callback = function(val)
    print(val)
end}

local slider = antiaim:createSlider{text = "slider", side = "right", min = -100, default = 0, max = 100, callback = function(val)
    print(val)
end}

local keybind = antiaim:createKeybind{text = "keybind", side = "right", flag = "keybind", callback = function(val)
    print('Pressed a keybind')
end}

local dropdown = antiaim:createDropdown{text = "dropdown", default = "hi Default", options = {"aaaa","bbbb", "cccc"}, callback = function(val)
    print(val)
end}

local colorpicker = antiaim:createColorpicker{text = "colorpicker", callback = function(val)
end}


local players = window:createTab{name = "players"}
local visuals = window:createTab{name = "visuals"}
local movement = window:createTab{name = "movement"}
local skins = window:createTab{name = "skins"}
local misc = window:createTab{name = "misc"}
local config = window:createTab{name = "config"}
local lua = window:createTab{name = "lua"}


framework("initialize")
return framework
