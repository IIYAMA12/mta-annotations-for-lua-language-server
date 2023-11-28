---@meta typeConfigs

---@alias element userdata
---@alias player userdata
---@alias ped userdata
---@alias vehicle userdata
---@alias object userdata
---@alias pickup userdata
---@alias marker userdata 
---@alias colshape userdata
---@alias blip userdata
---@alias projectile userdata
---@alias team userdata
---@alias console userdata
---@alias sound userdata
---@alias weapon userdata
---@alias effect userdata
---@alias browser userdata
---@alias light userdata
---@alias searchlight userdata
---@alias water userdata
---@alias radararea userdata
---@alias svg userdata
---@alias resource userdata

---@class matrix 
---@class xmlnode

---@class vector2
---@operator add(vector2): vector2
---@operator sub(vector2): vector2
---@operator mul(vector2): vector2
---@operator div(vector2): vector2
---@operator mod(vector2): vector2
---@operator pow(vector2): vector2
---@class vector3
---@operator add(vector3): vector3
---@operator sub(vector3): vector3
---@operator mul(vector3): vector3
---@operator div(vector3): vector3
---@operator mod(vector3): vector3
---@operator pow(vector3): vector3
---@class vector4
---@operator add(vector4): vector4
---@operator sub(vector4): vector4
---@operator mul(vector4): vector4
---@operator div(vector4): vector4
---@operator mod(vector4): vector4
---@operator pow(vector4): vector4

---@class file
---@class timer
---@class uint
---@class request
---@alias color integer

--------------------------------------
-- Clientside only

-- GUI
---@alias guiBrowser userdata

-- DX
---@alias image userdata
---@alias font userdata
---@alias mixFont font|"default"|"default-bold"|"clear"|"arial"|"sans"|"pricedown"|"bankgothic"|"diploma"|"beckett"|"unifont"
---@alias mixMaterial userdata|string
---@alias texture userdata

--- Engine
---@class dff
---@class col
---@class txd
---@class ifp

--------------------------------------
-- Serverside only

---@class account
---@class textitem
---@class ban
---@class acl
---@class aclgroup
---@class handle
---@class textdisplay

---@alias databaseConnection userdata

--------------------------------------
--------------------------------------
-- Predefined variables
-- https://wiki.multitheftauto.com/wiki/Predefined_variables_list

-- Fake the variable values
---@type table
local table_
---@type userdata
local userData_
---@type string
local string_

-- Global
exports = table_ -- returns a table of resource names containing all export functions
resource = userData_ -- returns a resource element of the resource the snippet was executed in
resourceRoot = userData_ -- returns a resource root element of the resource the snippet was executed in
root = userData_ -- returns the root element of the server

-- Event Handlers
source = userData_ -- The player or element the event was attached to
this = userData_ -- Element, which was attached function-handler.
eventName = string_ -- the name of the event ("onResourceStart", "onPlayerWasted" etc.)
sourceResource = userData_ -- the resource that called the event
sourceResourceRoot = userData_ -- the root of the resource that called the event


-- Clientside only
guiRoot = userData_ -- returns the root element of all GUI elements.
localPlayer = userData_ -- returns the player element of the local player.
-- Serverside only
client = userData_ -- the client that called the event


--------------------------------------
--------------------------------------
--------------------------------------