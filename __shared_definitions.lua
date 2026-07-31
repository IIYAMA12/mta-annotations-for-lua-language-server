---@meta sharedConfigs
---@diagnostic disable: missing-return
---@diagnostic disable: lowercase-global

--[[
	Credits to the community for all the available syntax and descriptions
]]

---@alias sharedUserDataType "element"|"resource-data"|"xml-node"|"lua-timer"|"vector2"|"vector3"|"vector4"|"matrix"|"request"|"userdata"
--- Serverside
---@alias getUserdataType_server string|sharedUserDataType|"account"|"acl"|"acl-group"|"ban"|"text-item"|"text-display"
--- Clientside
---@alias getUserdataType_client string|sharedUserDataType
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetUserdataType)
]]
---@type fun(value: userdata | Matrix | Vector4 | Vector3 | Vector2): getUserdataType_server|getUserdataType_client
function getUserdataType() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/PasswordHash)
]]
---@type (fun(password: string, algorithm: string|"bcrypt", options: table): string) | (fun(password: string, algorithm: string|"bcrypt", options: table, callback: fun(result: string)): true)
function passwordHash() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/PasswordVerify)
]]
---@type (fun(password: string, hash: string): boolean) | (fun(password: string, hash: string, callback: fun(result: boolean)): true) | (fun(password: string, hash: string, options: table): boolean) | (fun(password: string, hash: string, options: table, callback: fun(result: boolean)): true)
function passwordVerify() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/DebugSleep)
]]
---@type fun(miliseconds: integer): boolean Returns true if the development mode is enabled and arguments are correct
function debugSleep() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetDevelopmentMode)
]]
---@type fun(): boolean Returns true if the development mode is on
function getDevelopmentMode() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetDevelopmentMode)
]]
---@type fun(enable: boolean, enableWeb?: boolean): boolean Returns true if the mode was set correctl
function setDevelopmentMode() end

---@nodiscard
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/XmlLoadFile)
]]
---@type fun(filePath: string, readOnly?: boolean): xmlnode: xmlnode | false Returns the root xmlnode object of an xml file if successful
function xmlLoadFile() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/XmlNodeSetAttribute)
	(Note: nil value will delete the attribute)
]]
---@type fun(node: xmlnode, name: string, value: string | number | nil): boolean Returns true if the attribute was set successfully
function xmlNodeSetAttribute() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetAircraftMaxHeight)
]]
---@type fun(): number Returns a float containing the max aircraft height.
function getAircraftMaxHeight() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/XmlNodeGetValue)
]]
---@type fun(theXMLNode: xmlnode): string | false Returns the value of the node as a string if it was received successfully
function xmlNodeGetValue() end

--- Serverside
---@alias createVehicle_server fun(model: vehicleId, x: number, y: number, z: number, rx?: number, ry?: number, rz?: number, numberplate?: string, variant1?: vehicleVariantId, variant2?: vehicleVariantId, synced?: true): vehicle

--- Clientside
---@alias createVehicle_client fun(model: vehicleId, x: number, y: number, z: number, rx?: number, ry?: number, rz?: number, numberplate?: string, variant1?: vehicleVariantId, variant2?: vehicleVariantId): vehicle
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/CreateVehicle)
	Returns the vehicle element that was created.
]]
---@see vehicleId
---@type createVehicle_server | createVehicle_client
function createVehicle() end

--- Serverside
---@alias createBlip_server fun(x: number, y: number, z: number, icon?: blipIconId, size?: integer, r?: integer, g?: integer, b?: integer, a?: integer, ordering?: integer, visibleDistance?: number, visibleTo?: root): blipElement: blip
--- Clientside
---@alias createBlip_client fun(x: number, y: number, z: number, icon?: blipIconId, size?: integer, r?: integer, g?: integer, b?: integer, a?: integer, ordering?: integer, visibleDistance?: number): blipElement: blip
---@see blipIconId
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/CreateBlip)
	Returns an element of the blip if it was created successfully
]]
---@type createBlip_server | createBlip_client
function createBlip() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetAttachedElements)
]]
---@type fun(theElement: element): element[] Returns a table of all the elements attached to the specified element.
function getAttachedElements() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetPickupAmount)
]]
---@type fun(thePickup: pickup): integer Returns an integer of the amount the pickup is set to, false if it's invalid, 0 if it's no health or amor pickup.
function getPickupAmount() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetBlipColor)
]]
---@type fun(theBlip: blip): r: integer, g: integer, b: integer, a: integer Returns four integers in RGBA format, with a maximum value of 255 for each. The values are, in order, red, green, blue, and alpha. Alpha decides the transparancy where 255 is opaque and 0 is fully transparent.
function getBlipColor() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetBlipSize)
]]
---@type fun(theBlip: blip, iconSize: integer): boolean Returns an true if the blip's size was set successfully.
function setBlipSize() end

--- Default
---@alias setPlayerNametagColor_default fun(thePlayer: player, r: integer, g: integer, b: integer): boolean
--- Reset to team color
---@alias setPlayerNametagColor_reset fun(thePlayer: player, color: false): boolean
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetPlayerNametagColor)
]]
---@type setPlayerNametagColor_default | setPlayerNametagColor_reset Returns true if the function was successful
function setPlayerNametagColor() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetBlipColor)
]]
---@type fun(theBlip: blip, red: integer, green: integer, blue: integer, alpha: integer): boolean Returns true if the blip's color was set successfully.
function setBlipColor() end

---@see weaponId
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetPickupWeapon)
]]
---@type fun(thePickup: pickup): weaponId Returns the Weapon ID of the pickup
function getPickupWeapon() end

---@see blipIconId
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetBlipIcon)
]]
---@type fun(theBlip: blip): blipIconId Returns an integer indicating which icon the blip has.
function getBlipIcon() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/AddPedClothes)
	See [wiki](https://wiki.multitheftauto.com/wiki/CJ_Clothes) for CJ_Clothes
]]
---@type fun(thePed: ped, clothesTexture: string, clothesModel: string, clothesType: clothesType): boolean This function returns true if the clothes were successfully added to the ped
function addPedClothes() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetBlipOrdering)
]]
---@type fun(theBlip: blip): zOrdering: integer Returns the Z ordering value of the blip if successful
function getBlipOrdering() end

--- Serverside
---@alias createBlipAttachedTo_server fun(elementToAttachTo: element, icon?: blipIconId, size?: integer, r?: integer, g?: integer, b?: integer, a?: integer, ordering?: integer, visibleDistance?: number, visibleTo?: root): blipElement: blip
--- Clientside
---@alias createBlipAttachedTo_client fun(elementToAttachTo: element, icon?: blipIconId, size?: integer, r?: integer, g?: integer, b?: integer, a?: integer, ordering?: integer, visibleDistance?: number): blipElement: blip
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/CreateBlipAttachedTo)
See [wiki](https://wiki.multitheftauto.com/wiki/Radar_Blips) for icon option
	Returns a blip if the blip was created succesfully
]]
---@type createBlipAttachedTo_server | createBlipAttachedTo_client
function createBlipAttachedTo() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/DetachElements)
]]
---@type fun(theElement: element, theAttachToElement?: element): boolean Returns true if the detaching was successful
function detachElements() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetElementAlpha)
]]
---@type fun(theElement: element): alpha: integer Returns an integer (0-255; 0 = transparent) indicating the element's alpha
function getElementAlpha() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetElementAttachedOffsets)
]]
---@type fun(theElement: element): x: number, y: number, z: number, xr: number, yr: number, zr: number Returns 6 floats, of which the first 3 indicate the position offset (x, y, z), and the last 3 indicate the rotation offset (x, y, z), if successful.
function getElementAttachedOffsets() end

--- Serverside
---@alias fadeCamera_server (fun(thePlayer: player, fadeIn: boolean, timeToFade?: number, red?: integer, green?: integer, blue?: integer): boolean)
--- Clientside
---@alias fadeCamera_client (fun(fadeIn: boolean, timeToFade?: number, red?: integer, green?: integer, blue?: integer): boolean)
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/FadeCamera)
]]
---@type fadeCamera_server | fadeCamera_client Returns true if the camera was faded successfully
function fadeCamera() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetPlayerName)
]]
---@type fun(thePlayer: player): string Returns a string containing the requested player's name
function getPlayerName() end

--- Valid result
---@alias getTypeIndexFromClothes_valid fun(clothesTexture: string, clothesModel: string): clothesType: clothesType, index: integer
--- Invalid Result
---@alias getTypeIndexFromClothes_invalid fun(clothesTexture: string, clothesModel: string): false
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetTypeIndexFromClothes)
]]
---@type getTypeIndexFromClothes_valid | getTypeIndexFromClothes_invalid This function returns two integers, type and index respectively, false if invalid arguments were passed to the function.
function getTypeIndexFromClothes() end

--- Valid result
---@alias getClothesByTypeIndex_valid fun(clothesType: clothesType, clothesIndex: integer): string, string
--- Invalid Result
---@alias getClothesByTypeIndex_invalid fun(clothesType: clothesType, clothesIndex: integer): false
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetClothesByTypeIndex)
]]
---@type getClothesByTypeIndex_valid | getClothesByTypeIndex_invalid This function returns 2 strings, a texture and model respectively, false if invalid arguments were passed to the function.
function getClothesByTypeIndex() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetBlipSize)
]]
---@type fun(theBlip: blip): size: integer Returns an integer indicating the size of the blip. The default value is 2. The maximum value is 25.
function getBlipSize() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetBodyPartName)
]]
---@type fun(bodyPartId: bodyPartId): bodyPartName This function returns a string containing the body part name if the ID is valid
function getBodyPartName() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetPlayerNametagText)
]]
---@type fun(thePlayer: player, text: string): boolean Returns true if successful
function setPlayerNametagText() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetElementID)
]]
---@type fun(theElement: element, name: string): boolean This returns true if successful
function setElementID() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/IsVoiceEnabled)
]]
---@type fun(): boolean Returns true if the voice is enabled on the server
function isVoiceEnabled() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetBlipOrdering)
]]
---@type fun(theBlip: blip, ordering: integer): boolean Returns true if the blip ordering was changed successfully
function setBlipOrdering() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetPlayerWantedLevel)
]]
---@type fun(thePlayer: player): wantedLevel: playerWantedLevel Returns an int from 0 to 6 representing the player's wanted level
function getPlayerWantedLevel() end

--- Serverside
---@alias playSoundFrontEnd_server fun(thePlayer: player, sound: soundFrontEndId): boolean
--- Clientside
---@alias playSoundFrontEnd_client fun(sound: soundFrontEndId): boolean
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/PlaySoundFrontEnd)
	Returns true if the sound was successfully played
]]
---@see soundFrontEndId
---@type playSoundFrontEnd_server | playSoundFrontEnd_client
function playSoundFrontEnd() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetClothesTypeName)
	See [wiki](https://wiki.multitheftauto.com/wiki/CJ_Clothes) for CJ_Clothes
]]
---@type fun(clothesType: clothesType): string This function returns a string (the name of the clothes type) if foun
function getClothesTypeName() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/CreateColSphere)
]]
---@type fun(fX: number, fY: number, fZ: number, fRadius: number): colshapeElement: colshape Returns a colshape element if successful
function createColSphere() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/CreateColCircle)
]]
---@type fun(fX: number, fY: number, radius: number): colshapeElement: colshape Returns a colshape element if successful
function createColCircle() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/CreateColRectangle)
]]
---@type fun(fX: number, fY: number, fWidth: number, fHeight: number): colshapeElement: colshape Returns a colshape element if successful
function createColRectangle() end

--- Serverside
---@alias isCursorShowing_server  fun(thePlayer: player): shown: boolean

--- Clientside
---@alias isCursorShowing_client fun(): shown: boolean

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/IsCursorShowing)
]]
---@type isCursorShowing_server | isCursorShowing_client Returns true if the player's cursor is visible
function isCursorShowing() end

--- Serverside
---@alias showCursor_server fun(thePlayer: player, show: boolean, toggleControls?: boolean): boolean
--- Clientside
---@alias showCursor_client fun(show: boolean, toggleControls?: boolean): boolean
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/ShowCursor)
]]
---@type showCursor_server | showCursor_client Returns true if the player's cursor was shown or hidden successfully
function showCursor() end

--- Serverside
---@alias removeEventHandler_server fun(eventName: eventName_server, attachedTo: element, functionVar: function): boolean
--- Clientside
---@alias removeEventHandler_client fun(eventName: eventName_client, attachedTo: element, functionVar: function): boolean
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/RemoveEventHandler)
]]
---@type removeEventHandler_server | removeEventHandler_client Returns true if the event handler was removed successfully. Returns false if the specified event handler could not be found.
function removeEventHandler() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/XmlNodeGetAttribute)
]]
---@type fun(node: xmlnode, name: string): string | false Returns the attribute in string form or false, if the attribute is not defined.
function xmlNodeGetAttribute() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/XmlDestroyNode)
]]
---@type fun(theXMLNode: xmlnode): boolean Returns true if the xml node was successfully destroyed
function xmlDestroyNode() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/TriggerEvent)
* Returns true if the event was triggered successfully, and was not cancelled using cancelEvent.
* Returns false if the event was triggered successfully, and was cancelled using cancelEvent.
]]
---@type fun(eventName: string, baseElement: element,  arg1?: unknownSyncAble, arg2?: unknownSyncAble, arg3?: unknownSyncAble, arg4?: unknownSyncAble, arg5?: unknownSyncAble, arg6?: unknownSyncAble, arg7?: unknownSyncAble, arg8?: unknownSyncAble, arg9?: unknownSyncAble, arg10?: unknownSyncAble, ...): boolean
function triggerEvent() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetElementDimension)
]]
---@type fun(theElement: element): dimension: integer Returns an integer for the dimension
function getElementDimension() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetElementAttachedOffsets)
]]
---@type fun(theElement: element, xPosOffset?: number, yPosOffset?: number, zPosOffset?: number, xRotOffset?: number, yRotOffset?: number, zRotOffset?: number): boolean Returns true if the attaching process was successful
function setElementAttachedOffsets() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetElementVelocity)
]]
---@type fun(theElement: element, speedX: number, speedY: number, speedZ: number): boolean Returns true if the speed was set successfully
function setElementVelocity() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetEventHandlers)
]]
---@type fun(eventName: string, attachedTo: element): attachedFunctions: function[] Returns table with attached functions
function getEventHandlers() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/FileExists)
]]
---@type fun(filePath: string): boolean Returns true if the file exists
function fileExists() end

--- If default
---@alias getMarkerTarget_default fun(theMarker: marker): false
--- If set
---@alias getMarkerTarget_isSet fun(theMarker: marker): x: number, y: number, z: number
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetMarkerTarget)
]]
---@type getMarkerTarget_default | getMarkerTarget_isSet
function getMarkerTarget() end

--- Serverside
---@alias cancelLatentEvent_server (fun(thePlayer: player, handle: integer): boolean)
--- Clientside
---@alias cancelLatentEvent_client (fun(handle: integer): boolean)
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/CancelLatentEvent)
]]
---@type cancelLatentEvent_server | cancelLatentEvent_client Returns a true if the latent event was successfully cancelled
function cancelLatentEvent() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetMarkerType)
]]
---@type fun(theMarker: marker, markerType: markerType): boolean Returns true if the marker type was changed
function setMarkerType() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/CreateColTube)
]]
---@type fun(fX: number, fY: number, fZ: number, fRadius: number, fHeight: number): colshapeElement: colshape Returns a colshape element if successful
function createColTube() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/FileClose)
]]
---@type fun(theFile: file): boolean Returns true if successful
function fileClose() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/FileDelete)
]]
---@type fun(filePath: string): boolean Returns true if successful, false otherwise (for example if there exists no file with the given name, or it does exist but is in use).
function fileDelete() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/IsElementAttached)
]]
---@type fun(theElement: element): boolean Returns true if the specified element is attached to another element, false if it is not attached
function isElementAttached() end

--- Serverside
---@alias takePlayerMoney_server fun(thePlayer: player, amount: integer): boolean
--- Clientside
---@alias takePlayerMoney_client fun(amount: integer): boolean
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/TakePlayerMoney)
]]
---@type takePlayerMoney_server | takePlayerMoney_client Returns true if the money was taken
function takePlayerMoney() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetMarkerTarget)
]]
---@type fun(theMarker: marker, x: number, y: number, z: number): boolean Returns true if target was set
function setMarkerTarget() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/FileCopy)
]]
---@type fun(filePath: string, copyToFilePath: string, overwrite?: boolean): boolean Return true if the file was copied
function fileCopy() end

--- Serverside
---@alias getLatentEventHandles_server fun(thePlayer: player): integer[]
--- Clientside
---@alias getLatentEventHandles_client fun(): integer[]
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetLatentEventHandles)
]]
---@type getLatentEventHandles_server | getLatentEventHandles_client Returns a table of handles
function getLatentEventHandles() end

--- Serverside
---@alias cancelEvent_server fun(cancel?: boolean, reason?: string): true
--- Clientside
---@alias cancelEvent_client fun(): true
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/CancelEvent)
]]
---@type cancelEvent_server | cancelEvent_client Always returns true.
function cancelEvent() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/CreateColCuboid)
]]
---@type fun(fX: number, fY: number, fZ: number, fWidth: number, fDepth: number, fHeight: number): colshape: colshape Returns a colshape element if successful
function createColCuboid() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetElementType)
]]
---@type fun(theElement: element): type: elementTypeAutoComplete Returns a string containing the element type
function getElementType() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/AttachElements)
]]
---@type fun(theElement: element, theAttachToElement: element, xPosOffset?: number, yPosOffset?: number, zPosOffset?: number, xRotOffset?: number, yRotOffset?: number, zRotOffset?: number): boolean Returns true if the attaching process was successful
function attachElements() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/RemovePedClothes)
	See [wiki](https://wiki.multitheftauto.com/wiki/CJ_Clothes) for CJ_Clothes
]]
---@type fun(thePed: ped, clothesType: clothesType, clothesTexture?: string, clothesModel?: string): boolean This function returns true if the clothes were successfully removed from the ped
function removePedClothes() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetElementInterior)
]]
---@type fun(theElement: element, interior: integer, x?: number, y?: number, z?: number): boolean Returns true if theElement and interior are valid arguments
function setElementInterior() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetElementChildren)
]]
---@type fun(parent: element, theType?: elementTypeAutoComplete): element[] This function returns a table that contains a list of elements that the parent has.
function getElementChildren() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/CreateElement)
]]
---@type fun(elementType: string, elementID?: string): element Returns the element if it was successfully created.
function createElement() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetTrainDirection)
]]
---@type fun(train: vehicle): clockwise: boolean Returns true if the train is driving clockwise on the train track
function getTrainDirection() end

---@nodiscard
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/FileCreate)
]]
---@type fun(filePath: string): file | false If successful, returns a file handle
function fileCreate() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetElementCallPropagationEnabled)
]]
---@type fun(theElement: element, enabled: boolean): boolean Returns true, if the propagation behaviour has been changed successfully
function setElementCallPropagationEnabled() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/DestroyElement)
]]
---@type fun(elementToDestroy: element): isDestroyed: boolean Returns true if the element was destroyed successfully, false if either the element passed to it was invalid or it could not be destroyed for some other reason (for example, clientside destroyElement can't destroy serverside elements).
function destroyElement() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetSlotFromWeapon)
]]
---@type fun(weaponid: weaponId): weaponSlotId Returns an integer representing the given weapon ID's associated weapon slot
function getSlotFromWeapon() end

---@see vehicleId
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetOriginalHandling)
]]
---@type fun(modelId: vehicleId): {[vehicleHandlingProperty]: unknown} Returns a table containing all the handling data
function getOriginalHandling() end

--- Water with 4 points
---@alias createWater_quad fun(x1: integer, y1: integer, z1: number, x2: integer, y2: integer, z2: number, x3: integer, y3: integer, z3: number, x4: integer, y4: integer, z4: number, bShallow?: boolean): water
--- Water with 3 points
---@alias createWater_triangle fun(x1: integer, y1: integer, z1: number, x2: integer, y2: integer, z2: number, x3: integer, y3: integer, z3: number, bShallow?: boolean): water
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/CreateWater)
]]
---@type createWater_quad | createWater_triangle Returns a water element if successful
function createWater() end

--- Serverside
---@alias createExplosion_server fun(x: number, y: number, z: number, theType: explosionType, creator?: player): boolean
--- Clientside
---@alias createExplosion_client fun(x: number, y: number, z: number, theType: explosionType, makeSound?: boolean, camShake?: number, damaging?: boolean): boolean
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/CreateExplosion)
]]
---@type createExplosion_server | createExplosion_client Returns true if the explosion was created.
function createExplosion() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetElementByID)
]]
---@type fun(id: string, index?: integer): element | false Returns the element with the given ID, or false if no such element exists.
function getElementByID() end

---@see pedId
---@see vehicleId
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetElementModel)
]]
---@type fun(theElement: element): integer Returns the model ID if successful
function getElementModel() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetElementCollisionsEnabled)
]]
---@type fun(theElement: element): boolean Returns true if the collisions are enabled
function getElementCollisionsEnabled() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetElementData)
]]
---@type fun(theElement: element, key: string, inherit?: boolean): unknownSyncAble This function returns a variable containing the requested element data, or false if the element or the element data does not exist.
function getElementData() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetLowLODElement)
]]
---@type fun(theElement: element, lowLODElement: element): boolean Returns true if the assignment was successful
function setLowLODElement() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/AddEvent)
]]
---@type fun(eventName: string, allowRemoteTrigger?: boolean): boolean Returns true if the event was added successfully
function addEvent() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetElementAttachedTo)
]]
---@type fun(theElement: element): element | false Returns the element that the chosen element is attached to, or false if the element isn't attached to another element.
function getElementAttachedTo() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/WasEventCancelled)
]]
---@type fun(): wasCancelled: boolean Returns true if the event was cancelled, false if it wasn't
function wasEventCancelled() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetElementHealth)
]]
---@type fun(theElement: ped | player | vehicle | object): health: number Returns a float indicating the element's health
function getElementHealth() end

--- Clientside
---@alias setElementData_client fun(theElement: element, key: string, value: unknownSyncAble, synchronize?: boolean): boolean
--- Serverside
---@alias setElementData_server  fun(theElement: element, key: string, value: unknownSyncAble, syncMode?: "broadcast" | "local" | "subscribe" | boolean, clientChangesPolicy?: "allow" | "deny" | "default"): boolean
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetElementData)
]]
---@type setElementData_server | setElementData_client Returns true if the data was set successfully
function setElementData() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetElementChild)
]]
---@type fun(parent: element, index: integer): element | false Returns the requested element if it exists, or false if it doesn't.
function getElementChild() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/FileFlush)
]]
---@type fun(theFile: file): boolean Returns true if succeeded
function fileFlush() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/FileWrite)
]]
---@type fun(theFile: file, ...: string): bytesWritten: integer Returns the number of bytes successfully written to the file
function fileWrite() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/FileSetPos)
]]
---@type fun(theFile: file, offset: integer): actualPos: integer Returns where the offset was actually set at. I.e. if offset was past the end of the file, it will be set at the end of the file, and this position will be returned.
function fileSetPos() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/FileGetPath)
]]
---@type fun(theFile: file): path: string Returns a string representing the file path
function fileGetPath() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/FileGetSize)
]]
---@type fun(theFile: file): size: integer Returns the file size if successful
function fileGetSize() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/FileIsEOF)
]]
---@type fun(theFile: file): endOfFile: boolean Returns true if the file position of the specified file is at the end of the file
function fileIsEOF() end

---@nodiscard
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/FileOpen)
]]
---@type fun(filePath: string, readOnly?: boolean): file | false If successful, returns a file handle for the file. Otherwise returns false (f.e. if the file doesn't exist).
function fileOpen() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/FileRead)
]]
---@type fun(theFile: file, count: integer): string Returns the bytes that were read in a string.
function fileRead() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/FileRename)
]]
---@type fun(filePath: string, newFilePath: string): boolean If successful, returns true
function fileRename() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetMarkerCount)
]]
---@type fun(): count: integer Returns the number of markers that currently exist.
function getMarkerCount() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetMarkerSize)
]]
---@type fun(myMarker: marker): size: number Returns a float containing the size of the specified marker.
function getMarkerSize() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetMarkerIcon)
]]
---@type fun(theMarker: marker, icon: markerIcon): boolean Returns true if successful
function setMarkerIcon() end

--- Serverside syntax 1
---@alias bindKey_server_syntax_1 fun(thePlayer: player, key: keyName | controlName, keyState: keyState, handlerFunction: fun(keyPresser: player, key: keyName | controlName,  keyState: keyState, ...:any), ...:any): boolean
--- Serverside syntax 2
---@alias bindKey_server_syntax_2 fun(thePlayer: player, key: keyName, keyState: keyState, commandName: string, ...:any): boolean
---@alias keyOrControlName keyName | controlName
---Clientside syntax 1
---@alias bindKey_client_syntax_1 fun(key: keyOrControlName, keyState: keyState, handlerFunction: fun(key: keyOrControlName,  keyState: keyState, ...:any), ...:any): boolean
---Clientside syntax 2
---@alias bindKey_client_syntax_2  fun(key: keyName, keyState: keyState, commandName: string, ...:any): boolean
---@alias bindKey_server bindKey_server_syntax_1 | bindKey_server_syntax_2
---@alias bindKey_client bindKey_client_syntax_1 | bindKey_client_syntax_2
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/BindKey)
]]
---@type bindKey_server | bindKey_client Returns true if the key was bound
function bindKey() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/IsPedChoking)
]]
---@type fun(thePed: ped): boolean Returns true if the ped is choking
function isPedChoking() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetElementParent)
]]
---@type fun(theElement: element): parent: element This returns the parent as an element.
function getElementParent() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetElementMatrix)
]]
---@type fun(theElement: element, legacy?: boolean): matrixAsTable Returns a multi-dimensional array
function getElementMatrix() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetElementsWithinColShape)
]]
---@type fun(shape: colshape, elemType?: elementTypeAutoComplete): element[] Returns a table containing all the elements inside the colshape, of the specified type.
function getElementsWithinColShape() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetElementColShape)
]]
---@type fun(theElement: element): colshape Returns colshape of the element
function getElementColShape() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetMarkerSize)
]]
---@type fun(theMarker: marker, size: number): boolean Returns true if successful
function setMarkerSize() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetMarkerColor)
]]
---@type fun(theMarker: marker): r: integer, g: integer, b: integer, a: integer Returns four ints corresponding to the amount of red, green, blue and alpha (respectively) of the marker
function getMarkerColor() end

--- Serverside
---@alias createMarker_server fun(x: number, y: number, z: number, theType?: markerType, size?: number, r?: integer, g?: integer, b?: integer, a?: integer, visibleTo?: root, ignoreAlphaLimits?: boolean): markerElement: marker
--- Clientside
---@alias createMarker_client fun(x: number, y: number, z: number, theType?: markerType, size?: number, r?: integer, g?: integer, b?: integer, a?: integer, ignoreAlphaLimits?: boolean): markerElement: marker
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/CreateMarker)
]]
---@type createMarker_server | createMarker_client
function createMarker() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/StopObject)
]]
---@type fun(theobject: object): boolean returns true if successful.
function stopObject() end

--- Serverside syntax 1
---@alias unbindKey_server_syntax_1 fun(thePlayer: player, key: keyName, command: string): boolean
--- Serverside syntax 2
---@alias unbindKey_server_syntax_2 fun(thePlayer: player, key: keyName | controlName, keyState?: keyState, handler?: function): boolean
--- Clientside syntax 1
---@alias unbindKey_client_syntax_1 fun(key: keyName, keyState: keyState, command: string): boolean
--- Clientside syntax 2
---@alias unbindKey_client_syntax_2 fun(key: keyName | controlName, keyState?: keyState, handler?: function): boolean
---@alias unbindKey_server unbindKey_server_syntax_1 | unbindKey_server_syntax_2
---@alias unbindKey_client unbindKey_client_syntax_1 | unbindKey_client_syntax_2
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/UnbindKey)
]]
---@type unbindKey_server | unbindKey_client Returns true if the key was unbound, false if it was not previously bound
function unbindKey() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetMarkerType)
	Returns the marker type.
]]
---@see markerType
---@type fun(theMarker: marker): type: markerType
function getMarkerType() end

--- Serverside
---@alias createPed_server (fun(modelid: pedId, x: number, y: number, z?: number, rot?: number, synced?: boolean): ped)
--- Clientside
---@alias createPed_client (fun(modelid: pedId, x: number, y: number, z: number, rot?: number): ped)
---@see pedId
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/CreatePed)
]]
---@type createPed_server | createPed_client Returns a ped element if it was successfully created.
function createPed() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/IsPedDucked)
]]
---@type fun(thePed: ped): ducked: boolean Returns true if the ped is ducked
function isPedDucked() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetTeamName)
]]
---@type fun(theTeam: team): name: string Returns a string representing the team's name
function getTeamName() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetTrainSpeed)
]]
---@type fun(train: vehicle): speed: number Returns the train's speed if successful
function getTrainSpeed() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetTeamFriendlyFire)
]]
---@type fun(theTeam: team): friendlyFire: boolean Returns true if friendly fire is on for the specified team
function getTeamFriendlyFire() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetTeamFromName)
]]
---@type fun(teamName: string): team: team | false Returns the team element if it was found
function getTeamFromName() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/Base64Decode)
]]
---@type fun(data: string): string Returns the decrypted data from base64 representation of the encrypted block if the decryption process was successfully completed
function base64Decode() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/OutputDebugString)
]]
---@type fun(text: string, level?: debugMessageLevel, red?: integer, green?: integer, blue?: integer): boolean Returns true if the debug message was successfully output
function outputDebugString() end

--- Serverside
---@alias outputConsole_server fun(text: string, visibleTo?: root): boolean
--- Clientside
---@alias outputConsole_client fun(text: string): boolean

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/OutputConsole)
]]
---@type outputConsole_server | outputConsole_client Returns true if successful
function outputConsole() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetCloudsEnabled)
]]
---@type fun(): boolean Returns true if the clouds are enabled
function getCloudsEnabled() end

--- Returns a string of the name of the weapon or some of the death type
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetWeaponNameFromID)
]]
---@type fun(id: weaponId | 19 | 37 | 49 | 50 | 51 | 52 | 53 | 54 | 55 | 56 | 57 | 59 ): weaponName | "Rocket"|"Rammed"|"Ranover"|"Explosion"|"Driveby"|"Drowned"|"Fall"|"Unknown"|"Melee"|"Weapon"|"Tank Grenade"
function getWeaponNameFromID() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/KillPed)
]]
---@type fun(thePed: ped, theKiller?: ped, weapon?: weaponId | damageTypeId, bodyPart?: bodyPartId, stealth?: boolean): boolean Returns true if the ped was killed
function killPed() end

--- Health
---@alias setPickupType_health fun(thePickup: pickup, theType: 0, amount: integer): boolean
--- Armor
---@alias setPickupType_armor fun(thePickup: pickup, theType: 1, amount: integer): boolean
--- Weapon
---@alias setPickupType_weapon fun(thePickup: pickup, theType: 2, weapon: weaponId, ammo?: integer): boolean
--- Model
---@alias setPickupType_model fun(thePickup: pickup, theType: 3, model: pickupModelSuggestion | integer): boolean
---@see pickupModelSuggestion
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetPickupType)
	Returns true if successful
]]
---@type setPickupType_health | setPickupType_armor | setPickupType_weapon | setPickupType_model
function setPickupType() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/RemovePedFromVehicle)
]]
---@type fun(thePed: ped): boolean Returns true if the operation was successful, false if it isn't in a vehicle.
function removePedFromVehicle() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetPlayerNametagShowing)
]]
---@type fun(thePlayer: player, showing: boolean): boolean Returns true if successful
function setPlayerNametagShowing() end

--- Serverside
---@alias showChat_server (fun(thePlayer: player, show: boolean, inputBlocked?: boolean): boolean)
--- Clientside
---@alias showChat_client (fun(show: boolean, inputBlocked?: boolean): boolean)
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/ShowChat)
]]
---@type showChat_server | showChat_client Returns true if the player's chat was shown or hidden successfully
function showChat() end

--- Serverside
---@alias createRadarArea_server fun(startPosX: number, startPosY: number, sizeX: number, sizeY: number, r?: integer, g?: integer, b?: integer, a?: integer, visibleTo?: element): radarareaElement: radararea
--- Clientside
---@alias createRadarArea_client fun(startPosX: number, startPosY: number, sizeX: number, sizeY: number, r?: integer, g?: integer, b?: integer, a?: integer): radarareaElement: radararea
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/CreateRadarArea)
]]
---@type createRadarArea_server | createRadarArea_client Returns a `radararea` element if successful
function createRadarArea() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/IsElementWithinMarker)
]]
---@type fun(theElement: element, theMarker: marker): boolean Returns true if the element is within the marker
function isElementWithinMarker() end

---@deprecated
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/IsPedOnFire)
]]
---@type fun(thePed: ped): boolean Returns true if the ped is on fire
function isPedOnFire() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/AddVehicleUpgrade)
]]
---@type fun(theVehicle: vehicle, upgrade: vehicleUpgradeId | "all"): boolean Returns true if the upgrade was successfully added to the vehicle
function addVehicleUpgrade() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetMarkerColor)
]]
---@type fun(theMarker: marker, r: integer, g: integer, b: integer, a: integer): boolean Returns true if successful
function setMarkerColor() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/FixVehicle)
]]
---@type fun(theVehicle: vehicle): boolean Returns true if the vehicle was fixed
function fixVehicle() end

---@deprecated Use isPedWearingJetpack instead
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/DoesPedHaveJetPack)
]]
---@type fun(thePed: ped): boolean
function doesPedHaveJetPack() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/IsPedInVehicle)
* Note: `Clientside` IsPedInVehicle only returns true if the ped is physically inside a vehicle. To check if the ped is entering or exiting a vehicle, use: getPedOccupiedVehicle(ped) ~= false
* Note: `Serverside` IsPedInVehicle returns whether the ped is entering, inside or exiting a vehicle.
]]
---@type fun(thePed: ped): boolean Returns true if the ped is in a vehicle, false if he is on foot
function isPedInVehicle() end

--- Serverside
---@alias getElementsByType_server fun(theType: elementTypeAutoComplete, startAt?: element): element[]
--- Clientside
---@alias getElementsByType_client fun(theType: elementTypeAutoComplete, startAt?: element, streamedIn?: boolean): element[]
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetElementsByType)
]]
---@type getElementsByType_server | getElementsByType_client Returns a table containing all the elements of the specified type. Returns an empty table if there are no elements of the specified type.
function getElementsByType() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetElementChildrenCount)
]]
---@type fun(parent: element): integer Returns an integer with the number of child elements
function getElementChildrenCount() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetElementRotation)
]]
---@type fun(theElement: element, rotOrder?: elementRotOrder): rx: number, ry: number, rz: number Returns rx, ry, rz: 3 floats representing the Euler rotation angles on the axis X, Y and Z (with the rotation order depending on the rotOrder argument)
function getElementRotation() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetElementInterior)
]]
---@type fun(theElement: element): integer Returns an int for the interior if theElement is valid
function getElementInterior() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetElementID)
]]
---@type fun(theElement: element): string This returns a string containing the element ID. It will return an empty string if it has no ID.
function getElementID() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetRootElement)
]]
---@type fun(): element Returns the root element.
function getRootElement() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/IsElementCallPropagationEnabled)
]]
---@type fun(theElement: element): boolean Returns true if the propagation is enabled
function isElementCallPropagationEnabled() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetWeaponIDFromName)
]]
---@type fun(name: weaponName): weaponId Returns an int if the name matches that of a weapon
function getWeaponIDFromName() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetElementPosition)
]]
---@type fun(theElement: element): x: number, y: number, z: number Returns three floats indicating the position of the element, x, y and z respectively.
function getElementPosition() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/IsPedDoingGangDriveby)
]]
---@type fun(thePed: ped): boolean Returns true if the driveby state is enabled
function isPedDoingGangDriveby() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/IsElementFrozen)
]]
---@type fun(theElement: element): boolean Returns true if the element is frozen
function isElementFrozen() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/IsElementInWater)
]]
---@type fun(theElement: element): boolean Returns true if the passed element is in water
function isElementInWater() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/IsPedOnGround)
]]
---@type fun(thePed: ped): boolean Returns true if the ped is on foot and on the ground, false otherwise, even if he is in a car that stands still or on object outside world map.
function isPedOnGround() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/IsElement)
]]
---@type fun(theValue: any): boolean Returns true if the passed value is an element
function isElement() end

--- Serverside
---@alias getValidPedModels_server fun(): pedId[]
--- Clientside
---@alias getValidPedModels_client_noCustom fun(includeCustom?: false): pedId[]
--- Clientside (argument includeCustom: specifies if the table returned should contain custom model IDs allocated with engineRequestModel.)
---@alias getValidPedModels_client_includeCustom fun(includeCustom: true): integer[]
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetValidPedModels)
]]
---@type getValidPedModels_server | getValidPedModels_client_noCustom | getValidPedModels_client_includeCustom Returns a table with all valid ped models.
function getValidPedModels() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetLowLODElement)
]]
---@type fun(theElement: element): element Returns a low LOD element if successful
function getLowLODElement() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetElementVelocity)
]]
---@type fun(theElement: element): vx: number, vy: number, vz: number If succesful, returns three floats that represent the element's current velocity along the x, y, and z axis respectively.
function getElementVelocity() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/IsElementDoubleSided)
]]
---@type fun(theElement: element): boolean Returns true if the `theElement` is double-sided
function isElementDoubleSided() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/IsElementWithinColShape)
]]
---@type fun(theElement: element, theShape: colshape): boolean Returns true if the element is within the colshape
function isElementWithinColShape() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetElementCollisionsEnabled)
]]
---@type fun(theElement: element, enabled: boolean): boolean Returns true if the collisions were set succesfully
function setElementCollisionsEnabled() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/IsElementLowLOD)
]]
---@type fun(theElement: element): boolean Returns true if the element is low LOD
function isElementLowLOD() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetElementAlpha)
	`alpha`: The alpha value to set. Values are 0-255, where 255 is fully opaque and 0 is fully transparent.
	Note: Objects are fully transparent at 140.
]]
---@type fun(theElement: element, alpha: integer): boolean Returns true or false if invalid arguments were passed.
function setElementAlpha() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetElementPosition)
]]
---@type fun(theElement: element, x: number, y: number, z: number, warp?: boolean): boolean Returns true if the function was successful
function setElementPosition() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetElementParent)
]]
---@type fun(theElement: element, parent: element): boolean Returns true if both elements are valid
function setElementParent() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetElementHealth)
	`newHealth` Depending on the stat MAX_HEALTH, the max health can be 200.
]]
---@type fun(theElement: element, newHealth: number): boolean Returns true if the new health was set successfully
function setElementHealth() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetElementRotation)
]]
---@type fun(theElement: element, rotX: number, rotY: number, rotZ: number, rotOrder?: elementRotOrder, conformPedRotation?: boolean): boolean Returns true if the element rotation was successfully set and false otherwise.
function setElementRotation() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/IsPedHeadless)
]]
---@type fun(thePed: ped | player): boolean Returns true if the ped is headless
function isPedHeadless() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetElementDoubleSided)
]]
---@type fun(theElement: element, enable: boolean): boolean Returns true if theElement is valid
function setElementDoubleSided() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetElementFrozen)
]]
---@type fun(theElement: element, freezeStatus: boolean): boolean Returns true if the element was frozen
function setElementFrozen() end

---@see pedId
---@see vehicleId
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetElementModel)
]]
---@type fun(theElement: element, model: integer): boolean Returns true if successful
function setElementModel() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetJetpackMaxHeight)
]]
---@type fun(): number Returns a float containing the max jetpack height.
function getJetpackMaxHeight() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetPlayerTeam)
]]
---@type fun(thePlayer: player): team | false Returns a team element representing the team the player is on, false if the player is not part of a team.
function getPlayerTeam() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/XmlNodeSetValue)
]]
---@type fun(theXMLNode: xmlnode, value: string, setCDATA?: boolean): boolean Returns true if value was successfully set
function xmlNodeSetValue() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/XmlSaveFile)
]]
---@type fun(rootNode: xmlnode): boolean Returns true if save was successful
function xmlSaveFile() end

---Serverside
---@alias isPlayerMapForced_server fun(thePlayer: player): boolean
---Clientside
---@alias isPlayerMapForced_client fun(): boolean
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/IsPlayerMapForced)
]]
---@type isPlayerMapForced_server | isPlayerMapForced_client Returns true if the local player's radar map is forced on
function isPlayerMapForced() end

--- If default
---@alias getFarClipDistance_default fun(): false
--- If set
---@alias getFarClipDistance_isSet fun(): number
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetFarClipDistance)
]]
---@type getFarClipDistance_default | getFarClipDistance_isSet Returns a float with the current render distance if set.
function getFarClipDistance() end

---Serverside
---@alias detonateSatchels_server fun(thePlayer: player): boolean
---Clientside
---@alias detonateSatchels_client fun(): boolean
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/DetonateSatchels)
]]
---@type detonateSatchels_server | detonateSatchels_client Returns true if successful
function detonateSatchels() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/AreTrafficLightsLocked)
]]
---@type fun(): boolean Returns true the traffic lights are currently locked
function areTrafficLightsLocked() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetPlayersInTeam)
]]
---@type fun(theTeam: team): player[] Returns a table of all the players in the team
function getPlayersInTeam() end

--- No flags
---@alias getWeaponProperty_default fun(weaponNameOrweaponID: weaponPropertyWeaponName | weaponId, weaponSkill: weaponSkill, property: weaponProperty): integer
--- Flags
---@alias getWeaponProperty_flags fun(weaponNameOrweaponID: weaponPropertyWeaponName | weaponId, weaponSkill: weaponSkill, property: weaponPropertyFlags): boolean
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetWeaponProperty)
]]
---@type getWeaponProperty_default | getWeaponProperty_flags Returns the weapon property
function getWeaponProperty() end

--- No flags
---@alias getOriginalWeaponProperty_default fun(weaponNameOrweaponID: weaponPropertyWeaponName | weaponId, weaponSkill: weaponSkill, property: weaponProperty): integer
--- Flags
---@alias getOriginalWeaponProperty_flags fun(weaponNameOrweaponID: weaponPropertyWeaponName | weaponId, weaponSkill: weaponSkill, property: weaponPropertyFlags): boolean
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetOriginalWeaponProperty)
]]
---@type getOriginalWeaponProperty_default | getOriginalWeaponProperty_flags Returns the original weapon property
function getOriginalWeaponProperty() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetPlayerNametagColor)
]]
---@type fun(thePlayer: player): r: integer, g: integer, b: integer Returns red, green and blue values if an existent player was specified
function getPlayerNametagColor() end

---Serverside
---@alias forcePlayerMap_server fun(thePlayer: player, forceOn: boolean): boolean
---Clientside
---@alias forcePlayerMap_client fun(forceOn: boolean): boolean
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/ForcePlayerMap)
]]
---@type forcePlayerMap_server | forcePlayerMap_client Returns true if the player's radar map was forced on
function forcePlayerMap() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetMinuteDuration)
]]
---@type fun(): integer Returns the number of real-world milliseconds that go in an ingame minute.
function getMinuteDuration() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/XmlUnloadFile)
]]
---@type fun(node: xmlnode): boolean Returns true if the document was unloaded successfully
function xmlUnloadFile() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/DetachTrailerFromVehicle)
]]
---@type fun(theVehicle: vehicle, theTrailer?: vehicle): boolean Returns true if the vehicle's were successfully detached
function detachTrailerFromVehicle() end

---@nodiscard
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/XmlCreateFile)
]]
---@type fun(filePath: string, rootNodeName: string): xmlnode | false Returns the root xmlnode object of the new XML file if successful, or false otherwise.
function xmlCreateFile() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetPlayerPing)
]]
---@type fun(thePlayer: player): integer Returns the ping as an integer
function getPlayerPing() end

--- Serverside
---@alias getPlayerMoney_server fun(thePlayer: player): money: integer
--- Clientside
---@alias getPlayerMoney_client fun(): money: integer
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetPlayerMoney)
]]
---@type getPlayerMoney_server | getPlayerMoney_client Returns an integer with the amount of money
function getPlayerMoney() end

--- Serverside
---@alias setPlayerMoney_server fun(thePlayer: player, amount: integer, instant?: boolean): boolean
--- Clientside
---@alias setPlayerMoney_client fun(amount: integer, instant?: boolean): boolean
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetPlayerMoney)
]]
---@type setPlayerMoney_server | setPlayerMoney_client Returns true if the money was added
function setPlayerMoney() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetElementDimension)
	Returns true if theElement and dimension are valid, false otherwise. Also returns false if theElement is a player and it's not alive.
]]
---@type fun(theElement: element, dimension: integer): boolean
function setElementDimension() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/WarpPedIntoVehicle)
]]
---@type fun(thePed: ped, theVehicle: vehicle, seat?: vehicleSeatId): boolean Returns true if the operation is successful
function warpPedIntoVehicle() end

--- Serverside
---@alias blowVehicle_server fun(vehicleToBlow: vehicle, explode?: boolean): boolean
--- Clientside
---@alias blowVehicle_client fun(vehicleToBlow: vehicle): boolean
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/BlowVehicle)
]]
---@type blowVehicle_server | blowVehicle_client Returns true if the vehicle was blown up
function blowVehicle() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/IsPedDead)
]]
---@type fun(thePed: ped): boolean Returns true if the ped is dead
function isPedDead() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/AttachTrailerToVehicle)
]]
---@type fun(theVehicle: vehicle, theTrailer: vehicle): boolean Returns true if the vehicle's were successfully attached
function attachTrailerToVehicle() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetWindVelocity)
]]
---@type fun(velocityX: number, velocityY: number, velocityZ: number): boolean Returns true if successful
function setWindVelocity() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetSunColor)
]]
---@type fun(r1: integer, g1: integer, b1: integer, r2: integer, g2: integer, b2: integer): boolean Returns true if the color of the sun was set
function setSunColor() end

--- If default
---@alias getSunColor_default fun(): false
--- If set
---@alias getSunColor_ifSet fun(): r1: integer, g1: integer, b1: integer, r2: integer, g2: integer, b2: integer
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetSunColor)
]]
---@type getSunColor_default | getSunColor_ifSet Returns the color of the sun as six numbers, false if its default.
function getSunColor() end

--- If default
---@alias getFogDistance_default fun(): false
--- If set
---@alias getFogDistance_ifSet fun(): distance: number
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetFogDistance)
]]
---@type getFogDistance_default | getFogDistance_ifSet  Returns a float with the current fog render distance
function getFogDistance() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/ResetSunColor)
]]
---@type fun(): boolean Returns true if the color of the sun was reset
function resetSunColor() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetRainLevel)
]]
---@type fun(level: number): boolean Returns true if the rain level was set
function setRainLevel() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetFogDistance)
]]
---@type fun(distance: number): boolean Returns true if the distance changed successfully
function setFogDistance() end

--- If default
---@alias getMoonSize_default fun(): false
--- If set
---@alias getMoonSize_ifSet fun(): size: integer
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetMoonSize)
]]
---@type getMoonSize_default | getMoonSize_ifSet Returns a integer being the moon size that is currently set, depending on which side it is used.
function getMoonSize() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/XmlCopyFile)
]]
---@type fun(nodeToCopy: xmlnode, newFilePath: string): xmlnode | false Returns the xmlnode of the copy if the node was successfully copied, false if invalid arguments were passed.
function xmlCopyFile() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetResourceFromName)
]]
---@type fun(resourceName: string): resource | false Returns the resource with the specified name, or false if no resource of that name exists. Note that clientside this will also return false for resources that are in the loaded state, since the client is unaware of resources that have not been started.
function getResourceFromName() end

--- Serverside
---@alias givePlayerMoney_server fun(thePlayer: player, amount: integer): boolean
--- Clientside
---@alias givePlayerMoney_client fun(amount: integer): boolean
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GivePlayerMoney)
	Returns true if the money was added
]]
---@type givePlayerMoney_server | givePlayerMoney_client
function givePlayerMoney() end

--- Serverside
---@alias getCameraMatrix_server (fun(thePlayer: player): x: number, y: number, z: number, lx: number, ly: number, lz: number, roll: number, fieldOfView: number)
--- Clientside
---@alias getCameraMatrix_client (fun(): x: number, y: number, z: number, lx: number, ly: number, lz: number, roll: number, fieldOfView: number)
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetCameraMatrix)
	This function returns 8 floats if the argument is valid (when applicable); the first three indicate the position of the camera, the next three indicate the position of the point it's facing, and the last two are the roll and field of view.
]]
---@type getCameraMatrix_server | getCameraMatrix_client
function getCameraMatrix() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetPlayerNametagText)
]]
---@type fun(thePlayer: player): string Returns a string with the nametag text
function getPlayerNametagText() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetPickupAmmo)
]]
---@type fun(thePickup: pickup): integer Returns an integer of the amount of ammo in the pickup, 0 if it's no weapon pickup.
function getPickupAmmo() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/CountPlayersInTeam)
]]
---@type fun(theTeam: team): integer Returns an integer containing the number of players in the team
function countPlayersInTeam() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/IsPlayerNametagShowing)
]]
---@type fun(thePlayer: player): boolean Returns true if the player's name tag is being shown
function isPlayerNametagShowing() end

--- Health
---@alias createPickup_health fun(x: number, y: number, z: number, theType: 0, amount: integer, respawnTime?: integer): pickup: pickup
--- Armor
---@alias createPickup_armor fun(x: number, y: number, z: number, theType: 1, amount: integer, respawnTime?: integer): pickup: pickup
--- Weapon
---@alias createPickup_weapon fun(x: number, y: number, z: number, theType: 2, weapon: weaponId, respawnTime?: integer, ammo?: integer): pickup: pickup
--- Model
---@alias createPickup_model fun(x: number, y: number, z: number, theType: 3, model: pickupModelSuggestion | integer, respawnTime?: integer): pickup: pickup
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/CreatePickup)
	Returns pickup element if the pickup was created succesfully
]]
---@see pickupModelSuggestion for custom models
---@type createPickup_health | createPickup_armor | createPickup_weapon | createPickup_model
function createPickup() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetAircraftMaxVelocity)
]]
---@type fun(): maxVelocity: number Returns a float being the max velocity that is currently set, depending on which side it is used.
function getAircraftMaxVelocity() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetPlayerFromName)
]]
---@type fun(playerName: string): player | false Returns a player element for the player with the nickname provided. If there is no player with that name, false is returned.
function getPlayerFromName() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetTeamColor)
]]
---@type fun(theTeam: team): r: integer, g: integer, b: integer Returns 3 integers representing the red, green, and blue color components of the team if it's valid
function getTeamColor() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetHeatHaze)
]]
---@type fun(): intensity: integer, randomShift: integer, speedMin: integer, speedMax: integer, scanSizeX: integer, scanSizeY: integer, renderSizeX: integer, renderSizeY: integer, bShowInside: boolean Returns 9 values
function getHeatHaze() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetWeatherBlended)
	See [wiki](https://wiki.multitheftauto.com/wiki/Weather) for weather definitions
]]
---@type fun(weatherId: integer): boolean Returns true if successful
function setWeatherBlended() end

---@see garageId
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetGarageOpen)
]]
---@type fun(garageId: garageId, open: boolean): boolean Returns true if successful
function setGarageOpen() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetGameSpeed)
]]
---@type fun(): number Returns a float representing the speed of the game.
function getGameSpeed() end

---@see pickupType
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetPickupType)
]]
---@type fun(thePickup: pickup): pickupType Returns an integer of the type of the pickup
function getPickupType() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetBlipIcon)
	See [wiki](https://wiki.multitheftauto.com/wiki/Radar_Blips) for definitions
]]
---@type fun(theBlip: blip, icon: blipIconId): boolean Returns true if the icon was successfully set
function setBlipIcon() end

--- Serverside
---@alias getCameraInterior_server fun(thePlayer: player): integer
--- Clientside
---@alias getCameraInterior_client fun(): integer
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetCameraInterior)
]]
---@type getCameraInterior_server | getCameraInterior_client Returns an integer indicating the camera's interior
function getCameraInterior() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetWeather)
	See [wiki](https://wiki.multitheftauto.com/wiki/Weather) for weather definitions
	Returns two integers indicating the weather type that is currently active. The first integer says what weather is currently considered to be active. The second integer is the weather id that is being blended into if any, otherwise it is nil.
]]
---@type fun(): weatherId: integer, weatherBlendId: integer | nil
function getWeather() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetHeatHaze)
	Returns true if the heat haze effect was set correctly
]]
---@type fun(intensity: integer, randomShift?: integer, speedMin?: integer, speedMax?: integer, scanSizeX?: integer, scanSizeY?: integer, renderSizeX?: integer, renderSizeY?: integer, bShowInside?: boolean): boolean
function setHeatHaze() end

--- Serverside
---@alias setCameraTarget_server fun(thePlayer: player, target?: player): boolean
--- Clientside syntax 1
---@alias setCameraTarget_client_syntax_1 fun( target: player): boolean
--- Clientside syntax 2 (Has no effect when the camera doesn't have a target.)
---@alias setCameraTarget_client_syntax_2 fun( targetX: number, targetY: number, targetZ: number): boolean
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetCameraTarget)
]]
---@type setCameraTarget_server | setCameraTarget_client_syntax_1 | setCameraTarget_client_syntax_2 Returns true if the function was successful
function setCameraTarget() end

--- Serverside
---@alias setCameraMatrix_server fun(thePlayer: player, positionX: number, positionY: number, positionZ: number, lookAtX?: number, lookAtY?: number, lookAtZ?: number, roll?: number, fov?: number): boolean
--- Clientside
---@alias setCameraMatrix_client fun(positionX: number, positionY: number, positionZ: number, lookAtX?: number, lookAtY?: number, lookAtZ?: number, roll?: number, fov?: number): boolean
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetCameraMatrix)
]]
---@type setCameraMatrix_server | setCameraMatrix_client Returns true if the arguments are valid
function setCameraMatrix() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/Inspect)
]]
---@type fun(var: any, options?: {depth?: integer, newline?: string, indent?: string, process?: fun(item: unknown, path: (string|table)[]): item: unknown|nil }): string Always returns a string.
function inspect() end

--- Serverside
---@alias getCameraTarget_server fun(thePlayer: player): element | false
--- Clientside
---@alias getCameraTarget_client fun(): element | false
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetCameraTarget)
]]
---@type getCameraTarget_server | getCameraTarget_client Returns an element of the target or false if there is no target
function getCameraTarget() end

--- Serverside
---@alias getFunctionsBoundToKey_server fun(thePlayer: player, theKey: keyName, keyState: keyState): {[keyName]: function}
--- Clientside
---@alias getFunctionsBoundToKey_client fun(theKey: keyName, keyState: keyState):  {[keyName]: function}
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetFunctionsBoundToKey)
]]
---@type getFunctionsBoundToKey_server |  getFunctionsBoundToKey_client Returns a table of the key function(s).
function getFunctionsBoundToKey() end

--- Serverside
---@alias isControlEnabled_server fun(thePlayer: player, control: controlName): boolean
--- Clientside
---@alias isControlEnabled_client fun(control: controlName): boolean
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/IsControlEnabled)
]]
---@type isControlEnabled_server | isControlEnabled_client Returns true if control is enabled
function isControlEnabled() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetWeather)
	See [wiki](https://wiki.multitheftauto.com/wiki/Weather) for weather definitions
	`weatherId`: The ID of new weather. Valid values are 0 to 255 inclusive.
]]
---@type fun(weatherId: integer): boolean Returns true if the weather was set succesfully
function setWeather() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetGameSpeed)
]]
---@type fun(value: gameSpeed): boolean Returns true if the gamespeed was set successfully
function setGameSpeed() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetResourceExportedFunctions)
]]
---@type fun(res?: resource): string[] Returns a table of function names if successful
function getResourceExportedFunctions() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetTrafficLightsLocked)
]]
---@type fun(toggle: boolean): boolean Returns true if the successful
function setTrafficLightsLocked() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetMoonSize)
	`size`: The size, can be 0 or any positive value. Default is 3.
]]
---@type fun(size: integer): boolean Returns true if the moon size was set correctly
function setMoonSize() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/ResetWindVelocity)
]]
---@type fun(): boolean Returns true if successful
function resetWindVelocity() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/RemoveVehicleUpgrade)
]]
---@type fun(theVehicle: vehicle, upgrade: vehicleUpgradeId): boolean Returns true if the upgrade was successfully removed from the vehicle
function removeVehicleUpgrade() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetNetworkUsageData)
	Returns a table with two fields: "in" and "out". Each of these contain a table with two fields: "bits" and "count". Each of these contain a table with 256 numeric fields ranging from 0 to 255, containing the appropriate network usage data for such packet id.
]]
---@type fun(): {["in"]: { count : { [integer] : integer }, bits : { [integer] : integer }}, out: { count : { [integer] : integer }, bits : { [integer] : integer }}}
function getNetworkUsageData() end

--- Serverside
---@alias toggleAllControls_server fun(thePlayer: player, enabled: boolean, gtaControls?: boolean, mtaControls?: boolean): boolean
--- Clientside
---@alias toggleAllControls_client fun(enabled: boolean, gtaControls?: boolean, mtaControls?: boolean): boolean
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/ToggleAllControls)
	Returns true if controls were toggled successfully
]]
---@type toggleAllControls_server | toggleAllControls_client
function toggleAllControls() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/Iprint)
]]
---@type fun(...: any): nil Always returns nil.
function iprint() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetDistanceBetweenPoints2D)
]]
---@type fun(x1: number, y1: number, x2: number, y2: number): number Returns a float containing the 2D distance between the two points.
function getDistanceBetweenPoints2D() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetMinuteDuration)
]]
---@type fun(milliseconds: integer): boolean Returns true if successful
function setMinuteDuration() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/RestoreWorldModel)
]]
---@type fun(modelId: integer, radius: number, x: number, y: number, z: number, iInterior?: integer): boolean Returns true if the world object was restored
function restoreWorldModel() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/RemoveWorldModel)
]]
---@type fun(modelId: integer, radius: number, x: number, y: number, z: number, interior?: integer): boolean Returns true if the object was removed
function removeWorldModel() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/ResetFogDistance)
]]
---@type fun(): boolean Returns true if operation was successful
function resetFogDistance() end

--- Clientside
---@alias toggleControl_server fun(thePlayer: player, control: controlName | controlNameHardCoded, enabled: boolean): boolean
--- Serverside
---@alias toggleControl_client fun(control: controlName | controlNameHardCoded, enabled: boolean): boolean
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/ToggleControl)
   Returns true if the control was set successfully
]]
---@type toggleControl_server | toggleControl_client
function toggleControl() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/ResetFarClipDistance)
]]
---@type fun(): boolean Returns true if operation was successful
function resetFarClipDistance() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetFarClipDistance)
]]
---@type fun(distance: number): boolean Returns true if the distance was set correctly.
function setFarClipDistance() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetDistanceBetweenPoints3D)
]]
---@type fun(x1: number, y1: number, z1: number, x2: number, y2: number, z2: number): number Returns a float containing the distance between the two points as a float.
function getDistanceBetweenPoints3D() end

--- Valid string
---@alias getColorFromString_validString fun(theColor: string): r: integer, g: integer, b: integer, a: integer
--- Invalid string
---@alias getColorFromString_invalidString fun(theColor: string): invalid: false
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetColorFromString)
	Returns four integers in RGBA format, with a maximum value of 255 for each. Each stands for red, green, blue, and alpha. Alpha decides transparancy where 255 is opaque and 0 is transparent. false is returned if the string passed is invalid.
]]
---@type getColorFromString_validString | getColorFromString_invalidString
function getColorFromString() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/IsGarageOpen)
]]
---@type fun(garageId: garageId): boolean Returns true if the garage is open
function isGarageOpen() end

---@alias networkStats { bytesReceived: integer, bytesSent: integer, packetsReceived: integer, packetsSent: integer, packetlossTotal: integer, packetlossLastSecond: integer, messagesInSendBuffer: integer, messagesInResendBuffer: integer, isLimitedByCongestionControl: integer, isLimitedByOutgoingBandwidthLimit: integer, encryptionStatus: integer }
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetNetworkStats)
* bytesReceived - Total number of bytes received since the connection was started
* bytesSent - Total number of bytes sent since the connection was started
* packetsReceived - Total number of packets received since the connection was started
* packetsSent - Total number of packets sent since the connection was started
* packetlossTotal - (0-100) Total packet loss percentage of sent data, since the connection was started
* packetlossLastSecond - (0-100) Packet loss percentage of sent data, during the previous second
* messagesInSendBuffer
* messagesInResendBuffer - Number of packets queued to be resent (due to packet loss)
* isLimitedByCongestionControl
* isLimitedByOutgoingBandwidthLimit
* encryptionStatus
]]
--- Serverside
---@alias getNetworkStats_server fun(player?: player): networkStats
--- Clientside
---@alias getNetworkStats_client fun(): networkStats
---@type getNetworkStats_server | getNetworkStats_client
function getNetworkStats() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetTime)
* `hour`: The hour of the new time (range 0-23).
* `minute`: The minute of the new time (range 0-59).
]]
---@type fun(hour: hours, minute: minutes): boolean Returns true if the new time was successfully set
function setTime() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetRainLevel)
]]
---@type fun(): number Returns the rain level as a number.
function getRainLevel() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/InterpolateBetween)
]]
---@type fun(x1: number, y1: number, z1: number, x2: number, y2: number, z2: number, fProgress: number, strEasingType: strEasingType, numberfEasingPeriod?: number, fEasingAmplitude?: number, fEasingOvershoot?: number): x: number, y: number, z: number Returns x, y, z
function interpolateBetween() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetSunSize)
]]
---@type fun(size: integer): boolean Returns true if the size of the sun was set, false otherwise.
function setSunSize() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetPerformanceStats)
]]
---@type fun(category: performanceCategory, options?: string, filter?: string): string[], string[][] Returns two tables. First contains column names. The second contains result rows. Each row is table of cells.
function getPerformanceStats() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetProcessMemoryStats)
	Returns a breakdown of the process memory usage. The reported numbers are always byte units and these numbers can be inaccurate.
* virtual - total program size
* resident - resident set size (memory in physical space/ram, also known as working set)
* shared - size of resident shared memory (shared with other processes)
* private - size of resident private memory (only for this process)

	Note: Resident set size should be roughly shared + private from the table.
]]
---@type fun(): processMemoryStats | nil Returns a table if successful, otherwise returns nil.
function getProcessMemoryStats() end

--- Serverside
---@alias setCameraInterior_server fun(thePlayer: player, interior: integer): boolean
--- Clientside
---@alias setCameraInterior_client fun(interior: integer): boolean
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetCameraInterior)
]]
---@type setCameraInterior_server | setCameraInterior_client Returns true if the camera's interior was changed successfully, false otherwise.
function setCameraInterior() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetTime)
]]
---@type fun(): hours: hours, minutes: minutes Returns two integers that represent hours and minutes.
function getTime() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetSkyGradient)
]]
---@type fun(topRed?: integer, topGreen?: integer, topBlue?: integer, bottomRed?: integer, bottomGreen?: integer, bottomBlue?: integer): boolean Returns true if sky color was set correctly, false if invalid values were passed.
function setSkyGradient() end

--- Active timer
---@alias getTimerDetails_default fun(theTimer: timer): timeLeft: integer, leftToExecute: integer, timeInterval: integer
--- Inactive timer
---@alias getTimerDetails_inActive fun(seconds: integer, theTimer: timer): timeLeft: false, leftToExecute: nil, timeInterval: nil
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetTimerDetails)
]]
---@type getTimerDetails_default | getTimerDetails_inActive Returns a table with the time left, left to execute, and the time interval.
function getTimerDetails() end

--- Default
---@alias getRealTime_default fun(localTime?: boolean): {second: seconds, minute: minutes, hour: hours, monthday: monthdays, month: months, year: integer, weekday: weekdays, yearday: integer, isdst: integer, timestamp: integer }
--- When provided with seconds
---@alias getRealTime_seconds fun(seconds: integer, localTime?: boolean): {second: seconds, minute: minutes, hour: hours, monthday: monthdays, month: months, year: integer, weekday: weekdays, yearday: integer, isdst: integer, timestamp: integer } | false
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetRealTime)
]]
---@type getRealTime_default | getRealTime_seconds Returns a table of substrings with different time format or false if the seconds argument is out of range.
function getRealTime() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetTickCount)
]]
---@type fun(): integer Returns an integer containing the number of milliseconds since the system the server is running on started.
function getTickCount() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetTrafficLightState)
* `auto`: Sets the traffic lights default behavior (switches the colors automatically).
* `disabled`: Turns traffic lights off.
]]
---@alias setTrafficLightState_state fun(state: trafficLightStateId | "auto" | "disabled"): boolean
---@alias setTrafficLightState_color fun(colorNS : "green" | "yellow" | "red", colorEW : "green" | "yellow" | "red"): boolean
---@type setTrafficLightState_state | setTrafficLightState_color Returns true if the state was successfully set
function setTrafficLightState() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetMarkerIcon)
]]
---@type fun(theMarker: marker): markerIcon
function getMarkerIcon() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetGravity)
]]
---@type fun(): gravityLevel: number Returns a float with the current server or client (depending on where you call the function) gravity level.
function getGravity() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetInteriorSoundsEnabled)
]]
---@type fun(enabled: boolean): boolean If a boolean was passed to the function
function setInteriorSoundsEnabled() end

--- `citiesonly` = false
---@alias getZoneName_default fun(x: number, y: number, z: number, citiesonly?: false): zoneAndSomeCityName
--- `citiesonly` = true
---@alias getZoneName_cityOnly fun(x: number, y: number, z: number, citiesonly: true): cityName
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetZoneName)
]]
---@type getZoneName_default | getZoneName_cityOnly Returns the string of the zone/city name.
function getZoneName() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/ResetRainLevel)
]]
---@type fun(): boolean Returns true if the rain level was reset.
function resetRainLevel() end

--- If default
---@alias getSunSize_default fun(): false
--- If set
---@alias getSunSize_isSet fun(): number
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetSunSize)
]]
---@type getSunSize_default | getSunSize_isSet Returns the size of the sun as a number, false if the size of the sun is at its default.
function getSunSize() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/Base64Encode)
]]
---@type fun(data: string): string eturns the base64 representation of the encoded data if the encoding process was successfully completed
function base64Encode() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetResourceRootElement)
	`theResource`: the resource whose root element we are getting. If not specified, assumes the current resource. (the resource returned from getThisResource)
]]
---@type fun(theResource?: resource): element Returns an element representing the resource's root
function getResourceRootElement() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/ResetSunSize)
]]
---@type fun(): boolean Returns true if the size of the sun was reset
function resetSunSize() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetRadarAreaColor)
]]
---@type fun(theRadarArea: radararea, r: integer, g: integer, b: integer, a: integer): boolean Returns true if the color was set successfully
function setRadarAreaColor() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetRadarAreaFlashing)
]]
---@type fun(theRadarArea: radararea, flash: boolean): boolean Returns true if the new flash state was successfully set
function setRadarAreaFlashing() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetRadarAreaSize)
]]
---@type fun(theRadararea: radararea): x: number, y: number Returns two floats indicating the X and Y length of the radar area respectively
function getRadarAreaSize() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetVersion)
]]
---@type fun(): {number: integer, mta: string, name: "MTA:SA Server" | "MTA:SA Client", netcode: integer, os: "Windows"|string, type: "Custom" | "Release" | string, tag: string, sortable: string } Returns a table with version information.
function getVersion() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetFPSLimit)
]]
---@type fun(): integer Returns an integer
function getFPSLimit() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/FromJSON)
]]
---@type fun(json: string): ...:unknownFromJSON Returns variables read from the JSON string.
function fromJSON() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/IsRadarAreaFlashing)
]]
---@type fun(theRadararea: radararea): boolean Returns true if the radar area is flashing
function isRadarAreaFlashing() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetRadarAreaSize)
]]
---@type fun(theRadararea: radararea, x: number, y: number): boolean Returns true if the size was set successfully
function setRadarAreaSize() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetTimers)
	`theTime`: The maximum time left (in milliseconds) on the timers you wish to retrieve.
]]
---@type fun(theTime?: integer): timer[] Returns a table of all the active timers.
function getTimers() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetOcclusionsEnabled)
]]
---@type fun(): boolean Returns true if occlusions are enabled
function getOcclusionsEnabled() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetResourceName)
]]
---@type fun(res?: resource): string Returns a string with the resource name in it
function getResourceName() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetRadarAreaColor)
]]
---@type fun(theRadararea: radararea): red: integer, green: integer, blue: integer, alpha: integer Returns four integers in RGBA format (red, green, blue, alpha), with a maximum value of 255 for each. Alpha decides transparency where 255 is opaque and 0 is transparent.
function getRadarAreaColor() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/Gettok)
]]
---@type fun(text: string, tokenNumber: integer, separatingCharacter: string | ASCII): string | false Returns a string containing the token if it exists, false otherwise.
function gettok() end

--- If default
---@alias getWindVelocity_default fun(): false
--- If set
---@alias getWindVelocity_isSet fun(): x: integer, y: integer, z: integer
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetWindVelocity)
]]
---@type getWindVelocity_default | getWindVelocity_isSet
function getWindVelocity() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/IsInsideRadarArea)
]]
---@type fun(theArea: radararea, posX: number, posY: number): boolean Returns true if the position is inside the radar area
function isInsideRadarArea() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetResourceState)
]]
---@type fun(theResource: resource): resourceState If successful returns a string with the resource state in it
function getResourceState() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/RestoreAllWorldModels)
]]
---@type fun(): boolean Returns true if the world objects were restored
function restoreAllWorldModels() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetThisResource)
]]
---@type fun(): resource Returns the resource in which the current script is.
function getThisResource() end

--- Serverside
---@alias addCommandHandler_server (fun(commandName: string, handlerFunction: fun(playerSource: player, commandName: string, ... ), restricted?: boolean, caseSensitive?: boolean): boolean)
--- Clientside
---@alias addCommandHandler_client (fun(commandName: string, handlerFunction:  fun(commandName: string, ... ), caseSensitive?: boolean): boolean)
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/AddCommandHandler)
]]
---@type addCommandHandler_server | addCommandHandler_client Returns true if the command handler was added successfully, false otherwise.
function addCommandHandler() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetResourceConfig)
]]
---@type fun(filePath: string): xmlnode | false Returns the root node of the specified configuration file. If the file is corrupted, not defined in the meta file or doesn't exist, returns false.
function getResourceConfig() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetOcclusionsEnabled)
]]
---@type fun(enabled: boolean): boolean Returns true if the setting was set correctly
function setOcclusionsEnabled() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetAircraftMaxVelocity)
	`velocity`: The max velocity, can be 0 or any positive value. Default is 1.5.
]]
---@type fun(velocity: number): boolean Returns true if the max velocity was set correctly
function setAircraftMaxVelocity() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetGravity)
	`level`: The level of gravity (default is 0.008).
]]
---@type fun(level: number): boolean Returns true if gravity was changed
function setGravity() end

---@alias fetchRemoteOptions { queueName?: string, connectionAttempts?: integer, connectTimeout?: integer, postData?: string, postIsBinary?: boolean, method?: "GET" | "POST", headers?: {[string]: any}, maxRedirects?: integer, username?: string, password?: string, formFields?: {[string]: any}}
--- Without options
---@alias fetchRemote_syntaxWithoutOptions fun(URL: string, callbackFunction: function, callbackArguments?: table): request | false
--- With options
---@alias fetchRemote_syntaxWithOptions fun(URL: string, options: fetchRemoteOptions, callbackFunction: function, callbackArguments?: table): request | false
--[[
	Using version syntax from  1.5.4-9.11342 + 1.5.4-9.11413. Because the other variant has too many sub-variations
]]
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/FetchRemote)
	Returns a request value
]]
---@type fetchRemote_syntaxWithoutOptions | fetchRemote_syntaxWithOptions
function fetchRemote() end

--- Serverside
---@alias executeCommandHandler_server fun(commandName: string, thePlayer: player, ...: string): boolean
--- Clientside
---@alias executeCommandHandler_client fun(commandName: string, ...: string): boolean
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/ExecuteCommandHandler)
]]
---@type executeCommandHandler_server | executeCommandHandler_client Returns true if the command handler was called successfully
function executeCommandHandler() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/ResetMoonSize)
]]
---@type fun(): boolean Returns true if the size of the moon was reset
function resetMoonSize() end

--- Serverside
---@alias setWeaponAmmo_server fun(thePlayer: player, weapon: weaponId, totalAmmo: integer, ammoInClip?: integer): boolean
--- Clientside
---@alias setWeaponAmmo_client fun(weapon: weapon, ammo: integer): boolean
---@see weaponId
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetWeaponAmmo)
]]
---@type setWeaponAmmo_server | setWeaponAmmo_client Returns true on success
function setWeaponAmmo() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetResourceDynamicElementRoot)
]]
---@type fun(theResource: resource): element | false Returns an element of the resource's dynamic element root if the resource specified was valid and active (currently running), false otherwise.
function getResourceDynamicElementRoot() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/ResetHeatHaze)
]]
---@type fun(): boolean Returns true if the heat haze was reset correctly
function resetHeatHaze() end

---@see trafficLightStateId
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetTrafficLightState)
]]
---@type fun(): trafficLightStateId Returns the current state of the traffic lights.
function getTrafficLightState() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/ResetSkyGradient)
]]
---@type fun(): boolean Returns true if sky color was reset correctly
function resetSkyGradient() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetCloudsEnabled)
]]
---@type fun(enabled: boolean): boolean Returns true if the cloud state was changed succesfully
function setCloudsEnabled() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetSkyGradient)
]]
---@type fun(): r1: integer, g1: integer, b1: integer, r2: integer, g2: integer, b2: integer Returns 6 ints, of which the first 3 represent the sky's "top" color, (in RGB) and the last 3 represent the bottom colors.
function getSkyGradient() end

--- Serverside
---@alias setWeaponProperty_server_syntax_1 fun(weaponNameOrWeaponID: weaponPropertyWeaponName | weaponId, weaponSkill: weaponSkill, property: weaponProperty, theValue: integer | number): boolean
--- Serverside toggle flags
---@alias setWeaponProperty_server_syntax_2 fun(weaponNameOrWeaponID: weaponPropertyWeaponName | weaponId, weaponSkill: weaponSkill, property: weaponPropertyFlags, theValue: boolean): boolean
--- Clientside
---@alias setWeaponProperty_client fun(weapon: weapon, property: weaponProperty_client_syntax_1, theValue: number) | fun(weapon: weapon, property: weaponProperty_client_syntax_2, theValue: Vector3)
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetWeaponProperty)
	Returns true if the property was set.
]]
---@see weaponId
---@type setWeaponProperty_server_syntax_1 | setWeaponProperty_server_syntax_2 | setWeaponProperty_client
function setWeaponProperty() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetAircraftMaxHeight)
]]
---@type fun(height: number): boolean Returns true if successful
function setAircraftMaxHeight() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetJetpackMaxHeight)
]]
---@type fun(height: number): boolean Returns true if successful
function setJetpackMaxHeight() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetBlipVisibleDistance)
]]
---@type fun(theBlip: blip): number Returns one float with the blips visible distance
function getBlipVisibleDistance() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetBlipVisibleDistance)
]]
---@type fun(theBlip: blip, theDistance: number): boolean Returns true if successful
function setBlipVisibleDistance() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/CreateColPolygon)
]]
---@type fun(fX: number, fY: number, fX1: number, fY1: number, fX2: number, fY2: number, fX3: number, fY3: number, ...: number): colshape Returns a colshape element if successful
function createColPolygon() end

---@alias latentEventStatus { tickStart: number, tickEnd: number, totalSize: number, percentComplete: number}
--- Serverside
---@alias getLatentEventStatus_server (fun(handle: integer): latentEventStatus)
--- Clientside
---@alias getLatentEventStatus_client (fun(thePlayer: player, handle: integer): latentEventStatus)
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetLatentEventStatus)
]]
---@type getLatentEventStatus_server | getLatentEventStatus_client Returns a table with the following info or false if invalid arguments were passed
function getLatentEventStatus() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/FileGetPos)
]]
---@type fun(theFile: file): integer Returns the file position if successful
function fileGetPos() end

--- Serverside
---@alias getKeyBoundToFunction_server (fun(thePlayer: player, theFunction: function): string | false)
--- Clientside
---@alias getKeyBoundToFunction_client (fun(theFunction: function): string | false)
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetKeyBoundToFunction)
]]
---@type getKeyBoundToFunction_server | getKeyBoundToFunction_client Returns a string of the first key the function was bound to.
function getKeyBoundToFunction() end

--- Serverside
---@alias clearChatBox_server (fun(clearFor?: player | root): boolean)
--- Clientside
---@alias clearChatBox_client (fun(): boolean)
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/ClearChatBox)
]]
---@type clearChatBox_server | clearChatBox_client Returns true if the player's chat was cleared successfully, false otherwise.
function clearChatBox() end

--- Serverside
---@alias outputChatBox_server (fun(text: string | number, visibleTo?: player | root | player[] | team, r?: integer, g?: integer, b?: integer, colorCoded?: boolean) : boolean)
--- Clientside
---@alias outputChatBox_client (fun(text: string | number, r?: integer, g?: integer, b?: integer, colorCoded?: boolean) : boolean)
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/OutputChatBox)
]]
---@type outputChatBox_server | outputChatBox_client Returns true if the message was displayed successfully.
function outputChatBox() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/Call)
]]
---@type fun(theResource: resource, theFunction: string, ... ): ... Returns anything that the designated function has returned, if the function has no return, nil is returned. If the function does not exist, is not exported, or the call was not successful it will return false.
function call() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/RemoveCommandHandler)
]]
---@type fun(commandName: string, handler?: function): boolean Returns true if the command handler was removed successfully, false if the command doesn't exist.
function removeCommandHandler() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetFPSLimit)
]]
---@type fun(fpsLimit: integer): boolean Returns true if successful, or false if it was not possible to set the limit or an invalid value was passed.
function setFPSLimit() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/ToJSON)
]]
---@type fun(value: any, compact?: boolean, prettyType?: jsonPrettyType): string Returns a JSON formatted string.
function toJSON() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetEasingValue)
]]
---@type fun(fProgress: number, strEasingType: strEasingType, fEasingPeriod?: number, fEasingAmplitude?: number, fEasingOvershoot?: number): number
function getEasingValue() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/Hash)
]]
---@type fun(algorithm: "md5" | "sha1" | "sha224" | "sha256" | "sha384" | "sha512" | "hmac" |, dataToHash: string, options?: table): string Returns the hash of the data, false if an invalid argument was used.
function hash() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/KillTimer)
]]
---@type fun(theTimer: timer): boolean Returns true if the timer was successfully killed, false if no such timer existed.
function killTimer() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/ResetTimer)
]]
---@type fun(theTimer: timer): boolean Returns true if the timer was successfully reset
function resetTimer() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/Split)
* `timeInterval`: The number of milliseconds that should elapse before the function is called. The minimum is 0 ms; 1000 milliseconds = 1 second)
* `timesToExecute`: The number of times you want the timer to execute, or 0 for infinite repetitions.
]]
---@type fun(theFunction: function, timeInterval: integer, timesToExecute: integer, ...: any ): timer Returns a timer pointer if the timer was set successfully
function setTimer(theFunction, timeInterval, timesToExecute, ...) end

---@type fun(stringToSplit: string, separatingChar: string | integer): string[] Returns a table of substrings split from the original string if successful
function split() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/IsTimer)
]]
---@type fun(theTimer: any): boolean Returns true if the passed value is a timer
function isTimer() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/Md5)
]]
---@type fun(str: string): string Returns the MD5 hash of the input string if successful
function md5() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/Sha256)
]]
---@type fun(str: string): string Returns the sha256 hash of the input string if successful
function sha256() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/TeaEncode)
]]
---@type fun(text: string, key: string): string Returns the base64 representation of the encrypted string if the encryption process was successfully completed
function teaEncode() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/TeaDecode)
]]
---@type fun(data: string, key: string): string Returns string containing the decrypted data if the decryption process was successfully completed
function teaDecode() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/UtfChar)
]]
---@type fun(characterCode: integer): string Returns a string if the function was successful
function utfChar() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/UtfCode)
]]
---@type fun(theString: string): integer Returns an integer if the function was successful
function utfCode() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/UtfLen)
]]
---@type fun(theString: string): integer Returns an integer if the function was successful
function utfLen() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/UtfSeek)
]]
---@type fun(theString: string, position: integer): integer | false Returns an integer if the function was successful, false otherwise.
function utfSeek() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/UtfSub)
]]
---@type fun(theString: string, start: integer, end: integer): string Returns a string if the function was successful. Returns an empty string if out of bounds.
function utfSub() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/PregFind)
]]
---@type fun(subject: string, pattern: string, flags?: integer | string): boolean Returns true if the pattern was found in the input string, false otherwise.
function pregFind() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/PregReplace)
]]
---@type fun(subject: string, pattern: string, replacement: string, flags?: integer | string): string Returns the replaced string
function pregReplace() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/PregMatch)
]]
---@type fun(base: string, pattern: string, flags?: integer | string, maxResults?: integer): string[] Returns a table if one or more match is found
function pregMatch() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/BitAnd)
]]
---@type fun(var1: uint, var2: uint, ...: uint): uint Returns the conjuncted value.
function bitAnd() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/BitNot)
]]
---@type fun(var: uint): uint Returns the value on which the operation has been performed.
function bitNot() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/BitOr)
]]
---@type fun(var1: uint, var2: uint, ...: uint): uint Returns the conjuncted value.
function bitOr() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/BitXor)
]]
---@type fun(var1: uint, var2: uint, ...: uint): uint Returns the conjuncted value.
function bitXor() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/BitTest)
]]
---@type fun(var1: uint, var2: uint, ...: uint): boolean Returns true if the conjuncted value is not zero, false otherwise.
function bitTest() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/BitLRotate)
]]
---@type fun(value: integer, n: integer): integer Returns the circular left-rotated value as integer.
function bitLRotate() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/BitRRotate)
]]
---@type fun(value: integer, n: integer): integer Returns the circular right-rotated value as integer.
function bitRRotate() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/BitLShift)
]]
---@type fun(value: integer, n: integer): integer Returns the logical left shifted value as integer.
function bitLShift() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/BitRShift)
]]
---@type fun(value: integer, n: integer): integer Returns the logical right shifted value as integer.
function bitRShift() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/BitArShift)
]]
---@type fun(value: integer, n: integer): integer Returns the arithmetic shifted value as integer.
function bitArShift() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/BitExtract)
]]
---@type fun(var: uint, field: integer, width?: integer): uint Returns the extracted value/bit sequence.
function bitExtract() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/BitReplace)
]]
---@type fun(var: uint, replaceValue: uint, field: integer, width?: integer): uint Returns the replaced value/bit sequence.
function bitReplace() end

--- hookType: "preFunction" or "postFunction"
---@alias debugHookCallback_func fun( sourceResource: resource, functionName: string, isAllowedByACL: boolean, luaFilename: string, luaLineNumber: integer, ...): nil
--- hookType: "preEvent" or "postEvent"
---@alias debugHookCallback_event fun( sourceResource: resource, eventName: string, eventSource: element, eventClient: player, luaFilename: string, luaLineNumber: integer, ...): nil
--- hookType: "preEventFunction" or "postEventFunction"
---@alias debugHookCallback_eventFunc fun( sourceResource: resource, eventName: string, eventSource: element, eventClient: player, eventFilename: string, eventLineNumber: integer, functionResource: resource, functionFilename: string, functionLineNumber: integer, ...): nil

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/AddDebugHook)
	Returns true if the hook was successfully added
]]
---@type (fun(hookType: "preFunction" | "postFunction", callbackFunction: debugHookCallback_func, nameList?: string[]): boolean) | (fun(hookType: "preEvent" | "postEvent", callbackFunction: debugHookCallback_event, nameList?: string[]): boolean) | (fun(hookType: "preEventFunction" | "postEventFunction", callbackFunction: debugHookCallback_eventFunc, nameList?: string[]): boolean)
function addDebugHook() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/RemoveDebugHook)
	Returns true if the hook was successfully removed
]]
---@type (fun(hookType: "preFunction" | "postFunction", callbackFunction: debugHookCallback_func): boolean) | (fun(hookType: "preEvent" | "postEvent", callbackFunction:  debugHookCallback_event): boolean) | (fun(hookType: "preEventFunction" | "postEventFunction", callbackFunction: debugHookCallback_eventFunc): boolean)
function removeDebugHook() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/IsTrainDerailable)
]]
---@type fun(vehicleToCheck: vehicle): boolean Returns true if the train is derailable
function isTrainDerailable() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/IsTrainDerailed)
]]
---@type fun(vehicleToCheck: vehicle): boolean Returns true if the train is derailed
function isTrainDerailed() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/IsVehicleBlown)
]]
---@type fun(theVehicle: vehicle): boolean Returns true if the vehicle specified has blown up
function isVehicleBlown() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/IsVehicleTaxiLightOn)
	vehicle ID's are: 420, 438
]]
---@type fun(taxi: vehicle): boolean Returns true if the light is on
function isVehicleTaxiLightOn() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/IsVehicleDamageProof)
]]
---@type fun(theVehicle: vehicle): boolean Returns true if the vehicle is damage proof
function isVehicleDamageProof() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/IsVehicleFuelTankExplodable)
]]
---@type fun(theVehicle: vehicle): boolean Returns true if the specified vehicle is valid and its fuel tank is explodable
function isVehicleFuelTankExplodable() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/IsVehicleLocked)
]]
---@type fun(theVehicle: vehicle): boolean Returns true if the vehicle specified is locked
function isVehicleLocked() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/IsVehicleOnGround)
]]
---@type fun(theVehicle: vehicle): boolean Returns true if vehicle is on the ground
function isVehicleOnGround() end

---@deprecated Function has been disabled.
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetTrainTrack)
]]
---@type fun(train: vehicle): integer
function getTrainTrack() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetTrainPosition)
]]
---@type fun(train: vehicle): number | false Returns a float that represents how along the track it is, false if there is problem with train element.
function getTrainPosition() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetTrainDerailable)
]]
---@type fun(derailableVehicle: vehicle, derailable: boolean): boolean Returns true if the state was successfully set
function setTrainDerailable() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetTrainDerailed)
]]
---@type fun(vehicleToDerail: vehicle, derailed: boolean): boolean Returns true if the state was successfully set
function setTrainDerailed() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetTrainDirection)
]]
---@type fun(train: vehicle, clockwise: boolean): boolean Returns true if successful
function setTrainDirection() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetTrainSpeed)
	`speed`: the new on-track speed of the train. A positive value will make it go clockwise, a negative value counter clockwise.
]]
---@type fun(train: vehicle, speed: number): boolean Returns true if successful
function setTrainSpeed() end

---@deprecated Function has been disabled according to wiki
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetTrainTrack)
]]
---@type fun(train: vehicle, track: 0 | 1 | 2 | 3): boolean Returns true if the track was set to the train
function setTrainTrack() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetTrainPosition)
	`position`: the position along the track (0 - 18107 a complete way round)
]]
---@type fun(train: vehicle, position: number): boolean Returns true if the train position was set
function setTrainPosition() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetWaterColor)
]]
---@type fun(): r: integer, g: integer, b: integer, a: integer Returns 4 ints, indicating the color of the water. (RGBA)
function getWaterColor() end

-- vertexIndex when there are 4 points
---@alias getWaterVertexPosition_quad fun(theWater: water, vertexIndex: 1 | 2 | 3 | 4): x: integer, y: integer, z: number
-- vertexIndex when there are 3 points
---@alias getWaterVertexPosition_triangle fun(theWater: water, vertexIndex: 1 | 2 | 3): x: integer, y: integer, z: number
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetWaterVertexPosition)
]]
---@type getWaterVertexPosition_quad | getWaterVertexPosition_triangle Returns the x, y and z coordinates of the specified vertex if successful
function getWaterVertexPosition() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetWaveHeight)
]]
---@type fun(): number Returns the height as a float
function getWaveHeight() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/ResetWaterColor)
]]
---@type fun(): boolean Returns true if water color was reset correctly
function resetWaterColor() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetWaterColor)
* `red`: The red value of the water, from 0 to 255.
* `green`: The green value of the water, from 0 to 255.
* `blue`: The blue value of the water, from 0 to 255.
* `alpha`: The alpha (visibility) value of the water, from 0 to 255. Defaults to 200 if not declared.
]]
---@type fun(red: integer, green: integer, blue: integer, alpha?: integer): boolean Returns true if water color was set correctly
function setWaterColor() end

--- Default
---@alias setWaterLevel_default (fun(level: number, includeWaterFeatures?: boolean, includeWaterElements?: boolean, includeWorldSea?: boolean, includeOutsideWorld?: boolean): boolean)
--- Water element
---@alias setWaterLevel_element (fun(theWater: water, level: number): boolean)
--- Alternative clientside only syntax
---@alias setWaterLevel_alternativeClientSide (fun(x: number, y: number, z: number, level: number): boolean)
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetWaterLevel)
]]
---@type setWaterLevel_default | setWaterLevel_element | setWaterLevel_alternativeClientSide Returns true if successful
function setWaterLevel() end

-- vertexIndex when there are 4 points
---@alias setWaterVertexPosition_quad fun(theWater: water, vertexIndex: 1 | 2 | 3 | 4, x: integer, y: integer, z: number): boolean Returns true if successful
-- vertexIndex when there are 3 points
---@alias setWaterVertexPosition_triangle fun(theWater: water, vertexIndex: 1 | 2 | 3, x: integer, y: integer, z: number): boolean Returns true if successful
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetWaterVertexPosition)
	Note: X and Y positions will be changed to an even integer
]]
---@type setWaterVertexPosition_quad | setWaterVertexPosition_triangle Returns true if successful
function setWaterVertexPosition() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetWaveHeight)
`height`: A float between 0 and 100.
]]
---@type fun(height: number): boolean Returns a boolean value true or false that tells you if it was successful or not.
function setWaveHeight() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/ResetWaterLevel)
]]
---@type fun(): boolean Returns true if water level was reset correctly
function resetWaterLevel() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/XmlCreateChild)
]]
---@type fun(parentNode: xmlnode, tagName: string): xmlnode Returns the created xmlnode if successful
function xmlCreateChild() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/XmlFindChild)
* `tagName`: This is the name of the child node you wish to find (case-sensitive).
* `index`: This is the 0-based index of the node you wish to find. For example, to find the 5th subnode with a particular name, you would use 4 as the index value. To find the first occurence, use 0.
]]
---@type fun(parent: xmlnode, tagName: string, index: integer): xmlnode | false Returns an xmlnode if the node was found, false otherwise.
function xmlFindChild() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/XmlNodeGetAttributes)
]]
---@type fun(node: xmlnode): {[string]: string|number} If successful, returns a table with as keys the names of the attributes and as values the corresponding attribute values. If the node has no attributes, returns an empty table. In case of failure, returns false.
function xmlNodeGetAttributes() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/XmlNodeGetChildren)
	If index isn't specified, returns a table containing all child nodes. If index is specified, returns the corresponding child node if it exists. If no nodes are found, it returns an empty table. Returns false in case of failure.
]]
---@type (fun(parent: xmlnode, index: integer): xmlnode | false) | (fun(parent: xmlnode): xmlnode[])
function xmlNodeGetChildren() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/XmlNodeGetName)
]]
---@type fun(node: xmlnode): string Returns the tag name of the node if successful
function xmlNodeGetName() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/XmlNodeGetParent)
]]
---@type fun(node: xmlnode): xmlnode | false Returns the parent node of the specified node if successful. Returns false if the specified node is the root node
function xmlNodeGetParent() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/XmlNodeSetName)
]]
---@type fun(node: xmlnode, name: string): boolean Returns true if successful
function xmlNodeSetName() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/IsPedWearingJetpack)
]]
---@type fun(thePed: ped): boolean Returns true if the ped is carrying a jetpack
function isPedWearingJetpack() end

-- Without callback
---@alias encodeString_default fun(algorithm:  "rsa" | "tea" | "aes128" | string, input: string, options: table): string
-- With callback
---@alias encodeString_callback fun(algorithm: "rsa" | "tea" | "aes128" | string, input: string, options: table, callback: fun(result: string)): true
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/EncodeString)
]]
---@type encodeString_default | encodeString_callback
function encodeString() end

-- Without callback
---@alias decodeString_default fun(algorithm: "rsa" | "tea" | "aes128" | string, input: string, options: table): string
-- With callback
---@alias decodeString_callback fun(algorithm: "rsa" | "tea" | "aes128" | string, input: string, options: table, callback: fun(result: string)): true
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/DecodeString)
]]
---@type decodeString_default | decodeString_callback
function decodeString() end

---@see colShapeTypeId.
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetColShapeType)
]]
---@type fun(shape: colshape): colShapeTypeId Returns an integer of the type of the colshape.
function getColShapeType() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetElementAngularVelocity)
]]
---@type fun(theElement: element): rx: number, ry: number, rz: number Returns three floats describing the x, y and z rotation
function getElementAngularVelocity() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetElementAngularVelocity)
]]
---@type fun(theElement: element, rx: number, ry: number, rz: number): boolean Returns true if it was succesful
function setElementAngularVelocity() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetElementsWithinRange)
]]
---@type fun(x: number, y: number, z: number, range: number, elemType?: string, interior?: integer, dimension?: integer): element[] Returns a table containing all the elements of the specified type within range. Returns an empty table if there are no elements within range.
function getElementsWithinRange() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/IsInsideColShape)
]]
---@type fun(theShape: colshape, posX: number, posY: number, posZ: number): boolean Returns true if the position is inside the colshape
function isInsideColShape() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/AddColPolygonPoint)
]]
---@type fun(shape: colshape, fX: number, fY: number, index?: integer): boolean Returns true if the polygon was changed
function addColPolygonPoint() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetColShapeRadius)
]]
---@type fun(shape: colshape): radius: number Returns a float containing the radius of the colshape
function getColShapeRadius() end

-- Cuboid
---@alias getColShapeSize_cuboid fun(shape: colshape): width: number, depth: number, height: number
-- Rectangle
---@alias getColShapeSize_rectangle fun(shape: colshape): width: number, height: number
-- Tube
---@alias getColShapeSize_tube fun(shape: colshape): height: number
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetColShapeSize)
]]
---@type getColShapeSize_cuboid | getColShapeSize_rectangle | getColShapeSize_tube
function getColShapeSize() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetColShapeRadius)
]]
---@type fun(shape: colshape, radius: number): boolean Returns true if the radius was changed
function setColShapeRadius() end

-- Cuboid
---@alias setColShapeSize_cuboid fun(shape: colshape, width: number, depth: number, height: number): boolean
-- Rectangle
---@alias setColShapeSize_rectangle fun(shape: colshape, width: number, height: number): boolean
-- Tube
---@alias setColShapeSize_tube fun(shape: colshape, height: number): boolean
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetColShapeSize)
]]
---@type setColShapeSize_cuboid | setColShapeSize_rectangle | setColShapeSize_tube Returns true if the size was changed
function setColShapeSize() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/HasElementData)
]]
---@type fun(theElement: element, key: string, inherit?: boolean): boolean This function returns true if the element contains element data for key, or false if the element doesn't exist or there is no data associated with the key.
function hasElementData() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetCommandHandlers)
]]
---@type (fun(): {[1]: string, [2]: resource}[]) | (fun(theResource: resource): string[] ) Returns a table containing all the commands of the given resource or a table with subtables containing the command and theResource pointer.
function getCommandHandlers() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/UsePickup)
]]
---@type fun(thePickup: pickup, thePlayer: player): boolean
function usePickup() end

--- Serverside
---@alias setPlayerHudComponentVisible_server fun(thePlayer: player, component: hudComponent | "all", show: boolean): boolean
--- Clientside
---@alias setPlayerHudComponentVisible_client fun(component: hudComponent | "all", show: boolean): boolean
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetPlayerHudComponentVisible)
]]
---@type setPlayerHudComponentVisible_server | setPlayerHudComponentVisible_client Returns true if the component was shown or hidden succesfully
function setPlayerHudComponentVisible() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetRemoteRequests)
]]
---@type fun(theResource?: resource): request[] Returns a table with all requests
function getRemoteRequests() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetRemoteRequestInfo)
]]
---@type fun(theRequest: request, postDataLength?: integer, includeHeaders?: boolean): {bytesReceived: number, bytesTotal: number, currentAttempt: integer, type: "fetch" | "call", url: string, resource: resource, queue: string, method: "GET" | "POST", connectionAttempts: integer, connectionTimeout: integer, postData: string, headers: string} | false Returns a table when valid, false otherwise
function getRemoteRequestInfo() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/AbortRemoteRequest)
]]
---@type fun(theRequest: request): boolean Returns true on success, false when invalid request was provided
function abortRemoteRequest() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/Deref)
]]
---@type fun(reference: integer): any Returns mixed if the reference were valid. Returns false if the reference were invalid.
function deref() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/IsOOPEnabled)
]]
---@type fun(): boolean Returns true or false if OOP is enabled or not.
function isOOPEnabled() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/Ref)
]]
---@type fun(objectToReference: any): integer Returns an int if the reference were successfully created.
function ref() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/Tocolor)
]]
---@type fun(red: integer, green: integer, blue: integer, alpha?: integer): color Returns a single value representing the color.
function tocolor() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/XmlLoadString)
]]
---@type fun(xmlString: string): xmlnode | false Returns the root xmlnode object of an xml string if successful, or false otherwise (invalid XML string).
function xmlLoadString() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetElementMatrix)
]]
---@type fun(theElement: element, theMatrix: matrixAsTable): boolean Returns true if the matrix was set succesfully
function setElementMatrix() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetColPolygonPoints)
]]
---@type fun(shape: colshape): {[1]: number, [2]: number}[] Returns a table of coordinates, each coordinate being a table containing the x and y position of a bound point
function getColPolygonPoints() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetColPolygonPointPosition)
]]
---@type fun(shape: colshape, index: integer): x: number, y: number Returns two floats, x and y, indicating the position of the point.
function getColPolygonPointPosition() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/RemoveColPolygonPoint)
]]
---@type fun(shape: colshape, index: integer): boolean Returns true if the polygon was changed
function removeColPolygonPoint() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetColPolygonPointPosition)
]]
---@type fun(shape: colshape, index: integer, fX: number, fY: number): boolean Returns true if the polygon was changed
function setColPolygonPointPosition() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/IsTransferBoxVisible)
Returns
* On server this returns a boolean, whether the transfer box should be visible during downloads or not.
* On client this returns a boolean, whether the transfer box should be visible or not at the time of invocation.
]]
---@type fun(): boolean
function isTransferBoxVisible() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetTransferBoxVisible)
]]
---@type fun(visible: boolean): boolean Returns true if the visibility was set successfully
function setTransferBoxVisible() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetColPolygonHeight)
]]
---@type fun(shape: colshape, floor: number, ceil: number): boolean Returns true if the polygon was changed
function setColPolygonHeight() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetColPolygonHeight)
]]
---@type fun(shape: colshape): floor: number, ceil: number Returns two floats, indicating the floor and ceiling of the colshape height
function getColPolygonHeight() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetAllElementData)
]]
---@type fun(theElement: element): { [string]: unknownSyncAble } If successful, returns a table with as keys the names of the element data and as values the corresponding element data values.
function getAllElementData() end

--- Serverside
---@alias getPlayerBlurLevel_server (fun(): integer)
--- Clientside
---@alias getPlayerBlurLevel_client (fun(thePlayer: player): integer)
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetPlayerBlurLevel)
]]
---@type getPlayerBlurLevel_server | getPlayerBlurLevel_client
function getPlayerBlurLevel() end

--- Serverside
---@alias setPlayerBlurLevel_server (fun(thePlayer: player, level: integer): boolean)
--- Clientside
---@alias setPlayerBlurLevel_client (fun(level: integer): boolean)
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetPlayerBlurLevel)
]]
---@type setPlayerBlurLevel_server | setPlayerBlurLevel_client
function setPlayerBlurLevel() end

---@alias utf8_byte (fun(input: string, startPos?: integer, endPos?: integer ): ...: integer|nil)
---@alias utf8_char fun(arg1?: integer, arg2?: integer, arg3?: integer, arg4?: integer, arg5?: integer, arg6?: integer, ...: integer): string
---@alias utf8_charpos (fun(input : string, charpos: integer, offset: integer ): integer | nil, integer | nil) | (fun(input : string, offset?: integer ): integer | nil, integer | nil)
---@alias utf8_escape fun(input: string): string
---@alias utf8_find fun(input: string, pattern: string, startPos?: integer, plain?: boolean): integer | nil, integer | nil
---@alias utf8_fold (fun(input: string): string) | (fun(input: integer): integer)
---@alias utf8_gmatch fun(input: string, pattern: string): function
---@alias utf8_gsub fun(input: string, pattern: string, replace: string | integer | table | function, matchLimit?: integer): string, integer
---@alias utf8_insert (fun(input: string, insertPos: integer, substring: string): string) | (fun(input: string, substring: string): string)
---@alias utf8_len (fun(input: string, i?: integer, j?: integer): integer)
---@alias utf8_lower (fun(input: string): string) | (fun(input: integer): integer)
---@alias utf8_match (fun(input: string, pattern: string, index?: integer): ...: string | nil)
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetPlayerUserName)
| Value | Meaning |
|-------|---------|
| -1    | a < b   |
| 0     | a == b  |
| 1     | a > b   |
]]
---@alias utf8_ncasecmp (fun(a: string, b: string): -1 | 0 | 1)
---@alias utf8_next (fun(input : string, charpos: integer, offset: integer ): integer, integer) | (fun(input : string, offset?: integer ): integer, integer)
---@alias utf8_remove fun(input : string, start: integer, stop?: integer): string
---@alias utf8_reverse fun(input : string): string
---@alias utf8_sub fun(input: string, i?: integer, j?: integer): string
---@alias utf8_title (fun(input: string): string) | (fun(input: integer): integer)
---@alias utf8_upper (fun(input: string): string) | (fun(input: integer): integer)
---@alias utf8_width fun(input: string, ambiIsDouble?: boolean, defaultWidth?: integer): integer
---@alias utf8_widthindex fun(input: string, location: integer, ambiIsDouble?: boolean, defaultWidth?: integer): integer, integer, integer

---@type { charpos: utf8_charpos, char: utf8_char, byte: utf8_byte, escape: utf8_escape, find: utf8_find, fold: utf8_fold, gmatch: utf8_gmatch, gsub: utf8_gsub, insert: utf8_insert, len: utf8_len, lower: utf8_lower, match: utf8_match, ncasecmp: utf8_ncasecmp, next: utf8_next, remove: utf8_remove, reverse: utf8_reverse, sub: utf8_sub, title: utf8_title, upper: utf8_upper, width: utf8_width, widthindex: utf8_widthindex }
utf8 = {}

---@deprecated
function getPlayerUserName() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetWorldSpecialPropertyEnabled)
]]
---@type fun(propertyName: worldSpecialProperty, enabled: boolean): boolean Returns true if successful
function setWorldSpecialPropertyEnabled() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/IsWorldSpecialPropertyEnabled)
]]
---@type fun(propname: worldSpecialProperty): boolean Returns true if the property is enabled
function isWorldSpecialPropertyEnabled() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/PathListDir)
]]
---@type fun(path: string): entries: string[]|nil Returns entries in a specified directory. (Files and directories) If path is not found, it returns nil.
function pathListDir() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/PathIsFile)
]]
---@type fun(path: string): boolean Returns true if a specified path points to a file.
function pathIsFile() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/PathIsDirectory)
]]
---@type fun(path: string): boolean Returns true if a specified path points to a directory.
function pathIsDirectory() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetMarkerTargetArrowProperties)
]]
---@type fun(theMarker: marker, r?: integer, g?: integer, b?: integer, a?: integer, size?: number )
function setMarkerTargetArrowProperties() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetMarkerTargetArrowProperties)
]]
---@type fun(theMarker: marker): r: integer, g: integer, b: integer, a: integer, size: number
function getMarkerTargetArrowProperties() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/IsTimerPaused)
]]
---@type fun(theTimer: timer): boolean Returns true if the timer is currently paused, false if not or if no such timer existed.
function isTimerPaused() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetTimerPaused)
]]
---@type fun(theTimer: timer, paused: boolean): boolean Returns true if the timer was successfully paused or resumed, false if no such timer existed.
function setTimerPaused() end

--- Serverside
---@alias getPlayerScriptDebugLevel_server fun(thePlayer: player): debugScriptLevel
--- Clientside
---@alias getPlayerScriptDebugLevel_client fun(): debugScriptLevel
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetPlayerScriptDebugLevel)
]]
---@type getPlayerScriptDebugLevel_server | getPlayerScriptDebugLevel_client Returns an int with the player debug script level.
function getPlayerScriptDebugLevel() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/CreateObject)
]]
---@type fun(modelid: integer, x: number, y: number, z: number, rx?: number, ry?: number, rz?: number, isLowLOD?: boolean): objectElement: object Returns the object element if the creation was successful
function createObject() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/RespawnObject)
]]
---@type fun(theObject: object): boolean Returns true if the object was sucessfully respawned.
function respawnObject() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/ToggleObjectRespawn)
]]
---@type fun(theObject: object, respawn: boolean): boolean Returns true when the it was changed successfully.
function toggleObjectRespawn() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/IsObjectRespawnable)
]]
---@type fun(theObject: object): boolean
function isObjectRespawnable() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/IsObjectBreakable)
]]
---@type fun(theObject: object): boolean Returns true if the object is breakable.
function isObjectBreakable() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/BreakObject)
Returns
* true if the object was successfully broken.
* false if the object is not breakable, or a wrong object was given.
]]
---@type fun(theObject: object): boolean
function breakObject() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetObjectBreakable)
]]
---@type fun(theObject: object, breakable: boolean): boolean Returns true if the object is now breakable. false if it can't or if invalid arguments are passed.
function setObjectBreakable() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/IsObjectMoving)
]]
---@type fun(theObject: object): boolean Returns true if the object is moving
function isObjectMoving() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/MoveObject)
]]
---@type fun(theObject: object, time: integer, targetx: number, targety: number, targetz: number, moverx?: number, movery?: number, moverz?: number, strEasingType?: strEasingType, fEasingPeriod?: number, fEasingAmplitude?: number, fEasingOvershoot?: number): boolean Returns true if the function moved the object succesfully.
function moveObject() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetObjectScale)
]]
---@type fun(theObject: object, scale: number, scaleY?: number, scaleZ?: number): boolean Returns true if the scale was set properly.
function setObjectScale() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetObjectScale)
]]
---@type fun(theObject: object): x: number, y: number, z: number Returns three float values indicating the scale of the object on the x, y, and z axis if successful
function getObjectScale() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SpawnVehicleFlyingComponent)
	More info about the arguments can be found on the wiki page.
]]
---@type fun(theVehicle: vehicle, nodeIndex: vehicleFlyingComponentNodeIndex, collisionType?: vehicleFlyingComponentCollisionType, removalTime?: integer): boolean
function spawnVehicleFlyingComponent() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetDynamicPedShadowsEnabled)
]]
---@type fun(enabled: boolean): boolean
function setDynamicPedShadowsEnabled() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/IsDynamicPedShadowsEnabled)
]]
---@type fun(): boolean
function isDynamicPedShadowsEnabled() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/ResetDynamicPedShadows)
]]
---@type fun(): true
function resetDynamicPedShadows() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetElementOnFire)
]]
---@type fun( theElement: element, bool: boolean ): boolean Returns true if successful
function setElementOnFire() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/IsElementOnFire)
]]
---@type fun( theElement: element ): boolean Returns true if the element is on fire
function isElementOnFire() end

---Syntax reference: https://github.com/search?q=repo%3Amultitheftauto/mtasa-blue%20CLuaBuildingDefs%3A%3ACreateBuilding&type=code
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/CreateBuilding)
]]
---@type fun(modelId: integer, x: number, y: number, z: number, rx?: number, ry?: number, rz?: number, interior?: integer): building
function createBuilding() end

---@alias fileGetHash_withoutOptions fun(theFile: file, algorithm: "md5" | "sha1" | "sha224" | "sha256" | "sha384" | "sha512"): string|nil
---@alias fileGetHash_withOptions fun(theFile: file, algorithm: "hmac", options: { algorithm: string, key: string }): string|nil
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/FileGetHash)
]]
---@type fileGetHash_withoutOptions | fileGetHash_withOptions
function fileGetHash() end
