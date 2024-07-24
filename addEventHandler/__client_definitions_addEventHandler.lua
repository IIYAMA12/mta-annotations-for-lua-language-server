---@diagnostic disable: missing-return
---@diagnostic disable: lowercase-global

---@alias eventName_client string|"onClientBrowserCreated"|"onClientBrowserCursorChange"|"onClientBrowserDocumentReady"|"onClientBrowserInputFocusChanged"|"onClientBrowserLoadingFailed"|"onClientBrowserLoadingStart"|"onClientBrowserNavigate"|"onClientBrowserPopup"|"onClientBrowserResourceBlocked"|"onClientBrowserTooltip"|"onClientBrowserWhitelistChange"|"onClientColShapeHit"|"onClientColShapeLeave"|"onClientElementColShapeHit"|"onClientElementColShapeLeave"|"onClientElementDataChange"|"onClientElementDestroy"|"onClientElementDimensionChange"|"onClientElementInteriorChange"|"onClientElementModelChange"|"onClientElementStreamIn"|"onClientElementStreamOut"|"onClientCharacter"|"onClientClick"|"onClientCursorMove"|"onClientDoubleClick"|"onClientKey"|"onClientPaste"|"onClientGUIAccepted"|"onClientGUIBlur"|"onClientGUIChanged"|"onClientGUIClick"|"onClientGUIComboBoxAccepted"|"onClientGUIDoubleClick"|"onClientGUIFocus"|"onClientGUIMouseDown"|"onClientGUIMouseUp"|"onClientGUIMove"|"onClientGUIScroll"|"onClientGUISize"|"onClientGUITabSwitched"|"onClientMouseEnter"|"onClientMouseLeave"|"onClientMouseMove"|"onClientMouseWheel"|"onClientMarkerHit"|"onClientMarkerLeave"|"onClientPedDamage"|"onClientPedHeliKilled"|"onClientPedHitByWaterCannon"|"onClientPedVehicleEnter"|"onClientPedVehicleExit"|"onClientPedWasted"|"onClientPedWeaponFire"|"onClientPedStep"|"onClientPickupHit"|"onClientPickupLeave"|"onClientPlayerChangeNick"|"onClientPlayerChoke"|"onClientPlayerDamage"|"onClientPlayerHeliKilled"|"onClientPlayerHitByWaterCannon"|"onClientPlayerJoin"|"onClientPlayerPickupHit"|"onClientPlayerPickupLeave"|"onClientPlayerQuit"|"onClientPlayerRadioSwitch"|"onClientPlayerSpawn"|"onClientPlayerStealthKill"|"onClientPlayerStuntFinish"|"onClientPlayerStuntStart"|"onClientPlayerTarget"|"onClientPlayerVehicleEnter"|"onClientPlayerVehicleExit"|"onClientPlayerVoicePause"|"onClientPlayerVoiceResumed"|"onClientPlayerVoiceStart"|"onClientPlayerVoiceStop"|"onClientPlayerWasted"|"onClientPlayerWeaponFire"|"onClientPlayerWeaponSwitch"|"onClientObjectBreak"|"onClientObjectDamage"|"onClientObjectMoveStart"|"onClientObjectMoveStop"|"onClientProjectileCreation"|"onClientResourceFileDownload"|"onClientResourceStart"|"onClientResourceStop"|"onClientSoundBeat"|"onClientSoundChangedMeta"|"onClientSoundFinishedDownload"|"onClientSoundStarted"|"onClientSoundStopped"|"onClientSoundStream"|"onClientTrailerAttach"|"onClientTrailerDetach"|"onClientVehicleCollision"|"onClientVehicleDamage"|"onClientVehicleEnter"|"onClientVehicleExit"|"onClientVehicleExplode"|"onClientVehicleNitroStateChange"|"onClientVehicleRespawn"|"onClientVehicleStartEnter"|"onClientVehicleStartExit"|"onClientVehicleWeaponHit"|"onClientWeaponFire"|"onClientChatMessage"|"onClientConsole"|"onClientDebugMessage"|"onClientExplosion"|"onClientFileDownloadComplete"|"onClientHUDRender"|"onClientMinimize"|"onClientMTAFocusChange"|"onClientPedsProcessed"|"onClientPlayerNetworkStatus"|"onClientPreRender"|"onClientRender"|"onClientRestore"|"onClientTransferBoxProgressChange"|"onClientTransferBoxVisibilityChange"|"onClientWorldSound"

--[[
    Needs review:
    onClientGUIDoubleClick
]]

--[[
    Browser events
]]

---@alias addEventHandler_onClientBrowserCreated fun(eventName: "onClientBrowserCreated", attachedTo: element, handlerFunction: function, getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onClientBrowserCursorChange fun(eventName: "onClientBrowserCursorChange", attachedTo: element, handlerFunction: fun(cursorId: integer), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onClientBrowserDocumentReady fun(eventName: "onClientBrowserDocumentReady", attachedTo: element, handlerFunction: fun(url: string), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onClientBrowserInputFocusChanged fun(eventName: "onClientBrowserInputFocusChanged", attachedTo: element, handlerFunction: fun(gainedFocus: boolean), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onClientBrowserLoadingFailed fun(eventName: "onClientBrowserLoadingFailed", attachedTo: element, handlerFunction: fun(url: string, errorCode: integer, errorDescription: string), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onClientBrowserLoadingStart fun(eventName: "onClientBrowserLoadingStart", attachedTo: element, handlerFunction: fun(url: string, isMain: boolean), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onClientBrowserNavigate fun(eventName: "onClientBrowserNavigate", attachedTo: element, handlerFunction: fun(targetURL: string, isBlocked: boolean, isMainFrame: boolean), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onClientBrowserPopup fun(eventName: "onClientBrowserPopup", attachedTo: element, handlerFunction: fun(targetURL: string, openerURL: string, isPopup: boolean), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onClientBrowserResourceBlocked fun(eventName: "onClientBrowserResourceBlocked", attachedTo: element, handlerFunction: fun(url: string, domain: string, reason: 0 | 1 | 2), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onClientBrowserTooltip fun(eventName: "onClientBrowserTooltip", attachedTo: element, handlerFunction: fun(text: string), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onClientBrowserWhitelistChange fun(eventName: "onClientBrowserWhitelistChange", attachedTo: element, handlerFunction: fun(changedDomains: string[]), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean

--[[
    Colshape events
]]

---@alias addEventHandler_onClientColShapeHit fun(eventName: "onClientColShapeHit", attachedTo: element, handlerFunction: fun(theElement: element, matchingDimension: boolean), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onClientColShapeLeave fun(eventName: "onClientColShapeLeave", attachedTo: element, handlerFunction: fun(theElement: element, matchingDimension: boolean), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean

--[[
    Element events
]]

---@alias addEventHandler_onClientElementColShapeHit fun(eventName: "onClientElementColShapeHit", attachedTo: element, handlerFunction: fun(theShape: colshape, matchingDimension: boolean), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onClientElementColShapeLeave fun(eventName: "onClientElementColShapeLeave", attachedTo: element, handlerFunction: fun(theShape: colshape, matchingDimension: boolean), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onClientElementDataChange fun(eventName: "onClientElementDataChange", attachedTo: element, handlerFunction: fun(theKey: string, oldValue: unknownSyncAble, newValue: unknownSyncAble), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onClientElementDestroy fun(eventName: "onClientElementDestroy", attachedTo: element, handlerFunction: fun(), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onClientElementDimensionChange fun(eventName: "onClientElementDimensionChange", attachedTo: element, handlerFunction: fun(oldDimension: integer, newDimension: integer), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onClientElementInteriorChange fun(eventName: "onClientElementInteriorChange", attachedTo: element, handlerFunction: fun(oldInterior: integer, newInterior: integer), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onClientElementModelChange fun(eventName: "onClientElementModelChange", attachedTo: element, handlerFunction: fun(oldModel: integer, newModel: integer), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onClientElementStreamIn fun(eventName: "onClientElementStreamIn", attachedTo: element, handlerFunction: fun(), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onClientElementStreamOut fun(eventName: "onClientElementStreamOut", attachedTo: element, handlerFunction: fun(), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean

--[[
    Input events
]]

-- Input

---@alias addEventHandler_onClientCharacter fun(eventName: "onClientCharacter", attachedTo: element, handlerFunction: fun(character: string), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onClientClick fun(eventName: "onClientClick", attachedTo: element, handlerFunction: fun(button: mouseButton, state: "up" | "down", absoluteX: integer, absoluteY: integer, worldX: number, worldY: number, worldZ: number, clickedWorld: element | false), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onClientCursorMove fun(eventName: "onClientCursorMove", attachedTo: element, handlerFunction: fun(cursorX: number, cursorY: number, absoluteX: integer, absoluteY: integer, worldX: number, worldY: number, worldZ: number), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onClientDoubleClick fun(eventName: "onClientDoubleClick", attachedTo: element, handlerFunction: fun(button: mouseButton, absoluteX: integer, absoluteY: integer, worldX: number, worldY: number, worldZ: number, clickedWorld: element | false), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onClientKey fun(eventName: "onClientKey", attachedTo: element, handlerFunction: fun(button : keyName, pressOrRelease : boolean), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onClientPaste fun(eventName: "onClientPaste", attachedTo: element, handlerFunction: fun(clipboardText: string), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean

-- GUI

---@alias addEventHandler_onClientGUIAccepted fun(eventName: "onClientGUIAccepted", attachedTo: element, handlerFunction: fun(editBox: element), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onClientGUIBlur fun(eventName: "onClientGUIBlur", attachedTo: element, handlerFunction: fun(), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onClientGUIChanged fun(eventName: "onClientGUIChanged", attachedTo: element, handlerFunction: fun(theElement : element), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onClientGUIClick fun(eventName: "onClientGUIClick", attachedTo: element, handlerFunction: fun(button: mouseButton, state: "down", absoluteX: integer, absoluteY: integer), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onClientGUIComboBoxAccepted fun(eventName: "onClientGUIComboBoxAccepted", attachedTo: element, handlerFunction: fun(theElement: element), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onClientGUIDoubleClick fun(eventName: "onClientGUIDoubleClick", attachedTo: element, handlerFunction: function, getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onClientGUIFocus fun(eventName: "onClientGUIFocus", attachedTo: element, handlerFunction: fun(), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onClientGUIMouseDown fun(eventName: "onClientGUIMouseDown", attachedTo: element, handlerFunction: fun( button: mouseButton, absoluteX: integer, absoluteY: integer), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onClientGUIMouseUp fun(eventName: "onClientGUIMouseUp", attachedTo: element, handlerFunction: fun( button: mouseButton, absoluteX: integer, absoluteY: integer), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onClientGUIMove fun(eventName: "onClientGUIMove", attachedTo: element, handlerFunction: fun(), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onClientGUIScroll fun(eventName: "onClientGUIScroll", attachedTo: element, handlerFunction: fun(scrolled: element), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onClientGUISize fun(eventName: "onClientGUISize", attachedTo: element, handlerFunction: fun(), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onClientGUITabSwitched fun(eventName: "onClientGUITabSwitched", attachedTo: element, handlerFunction: fun(theElement: element), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onClientMouseEnter fun(eventName: "onClientMouseEnter", attachedTo: element, handlerFunction: fun(absoluteX: integer, absoluteY: integer, leftGUI: element | nil), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onClientMouseLeave fun(eventName: "onClientMouseLeave", attachedTo: element, handlerFunction: fun(absoluteX: integer, absoluteY: integer, enteredGUI: element | nil), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onClientMouseMove fun(eventName: "onClientMouseMove", attachedTo: element, handlerFunction: fun(absoluteX: integer, absoluteY: integer), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onClientMouseWheel fun(eventName: "onClientMouseWheel", attachedTo: element, handlerFunction: fun(downOrUp: -1 | 1), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean

--[[
    Marker events
]]

---@alias addEventHandler_onClientMarkerHit fun(eventName: "onClientMarkerHit", attachedTo: element, handlerFunction: fun(hitPlayer: player, matchingDimension: boolean), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onClientMarkerLeave fun(eventName: "onClientMarkerLeave", attachedTo: element, handlerFunction: fun(leftPlayer: player, matchingDimension: boolean), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean

--[[
    Ped events
]]

---@alias addEventHandler_onClientPedDamage fun(eventName: "onClientPedDamage", attachedTo: element, handlerFunction: fun(attacker: element | nil, weapon: integer | weaponId, bodypart: bodyPartId, loss: number | nil), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onClientPedHeliKilled fun(eventName: "onClientPedHeliKilled", attachedTo: element, handlerFunction: fun(killer: vehicle), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onClientPedHitByWaterCannon fun(eventName: "onClientPedHitByWaterCannon", attachedTo: element, handlerFunction: fun(pedHit: ped), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onClientPedVehicleEnter fun(eventName: "onClientPedVehicleEnter", attachedTo: element, handlerFunction: fun(theVehicle: vehicle, seat: vehicleSeatId), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onClientPedVehicleExit fun(eventName: "onClientPedVehicleExit", attachedTo: element, handlerFunction: fun(theVehicle: vehicle, seat: vehicleSeatId), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onClientPedWasted fun(eventName: "onClientPedWasted", attachedTo: element, handlerFunction: fun(killer: element,  weapon: integer | weaponId | damageTypeId, bodypart: bodyPartId, lossOrStealth: number | boolean), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onClientPedWeaponFire fun(eventName: "onClientPedWeaponFire", attachedTo: element, handlerFunction: fun( weapon: weaponId, ammo: integer, ammoInClip: integer, hitX: number, hitY: number, hitZ: number, hitElement: element | nil), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onClientPedStep fun(eventName: "onClientPedStep", attachedTo: element, handlerFunction: fun(leftFoot: boolean), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean

--[[
    Pickup events
]]

---@alias addEventHandler_onClientPickupHit fun(eventName: "onClientPickupHit", attachedTo: element, handlerFunction: fun(thePlayer: player, matchingDimension: boolean), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onClientPickupLeave fun(eventName: "onClientPickupLeave", attachedTo: element, handlerFunction: fun(thePlayer: player, matchingDimension: boolean), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean

--[[
    Player events
]]

---@alias addEventHandler_onClientPlayerChangeNick fun(eventName: "onClientPlayerChangeNick", attachedTo: element, handlerFunction: fun(oldNick: string, newNick: string), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onClientPlayerChoke fun(eventName: "onClientPlayerChoke", attachedTo: element, handlerFunction: fun(weaponId: weaponId), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onClientPlayerDamage fun(eventName: "onClientPlayerDamage", attachedTo: element, handlerFunction: fun(attacker: element | nil, damageCausing: integer | weaponId | damageTypeId, bodypart: bodyPartId, loss: number | nil), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onClientPlayerHeliKilled fun(eventName: "onClientPlayerHeliKilled", attachedTo: element, handlerFunction: fun(killer: vehicle), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onClientPlayerHitByWaterCannon fun(eventName: "onClientPlayerHitByWaterCannon", attachedTo: element, handlerFunction: fun(playerHit: player), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onClientPlayerJoin fun(eventName: "onClientPlayerJoin", attachedTo: element, handlerFunction: fun(), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onClientPlayerPickupHit fun(eventName: "onClientPlayerPickupHit", attachedTo: element, handlerFunction: fun(thePickup: pickup, matchingDimension: boolean), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onClientPlayerPickupLeave fun(eventName: "onClientPlayerPickupLeave", attachedTo: element, handlerFunction: fun(thePickup: pickup, matchingDimension: boolean), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onClientPlayerQuit fun(eventName: "onClientPlayerQuit", attachedTo: element, handlerFunction: fun(reason: quitType), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onClientPlayerRadioSwitch fun(eventName: "onClientPlayerRadioSwitch", attachedTo: element, handlerFunction: fun(radioChannelId: radioChannelId), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onClientPlayerSpawn fun(eventName: "onClientPlayerSpawn", attachedTo: element, handlerFunction: fun(theTeam: team | nil), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onClientPlayerStealthKill fun(eventName: "onClientPlayerStealthKill", attachedTo: element, handlerFunction: fun(target: player | ped), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onClientPlayerStuntFinish fun(eventName: "onClientPlayerStuntFinish", attachedTo: element, handlerFunction: fun(stuntType: stuntType, stuntTime: integer, stuntDistance: number), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onClientPlayerStuntStart fun(eventName: "onClientPlayerStuntStart", attachedTo: element, handlerFunction: fun(stuntType: stuntType), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onClientPlayerTarget fun(eventName: "onClientPlayerTarget", attachedTo: element, handlerFunction: fun(target: element | nil), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onClientPlayerVehicleEnter fun(eventName: "onClientPlayerVehicleEnter", attachedTo: element, handlerFunction: fun(theVehicle: vehicle, seat: vehicleSeatId), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onClientPlayerVehicleExit fun(eventName: "onClientPlayerVehicleExit", attachedTo: element, handlerFunction: fun(theVehicle: vehicle, seat: vehicleSeatId), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onClientPlayerVoicePause fun(eventName: "onClientPlayerVoicePause", attachedTo: element, handlerFunction: fun(reason: "paused"), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onClientPlayerVoiceResumed fun(eventName: "onClientPlayerVoiceResumed", attachedTo: element, handlerFunction: fun(reason: "resumed"), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onClientPlayerVoiceStart fun(eventName: "onClientPlayerVoiceStart", attachedTo: element, handlerFunction: fun(), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onClientPlayerVoiceStop fun(eventName: "onClientPlayerVoiceStop", attachedTo: element, handlerFunction: fun(), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onClientPlayerWasted fun(eventName: "onClientPlayerWasted", attachedTo: element, handlerFunction: fun(killer: element | nil, weapon: weaponId | damageTypeId | integer, bodypart: bodyPartId, stealth: boolean), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onClientPlayerWeaponFire fun(eventName: "onClientPlayerWeaponFire", attachedTo: element, handlerFunction: fun(weapon: weaponId, ammo: integer, ammoInClip: integer, hitX: number, hitY: number, hitZ: number, hitElement: element | nil, startX: number, startY: number, startZ: number), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onClientPlayerWeaponSwitch fun(eventName: "onClientPlayerWeaponSwitch", attachedTo: element, handlerFunction: fun(previousWeaponSlot: integer, currentWeaponSlot: integer), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean

--[[
    Object events
]]

---@alias addEventHandler_onClientObjectBreak fun(eventName: "onClientObjectBreak", attachedTo: element, handlerFunction: fun(attacker: element | nil), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onClientObjectDamage fun(eventName: "onClientObjectDamage", attachedTo: element, handlerFunction: fun(loss: number, attacker: element | nil), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onClientObjectMoveStart fun(eventName: "onClientObjectMoveStart", attachedTo: element, handlerFunction: fun(), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onClientObjectMoveStop fun(eventName: "onClientObjectMoveStop", attachedTo: element, handlerFunction: fun(), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean

--[[
    Projectile events
]]

---@alias addEventHandler_onClientProjectileCreation fun(eventName: "onClientProjectileCreation", attachedTo: element, handlerFunction: fun(creator: element), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean

--[[
    Resource events
]]

---@alias addEventHandler_onClientResourceFileDownload fun(eventName: "onClientResourceFileDownload", attachedTo: element, handlerFunction: fun(fileResource: resource, fileName: string, fileSize: integer, state: "queued" | "finished" | "failed"), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onClientResourceStart fun(eventName: "onClientResourceStart", attachedTo: element, handlerFunction: fun(startedResource: resource), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onClientResourceStop fun(eventName: "onClientResourceStop", attachedTo: element, handlerFunction: fun(startedResource: resource), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean

--[[
    Sound events
]]

---@alias addEventHandler_onClientSoundBeat fun(eventName: "onClientSoundBeat", attachedTo: element, handlerFunction: fun(theTime: number), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onClientSoundChangedMeta fun(eventName: "onClientSoundChangedMeta", attachedTo: element, handlerFunction: fun(streamTitle: string), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onClientSoundFinishedDownload fun(eventName: "onClientSoundFinishedDownload", attachedTo: element, handlerFunction: fun(length: integer), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onClientSoundStarted fun(eventName: "onClientSoundStarted", attachedTo: element, handlerFunction: fun(reason: "play" | "resumed" | "enabled"), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onClientSoundStopped fun(eventName: "onClientSoundStopped", attachedTo: element, handlerFunction: fun(reason: "finished" | "paused" | "destroyed" | "disabled"), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onClientSoundStream fun(eventName: "onClientSoundStream", attachedTo: element, handlerFunction: fun(success: boolean, length: integer, streamName: string | nil, errorMessage: string), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean

--[[
    Vehicle events
]]

---@alias addEventHandler_onClientTrailerAttach fun(eventName: "onClientTrailerAttach", attachedTo: element, handlerFunction: fun(towedBy: vehicle), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onClientTrailerDetach fun(eventName: "onClientTrailerDetach", attachedTo: element, handlerFunction: fun(towedBy: vehicle), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onClientVehicleCollision fun(eventName: "onClientVehicleCollision", attachedTo: element, handlerFunction: fun(theHitElement: element | nil, damageImpulseMag: number, bodypartId: vehicleBodyPartId | integer, collisionX: number, collisionY: number, collisionZ: number, normalX: number, normalY: number, normalZ: number, hitElementForce: number, model: integer | nil), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onClientVehicleDamage fun(eventName: "onClientVehicleDamage", attachedTo: element, handlerFunction: fun(theAttacker: element | nil, theWeapon: weaponId | damageTypeId | integer, loss: number, damagePosX: number, damagePosY: number, damagePosZ: number, tireId: integer | nil), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onClientVehicleEnter fun(eventName: "onClientVehicleEnter", attachedTo: element, handlerFunction: fun(thePed: ped, seat: vehicleSeatId), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onClientVehicleExit fun(eventName: "onClientVehicleExit", attachedTo: element, handlerFunction: fun(thePed: ped, seat: vehicleSeatId), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onClientVehicleExplode fun(eventName: "onClientVehicleExplode", attachedTo: element, handlerFunction: fun(), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onClientVehicleNitroStateChange fun(eventName: "onClientVehicleNitroStateChange", attachedTo: element, handlerFunction: fun(state: boolean), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onClientVehicleRespawn fun(eventName: "onClientVehicleRespawn", attachedTo: element, handlerFunction: fun(), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onClientVehicleStartEnter fun(eventName: "onClientVehicleStartEnter", attachedTo: element, handlerFunction: fun(thePed: ped, seat: vehicleSeatId, door: 0 | 1 | 2 | 3 ), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onClientVehicleStartExit fun(eventName: "onClientVehicleStartExit", attachedTo: element, handlerFunction: fun(thePed: ped, seat: vehicleSeatId, door: 0 | 1 | 2 | 3 ), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onClientVehicleWeaponHit fun(eventName: "onClientVehicleWeaponHit", attachedTo: element, handlerFunction: fun(weaponType: 0 | 1 | 2 | 3 | 4, hitElement: element | nil, hitX: number, hitY: number, hitZ: number, model: integer | nil, materialId: integer | nil), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean

--[[
    Weapon creation events
]]

---@alias addEventHandler_onClientWeaponFire fun(eventName: "onClientWeaponFire", attachedTo: element, handlerFunction: fun(hitElement: element | nil, posX: number,  posY: number, posZ: number, normalX: number, normalY: number, normalZ: number, materialType: integer | nil, lighting: number | nil, pieceHit: integer | nil), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean

--[[
    Other events
]]

---@alias addEventHandler_onClientChatMessage fun(eventName: "onClientChatMessage", attachedTo: element, handlerFunction: fun(text: string, r: integer, g: integer, b: integer, messageType: messageType), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onClientConsole fun(eventName: "onClientConsole", attachedTo: element, handlerFunction: fun(text: string), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onClientDebugMessage fun(eventName: "onClientDebugMessage", attachedTo: element, handlerFunction: fun(message: string, level: debugMessageLevel, file: string, line: integer, r: integer, g: integer, b: integer), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onClientExplosion fun(eventName: "onClientExplosion", attachedTo: element, handlerFunction: fun(x: number , y: number, z: number, theType: explosionType), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onClientFileDownloadComplete fun(eventName: "onClientFileDownloadComplete", attachedTo: element, handlerFunction: fun(fileName: string, success: boolean, requestResource: resource), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onClientHUDRender fun(eventName: "onClientHUDRender", attachedTo: element, handlerFunction: fun(), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onClientMinimize fun(eventName: "onClientMinimize", attachedTo: element, handlerFunction: fun(), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onClientMTAFocusChange fun(eventName: "onClientMTAFocusChange", attachedTo: element, handlerFunction: fun(windowFocused: boolean), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onClientPedsProcessed fun(eventName: "onClientPedsProcessed", attachedTo: element, handlerFunction: fun(), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onClientPlayerNetworkStatus fun(eventName: "onClientPlayerNetworkStatus", attachedTo: element, handlerFunction: fun(status: 1 | 0, ticks: integer), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onClientPreRender fun(eventName: "onClientPreRender", attachedTo: element, handlerFunction: fun(timeSlice: number), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onClientRender fun(eventName: "onClientRender", attachedTo: element, handlerFunction: fun(), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onClientRestore fun(eventName: "onClientRestore", attachedTo: element, handlerFunction: fun(didClearRenderTargets: boolean), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onClientTransferBoxProgressChange fun(eventName: "onClientTransferBoxProgressChange", attachedTo: element, handlerFunction: fun(downloadedSizeTotal: number, downloadTotalBytes: number), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onClientTransferBoxVisibilityChange fun(eventName: "onClientTransferBoxVisibilityChange", attachedTo: element, handlerFunction: fun(isVisible: boolean), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean
---@alias addEventHandler_onClientWorldSound fun(eventName: "onClientWorldSound", attachedTo: element, handlerFunction: fun(group: worldSoundGroup, index: integer, x: number, y: number, z: number), getPropagated?: boolean, priority?: addEventHandlerPriority): boolean

--- Merge ---

---@alias addEventHandler_onClientEvent addEventHandler_onClientWorldSound | addEventHandler_onClientTransferBoxVisibilityChange | addEventHandler_onClientTransferBoxProgressChange | addEventHandler_onClientRestore | addEventHandler_onClientRender | addEventHandler_onClientPreRender | addEventHandler_onClientPlayerNetworkStatus | addEventHandler_onClientPedsProcessed | addEventHandler_onClientMTAFocusChange | addEventHandler_onClientMinimize | addEventHandler_onClientHUDRender | addEventHandler_onClientExplosion | addEventHandler_onClientDebugMessage | addEventHandler_onClientConsole | addEventHandler_onClientChatMessage | addEventHandler_onClientWeaponFire | addEventHandler_onClientVehicleWeaponHit | addEventHandler_onClientVehicleStartExit | addEventHandler_onClientVehicleStartEnter | addEventHandler_onClientVehicleRespawn | addEventHandler_onClientVehicleNitroStateChange | addEventHandler_onClientVehicleExplode | addEventHandler_onClientVehicleExit | addEventHandler_onClientVehicleEnter | addEventHandler_onClientVehicleDamage | addEventHandler_onClientVehicleCollision | addEventHandler_onClientTrailerDetach | addEventHandler_onClientTrailerAttach | addEventHandler_onClientSoundStream | addEventHandler_onClientSoundStopped | addEventHandler_onClientSoundStarted | addEventHandler_onClientSoundFinishedDownload | addEventHandler_onClientSoundChangedMeta | addEventHandler_onClientSoundBeat | addEventHandler_onClientResourceStop | addEventHandler_onClientResourceStart | addEventHandler_onClientResourceFileDownload | addEventHandler_onClientProjectileCreation | addEventHandler_onClientObjectMoveStop | addEventHandler_onClientObjectMoveStart | addEventHandler_onClientObjectDamage | addEventHandler_onClientObjectBreak | addEventHandler_onClientPlayerWeaponSwitch | addEventHandler_onClientPlayerWeaponFire | addEventHandler_onClientPlayerWasted | addEventHandler_onClientPlayerVoiceStop | addEventHandler_onClientPlayerVoiceStart | addEventHandler_onClientPlayerVoiceResumed | addEventHandler_onClientPlayerVoicePause | addEventHandler_onClientPlayerVehicleExit | addEventHandler_onClientPlayerVehicleEnter | addEventHandler_onClientPlayerTarget | addEventHandler_onClientPlayerStuntStart | addEventHandler_onClientPlayerStuntFinish | addEventHandler_onClientPlayerStealthKill | addEventHandler_onClientPlayerSpawn | addEventHandler_onClientPlayerRadioSwitch | addEventHandler_onClientPlayerQuit | addEventHandler_onClientPlayerPickupLeave | addEventHandler_onClientPlayerPickupHit | addEventHandler_onClientPlayerJoin | addEventHandler_onClientPlayerHitByWaterCannon | addEventHandler_onClientPlayerHeliKilled | addEventHandler_onClientPlayerDamage | addEventHandler_onClientPlayerChoke | addEventHandler_onClientPlayerChangeNick | addEventHandler_onClientPickupLeave | addEventHandler_onClientPickupHit | addEventHandler_onClientPedStep | addEventHandler_onClientPedWeaponFire | addEventHandler_onClientPedWasted | addEventHandler_onClientPedVehicleExit | addEventHandler_onClientPedVehicleEnter | addEventHandler_onClientPedHitByWaterCannon | addEventHandler_onClientPedHeliKilled | addEventHandler_onClientPedDamage | addEventHandler_onClientMarkerLeave | addEventHandler_onClientMarkerHit | addEventHandler_onClientMouseWheel | addEventHandler_onClientMouseMove | addEventHandler_onClientMouseLeave | addEventHandler_onClientMouseEnter | addEventHandler_onClientGUITabSwitched | addEventHandler_onClientGUISize | addEventHandler_onClientGUIScroll | addEventHandler_onClientGUIMove | addEventHandler_onClientGUIMouseUp | addEventHandler_onClientGUIMouseDown | addEventHandler_onClientGUIFocus | addEventHandler_onClientGUIDoubleClick | addEventHandler_onClientGUIComboBoxAccepted | addEventHandler_onClientGUIClick | addEventHandler_onClientGUIChanged | addEventHandler_onClientGUIBlur | addEventHandler_onClientGUIAccepted | addEventHandler_onClientPaste | addEventHandler_onClientKey | addEventHandler_onClientDoubleClick | addEventHandler_onClientCursorMove | addEventHandler_onClientClick | addEventHandler_onClientCharacter | addEventHandler_onClientElementStreamOut | addEventHandler_onClientElementStreamIn | addEventHandler_onClientElementModelChange | addEventHandler_onClientElementInteriorChange | addEventHandler_onClientElementDimensionChange | addEventHandler_onClientElementDestroy | addEventHandler_onClientElementDataChange | addEventHandler_onClientElementColShapeLeave | addEventHandler_onClientElementColShapeHit | addEventHandler_onClientColShapeLeave | addEventHandler_onClientColShapeHit | addEventHandler_onClientBrowserWhitelistChange | addEventHandler_onClientBrowserTooltip | addEventHandler_onClientBrowserResourceBlocked | addEventHandler_onClientBrowserPopup | addEventHandler_onClientBrowserNavigate | addEventHandler_onClientBrowserLoadingStart | addEventHandler_onClientBrowserLoadingFailed | addEventHandler_onClientBrowserInputFocusChanged | addEventHandler_onClientBrowserDocumentReady | addEventHandler_onClientBrowserCreated | addEventHandler_onClientBrowserCursorChange
