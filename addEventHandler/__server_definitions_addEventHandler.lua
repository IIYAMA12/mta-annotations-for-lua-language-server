---@diagnostic disable: missing-return
---@diagnostic disable: lowercase-global


--[[
    Account events
]]

---@alias addEventHandler_onAccountDataChange fun(eventName: "onAccountDataChange", attachedTo: element, handlerFunction: fun(theAccount: account, theKey: string, theValue: string), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onAccountCreate fun(eventName: "onAccountCreate", attachedTo: element, handlerFunction: fun(theAccount: account), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onAccountRemove fun(eventName: "onAccountRemove", attachedTo: element, handlerFunction: fun(theAccount: account), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean


--[[
    Client events
]]

---@alias addEventHandler_onConsole fun(eventName: "onConsole", attachedTo: element, handlerFunction: fun(theMessage: string), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean

--[[
    Colshape events
]]

---@alias addEventHandler_onColShapeHit fun(eventName: "onColShapeHit", attachedTo: element, handlerFunction: fun(hitElement: element, matchingDimension: boolean), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onColShapeLeave fun(eventName: "onColShapeLeave", attachedTo: element, handlerFunction: fun(leaveElement: element, matchingDimension: boolean), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean

--[[
    Element events
]]

---@alias addEventHandler_onElementClicked fun(eventName: "onElementClicked", attachedTo: element, handlerFunction: fun(mouseButton: mouseButton, buttonState: "up" | "down", playerWhoClicked: player, clickPosX: number, clickPosY: number, clickPosZ: number), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onElementColShapeHit fun(eventName: "onElementColShapeHit", attachedTo: element, handlerFunction: fun(theColShape: colshape, matchingDimension: boolean), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onElementColShapeLeave fun(eventName: "onElementColShapeLeave", attachedTo: element, handlerFunction: fun(theColShape: colshape, matchingDimension: boolean), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onElementDataChange fun(eventName: "onElementDataChange", attachedTo: element, handlerFunction: fun(theKey: string, oldValue: unknownSyncAble, newValue: unknownSyncAble), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onElementDestroy fun(eventName: "onElementDestroy", attachedTo: element, handlerFunction: fun(), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onElementDimensionChange fun(eventName: "onElementDimensionChange", attachedTo: element, handlerFunction: fun(oldDimension: integer, newDimension: integer), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onElementInteriorChange fun(eventName: "onElementInteriorChange", attachedTo: element, handlerFunction: fun(oldInterior: integer, newInterior: integer), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onElementModelChange fun(eventName: "onElementModelChange", attachedTo: element, handlerFunction: fun(oldModel: integer, newModel: integer), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onElementStartSync fun(eventName: "onElementStartSync", attachedTo: element, handlerFunction: fun(newSyncer: player), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onElementStopSync fun(eventName: "onElementStopSync", attachedTo: element, handlerFunction: fun(oldSyncer: player), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean

--[[
    Marker events
]]

---@alias addEventHandler_onMarkerHit fun(eventName: "onMarkerHit", attachedTo: element, handlerFunction: fun(hitElement: element, matchingDimension: boolean), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onMarkerLeave fun(eventName: "onMarkerLeave", attachedTo: element, handlerFunction: fun(leftElement: element, matchingDimension: boolean), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean

--[[
    Pickup events
]]

---@alias addEventHandler_onPickupHit fun(eventName: "onPickupHit", attachedTo: element, handlerFunction: fun(thePlayer: player), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onPickupLeave fun(eventName: "onPickupLeave", attachedTo: element, handlerFunction: fun(thePlayer: player), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onPickupSpawn fun(eventName: "onPickupSpawn", attachedTo: element, handlerFunction: fun(), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onPickupUse fun(eventName: "onPickupUse", attachedTo: element, handlerFunction: fun(playerWhoUsed: player), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean

--[[
    Player events
]]

---@alias addEventHandler_onPlayerACInfo fun(eventName: "onPlayerACInfo", attachedTo: element, handlerFunction: fun(detectedACList: (integer|string)[], d3d9Size: integer, d3d9MD5: string, d3d9SHA256: string), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onPlayerBan fun(eventName: "onPlayerBan", attachedTo: element, handlerFunction: fun(banPointer: ban, responsibleElement: unknown), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onPlayerChangeNick fun(eventName: "onPlayerChangeNick", attachedTo: element, handlerFunction: fun(oldNick: string, newNick: string, changedByUser: boolean), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onPlayerChat fun(eventName: "onPlayerChat", attachedTo: element, handlerFunction: fun(message: string, messageType: messageType), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onPlayerClick fun(eventName: "onPlayerClick", attachedTo: element, handlerFunction: fun(mouseButton: mouseButton, buttonState: "up" | "down", clickedElement: element | nil, worldPosX: number, worldPosY: number, worldPosZ: number, screenPosX: number, screenPosY: number), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onPlayerCommand fun(eventName: "onPlayerCommand", attachedTo: element, handlerFunction: fun(command: string), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onPlayerConnect fun(eventName: "onPlayerConnect", attachedTo: element, handlerFunction: fun(playerNick: string, playerIp: string, playerUsername: string, playerSerial: string, playerVersionNumber: integer, playerVersionString: string), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onPlayerContact fun(eventName: "onPlayerContact", attachedTo: element, handlerFunction: fun(previousElement: element | nil, currentElement: element | nil), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onPlayerDamage fun(eventName: "onPlayerDamage", attachedTo: element, handlerFunction: fun(attacker: element | nil, damageCausing: integer, bodypart: bodyPartId, loss: number), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onPlayerDetonateSatchels fun(eventName: "onPlayerDetonateSatchels", attachedTo: element, handlerFunction: fun(), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onPlayerJoin fun(eventName: "onPlayerJoin", attachedTo: element, handlerFunction: fun(), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onPlayerLogin fun(eventName: "onPlayerLogin", attachedTo: element, handlerFunction: fun(thePreviousAccount: account, theCurrentAccount: account), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onPlayerLogout fun(eventName: "onPlayerLogout", attachedTo: element, handlerFunction: fun(thePreviousAccount: account, theCurrentAccount: account), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onPlayerMarkerHit fun(eventName: "onPlayerMarkerHit", attachedTo: element, handlerFunction: fun(markerHit: marker, matchingDimension: boolean), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onPlayerMarkerLeave fun(eventName: "onPlayerMarkerLeave", attachedTo: element, handlerFunction: fun(markerLeft: marker, matchingDimension: boolean), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onPlayerModInfo fun(eventName: "onPlayerModInfo", attachedTo: element, handlerFunction: fun(filename: string, itemlist: {[string]: unknown, id?: unknown, name?: string, sizeX?: unknown, sizeY?: unknown, sizeZ?: unknown, originalSizeX?: number, originalSizeY?: number, originalSizeZ?: number, length?: integer, md5?: unknown, sha256?: unknown, paddedLength?: unknown, paddedMd5?: unknown, paddedSha256?: unknown }), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onPlayerMute fun(eventName: "onPlayerMute", attachedTo: element, handlerFunction: fun(), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onPlayerNetworkStatus fun(eventName: "onPlayerNetworkStatus", attachedTo: element, handlerFunction: fun(status: 0 | 1, ticks: integer), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onPlayerPickupHit fun(eventName: "onPlayerPickupHit", attachedTo: element, handlerFunction: fun(pickupHit: pickup), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onPlayerPickupLeave fun(eventName: "onPlayerPickupLeave", attachedTo: element, handlerFunction: fun(pickupLeft: pickup), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onPlayerPickupUse fun(eventName: "onPlayerPickupUse", attachedTo: element, handlerFunction: fun(thePickupToUse: pickup), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onPlayerPrivateMessage fun(eventName: "onPlayerPrivateMessage", attachedTo: element, handlerFunction: fun(fullMessage: string, recipient: player, content: string), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onPlayerProjectileCreation fun(eventName: "onPlayerProjectileCreation", attachedTo: element, handlerFunction: fun(weaponType: projectileId, x: number, y: number, z: number, force: number | nil, target: element | false | nil, rotX: number | nil, rotY: number | nil, rotZ: number | nil, velX: number | nil, velY: number | nil, velZ: number | nil), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onPlayerQuit fun(eventName: "onPlayerQuit", attachedTo: element, handlerFunction: fun(quitType: quitType, reason: string, responsibleElement: element | unknown), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onPlayerScreenShot fun(eventName: "onPlayerScreenShot", attachedTo: element, handlerFunction: fun(theResource: resource, status: "ok" | "disabled" | "minimized", imageData: string, timestamp: integer, tag: string | nil), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onPlayerSpawn fun(eventName: "onPlayerSpawn", attachedTo: element, handlerFunction: fun(posX: number, posY: number, posZ: number, spawnRotation: number, theTeam: team | false, theSkin: pedId, theInterior: integer, theDimension: integer), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onPlayerStealthKill fun(eventName: "onPlayerStealthKill", attachedTo: element, handlerFunction: fun(targetPlayer: player | ped), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onPlayerTarget fun(eventName: "onPlayerTarget", attachedTo: element, handlerFunction: fun(targettedElement: element | false), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onPlayerTeamChange fun(eventName: "onPlayerTeamChange", attachedTo: element, handlerFunction: fun(oldTeam: team | nil, newTeam: team | nil), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onPlayerTriggerEventThreshold fun(eventName: "onPlayerTriggerEventThreshold", attachedTo: element, handlerFunction: fun(), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onPlayerTriggerInvalidEvent fun(eventName: "onPlayerTriggerInvalidEvent", attachedTo: element, handlerFunction: fun(eventName: string, isAdded: boolean, isRemote: boolean), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onPlayerUnmute fun(eventName: "onPlayerUnmute", attachedTo: element, handlerFunction: fun(), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onPlayerVehicleEnter fun(eventName: "onPlayerVehicleEnter", attachedTo: element, handlerFunction: fun(theVehicle: vehicle, seat: vehicleSeatId, jacked: ped | false), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onPlayerVehicleExit fun(eventName: "onPlayerVehicleExit", attachedTo: element, handlerFunction: fun(theVehicle: vehicle, seat: vehicleSeatId, jacker: ped | false, forcedByScript: boolean), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onPlayerVoiceStart fun(eventName: "onPlayerVoiceStart", attachedTo: element, handlerFunction: fun(), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onPlayerVoiceStop fun(eventName: "onPlayerVoiceStop", attachedTo: element, handlerFunction: fun(), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onPlayerWasted fun(eventName: "onPlayerWasted", attachedTo: element, handlerFunction: fun(totalAmmo: integer, killer: element | false, killerWeapon: weaponId | damageTypeId | integer, bodypart: bodyPartId, stealth: boolean), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onPlayerWeaponFire fun(eventName: "onPlayerWeaponFire", attachedTo: element, handlerFunction: fun(weapon: weaponId, endX: number, endY: number, endZ: number, hitElement: player | false, startX : number, startY: number, startZ: number), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onPlayerWeaponSwitch fun(eventName: "onPlayerWeaponSwitch", attachedTo: element, handlerFunction: fun(previousWeaponId: weaponId, currentWeaponId: weaponId), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean

--[[
    Ped events
]]

---@alias addEventHandler_onPedDamage fun(eventName: "onPedDamage", attachedTo: element, handlerFunction: fun(loss: number), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onPedVehicleEnter fun(eventName: "onPedVehicleEnter", attachedTo: element, handlerFunction: fun(theVehicle: vehicle, seat: vehicleSeatId, jacked: ped | player | false), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onPedVehicleExit fun(eventName: "onPedVehicleExit", attachedTo: element, handlerFunction: fun(theVehicle: vehicle, seat: vehicleSeatId, jacker: ped | player | false, forcedByScript: boolean), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onPedWasted fun(eventName: "onPedWasted", attachedTo: element, handlerFunction: fun(totalAmmo: integer, killer: element | false, killerWeapon: weaponId | damageTypeId | integer, bodypart: bodyPartId, stealth: boolean), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onPedWeaponSwitch fun(eventName: "onPedWeaponSwitch", attachedTo: element, handlerFunction: fun(previousWeaponId: weaponId, currentWeaponId: weaponId), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean

--[[
    Resource events
]]

---@alias addEventHandler_onResourceStateChange fun(eventName: "onResourceStateChange", attachedTo: element, handlerFunction: fun(changedResource: resource, oldState: resourceStateChange, newState: resourceStateChange), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onPlayerResourceStart fun(eventName: "onPlayerResourceStart", attachedTo: element, handlerFunction: fun(loadedResource: resource), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onResourceLoadStateChange fun(eventName: "onResourceLoadStateChange", attachedTo: element, handlerFunction: fun(changedResource: resource, oldState: resourceState, newState: resourceState), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onResourcePreStart fun(eventName: "onResourcePreStart", attachedTo: element, handlerFunction: fun(startingResource: resource), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onResourceStart fun(eventName: "onResourceStart", attachedTo: element, handlerFunction: fun(startedResource: resource), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onResourceStop fun(eventName: "onResourceStop", attachedTo: element, handlerFunction: fun(stoppedResource: resource, wasDeleted: boolean), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean

--[[
    Server events
]]

---@alias addEventHandler_onBan fun(eventName: "onBan", attachedTo: element, handlerFunction: fun(theBan: ban), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onChatMessage fun(eventName: "onChatMessage", attachedTo: element, handlerFunction: fun(theMessage: string, theElement: resource | element ), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onDebugMessage fun(eventName: "onDebugMessage", attachedTo: element, handlerFunction: fun(message: string, level: debugMessageLevel, file: string | nil, line: integer | nil, r: integer, g: integer, b: integer ), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onExplosion fun(eventName: "onExplosion", attachedTo: element, handlerFunction: fun(x: number, y: number, z: number, theType: explosionType ), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onSettingChange fun(eventName: "onSettingChange", attachedTo: element, handlerFunction: fun(setting: string,  oldValue: string, newValue: string ), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onUnban fun(eventName: "onUnban", attachedTo: element, handlerFunction: fun(theBan: ban, responsibleElement: player | nil), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean

--[[
    Vehicle events
]]

---@alias addEventHandler_onTrailerAttach fun(eventName: "onTrailerAttach", attachedTo: element, handlerFunction: fun(theTruck: vehicle), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onTrailerDetach fun(eventName: "onTrailerDetach", attachedTo: element, handlerFunction: fun(theTruck: vehicle), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onVehicleDamage fun(eventName: "onVehicleDamage", attachedTo: element, handlerFunction: fun(loss: number), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onVehicleEnter fun(eventName: "onVehicleEnter", attachedTo: element, handlerFunction: fun(thePed: ped | player, seat: vehicleSeatId, jacked: player | ped | false), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onVehicleExit fun(eventName: "onVehicleExit", attachedTo: element, handlerFunction: fun(thePed: ped | player, seat: vehicleSeatId, jacker: player | ped | false, forcedByScript: boolean), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onVehicleExplode fun(eventName: "onVehicleExplode", attachedTo: element, handlerFunction: fun(withExplosion: boolean, thePlayer: player), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onVehicleRespawn fun(eventName: "onVehicleRespawn", attachedTo: element, handlerFunction: fun(exploded: boolean), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onVehicleStartEnter fun(eventName: "onVehicleStartEnter", attachedTo: element, handlerFunction: fun(enteringPed: ped | player, seat: vehicleSeatId, jacked: ped | player | false, door: 0 | 1 | 2 | 3), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onVehicleStartExit fun(eventName: "onVehicleStartExit", attachedTo: element, handlerFunction: fun(exitingPed: ped | player, seat: vehicleSeatId, jacker: ped | player | false, door: 0 | 1 | 2 | 3), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean

--[[
    Weapon events
]]

---@alias addEventHandler_onWeaponFire fun(eventName: "onWeaponFire", attachedTo: element, handlerFunction: fun(), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean


--- Merge ---

---@alias addEventHandler_onServerEvent addEventHandler_onAccountRemove | addEventHandler_onAccountCreate | addEventHandler_onResourceStateChange | addEventHandler_onPlayerTeamChange | addEventHandler_onPlayerTriggerInvalidEvent | addEventHandler_onWeaponFire | addEventHandler_onVehicleStartExit | addEventHandler_onVehicleStartEnter | addEventHandler_onVehicleRespawn | addEventHandler_onVehicleExplode | addEventHandler_onVehicleExit | addEventHandler_onVehicleEnter | addEventHandler_onVehicleDamage | addEventHandler_onTrailerDetach | addEventHandler_onTrailerAttach | addEventHandler_onUnban | addEventHandler_onSettingChange | addEventHandler_onExplosion | addEventHandler_onDebugMessage | addEventHandler_onChatMessage | addEventHandler_onBan | addEventHandler_onResourceStop | addEventHandler_onResourceStart | addEventHandler_onResourcePreStart | addEventHandler_onResourceLoadStateChange | addEventHandler_onPlayerResourceStart | addEventHandler_onPedWeaponSwitch | addEventHandler_onPedWasted | addEventHandler_onPedVehicleExit | addEventHandler_onPedVehicleEnter | addEventHandler_onPedDamage | addEventHandler_onPlayerWeaponSwitch | addEventHandler_onPlayerWeaponFire | addEventHandler_onPlayerWasted | addEventHandler_onPlayerVoiceStop | addEventHandler_onPlayerVoiceStart | addEventHandler_onPlayerVehicleExit | addEventHandler_onPlayerVehicleEnter | addEventHandler_onPlayerUnmute | addEventHandler_onPlayerTriggerEventThreshold | addEventHandler_onPlayerTarget | addEventHandler_onPlayerStealthKill | addEventHandler_onPlayerSpawn | addEventHandler_onPlayerScreenShot | addEventHandler_onPlayerQuit | addEventHandler_onPlayerProjectileCreation | addEventHandler_onPlayerPrivateMessage | addEventHandler_onPlayerPickupUse | addEventHandler_onPlayerPickupLeave | addEventHandler_onPlayerPickupHit | addEventHandler_onPlayerNetworkStatus | addEventHandler_onPlayerMute | addEventHandler_onPlayerModInfo | addEventHandler_onPlayerMarkerLeave | addEventHandler_onPlayerMarkerHit | addEventHandler_onPlayerLogout | addEventHandler_onPlayerLogin | addEventHandler_onPlayerJoin | addEventHandler_onPlayerDetonateSatchels | addEventHandler_onPlayerDamage | addEventHandler_onPlayerContact | addEventHandler_onPlayerConnect | addEventHandler_onPlayerCommand | addEventHandler_onPlayerClick | addEventHandler_onPlayerChat | addEventHandler_onPlayerChangeNick | addEventHandler_onPlayerBan | addEventHandler_onPlayerACInfo | addEventHandler_onPickupUse | addEventHandler_onPickupSpawn | addEventHandler_onPickupLeave | addEventHandler_onPickupHit | addEventHandler_onMarkerLeave | addEventHandler_onMarkerHit | addEventHandler_onElementStopSync | addEventHandler_onElementStartSync | addEventHandler_onElementModelChange | addEventHandler_onElementInteriorChange | addEventHandler_onElementDimensionChange | addEventHandler_onElementDestroy | addEventHandler_onElementDataChange | addEventHandler_onElementColShapeLeave | addEventHandler_onElementColShapeHit | addEventHandler_onElementClicked | addEventHandler_onColShapeLeave | addEventHandler_onColShapeHit | addEventHandler_onConsole | addEventHandler_onAccountDataChange

-- Fill in event name for autocomplete removeEventHandler
---@alias eventName_server string|"onAccountRemove"|"onAccountCreate"|"onPlayerTeamChange"|"onPlayerTriggerInvalidEvent"|"onResourceStateChange"|"onAccountDataChange"|"onConsole"|"onColShapeHit"|"onColShapeLeave"|"onElementClicked"|"onElementColShapeHit"|"onElementColShapeLeave"|"onElementDataChange"|"onElementDestroy"|"onElementDimensionChange"|"onElementInteriorChange"|"onElementModelChange"|"onElementStartSync"|"onElementStopSync"|"onMarkerHit"|"onMarkerLeave"|"onPickupHit"|"onPickupLeave"|"onPickupSpawn"|"onPickupUse"|"onPlayerACInfo"|"onPlayerBan"|"onPlayerChangeNick"|"onPlayerChat"|"onPlayerClick"|"onPlayerCommand"|"onPlayerConnect"|"onPlayerContact"|"onPlayerDamage"|"onPlayerDetonateSatchels"|"onPlayerJoin"|"onPlayerLogin"|"onPlayerLogout"|"onPlayerMarkerHit"|"onPlayerMarkerLeave"|"onPlayerModInfo"|"onPlayerMute"|"onPlayerNetworkStatus"|"onPlayerPickupHit"|"onPlayerPickupLeave"|"onPlayerPickupUse"|"onPlayerPrivateMessage"|"onPlayerProjectileCreation"|"onPlayerQuit"|"onPlayerScreenShot"|"onPlayerSpawn"|"onPlayerStealthKill"|"onPlayerTarget"|"onPlayerTriggerEventThreshold"|"onPlayerUnmute"|"onPlayerVehicleEnter"|"onPlayerVehicleExit"|"onPlayerVoiceStart"|"onPlayerVoiceStop"|"onPlayerWasted"|"onPlayerWeaponFire"|"onPlayerWeaponSwitch"|"onPedDamage"|"onPedVehicleEnter"|"onPedVehicleExit"|"onPedWasted"|"onPedWeaponSwitch"|"onPlayerResourceStart"|"onResourceLoadStateChange"|"onResourcePreStart"|"onResourceStart"|"onResourceStop"|"onBan"|"onChatMessage"|"onDebugMessage"|"onExplosion"|"onSettingChange"|"onUnban"|"onTrailerAttach"|"onTrailerDetach"|"onVehicleDamage"|"onVehicleEnter"|"onVehicleExit"|"onVehicleExplode"|"onVehicleRespawn"|"onVehicleStartEnter"|"onVehicleStartExit"|"onWeaponFire"
