--[[ 
    Version 
        0.02
    Changelogs
        0.01 Added Support for Excavation2017.lua
             Added Support for Tunnel2017.lua
        0.02 Added Support for StripMining.lua
]]--

local download1 = http.get("https://raw.githubusercontent.com/johnneijzen/John-Computer-Craft-Program-2017/master/Turtle%20Programs/Excavation2017.lua")
local download2 = http.get("https://raw.githubusercontent.com/johnneijzen/John-Computer-Craft-Program-2017/master/Turtle%20Programs/Tunnel2017.lua")
local download3 = http.get("https://raw.githubusercontent.com/johnneijzen/John-Computer-Craft-Program-2017/master/Turtle%20Programs/StripMining2017.lua")
local download4 = http.get("https://raw.githubusercontent.com/johnneijzen/John-Computer-Craft-Program-2017/master/JohnPrograms.lua")
 
local function downloadExcavation()
    local file = 0
    local temp = 0
 
    temp = download1.readAll()
    download1.close()
 
    fs.delete("john-ComputerCraft-Program/Excavation2017") -- To make sure it updates
 
    file = fs.open("john-ComputerCraft-Program/Excavation2017","w")
    file.write(temp)
    file.close()
end
 
local function downloadTunnel()
    local file = 0
    local temp = 0
 
    temp = download2.readAll()
    download2.close()
 
    fs.delete("john-ComputerCraft-Program/Tunnel2017") -- To make sure it updates
 
    file = fs.open("john-ComputerCraft-Program/Tunnel2017","w")
    file.write(temp)
    file.close()
end

local function downloadStripMining()
    local file = 0
    local temp = 0
 
    temp = download3.readAll()
    download3.close()
 
    fs.delete("john-ComputerCraft-Program/StripMining2017") -- To make sure it updates
 
    file = fs.open("john-ComputerCraft-Program/StripMining2017","w")
    file.write(temp)
    file.close()
end
 
local function downloadJohnPrograms()
    local file = 0
    local temp = 0
 
    temp = download4.readAll()
    download4.close()

    fs.delete("JohnPrograms") -- To make sure it updates
 
    file = fs.open("JohnPrograms","w")
    file.write(temp)
    file.close()
end
 
local function update()
    downloadExcavation()
    downloadTunnel()
    downloadJohnPrograms()
    shell.run("JohnPrograms")
end
 
update()
