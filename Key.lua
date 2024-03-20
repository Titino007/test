
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

local Window = Library.CreateLib("Key System", "DarkTheme")

local Main = Window:NewTab("Check Key")

local Section = Main:NewSection("Key System")

_G.Key = "Nothing yet"

Section:NewButton("Copy Key Link", "Paste link in clipboard", function()
    setclipboard("https://workink.net/1Uau/ltwwku97")
end)

local KeyLabel = Section:NewLabel("Key 1 | ".. _G.Key)
local KeyInput = Section:NewTextBox("Key", "Key",
    function(txt)
        KeyLabel:UpdateLabel("Key > ".. txt)
        _G.Key = txt
        CheckKey()
    end)
     

_G.CheckKey = false

local OutputLabel = Section:NewLabel("")
function CheckKey()
    if _G.CheckKey == true then
        return
    end
    local key = game:HttpGet("https://redirect-api.work.ink/tokenValid/" .. _G.Key .. "?linkId=64581")
    if key == "False" then
        OutputLabel:UpdateLabel("Key incorrect")
        return
    end

    _G.CheckKey = true
if game.PlaceId == 2866967438 then
    local script = loadstring(game:HttpGet('https://raw.githubusercontent.com/Titino007/Test/main/Incremental.lua'))()
    if script then
        script()
    else
        OutputLabel:UpdateLabel("Failed to load")
    end
else
    OutputLabel:UpdateLabel("Noob")
end
end

