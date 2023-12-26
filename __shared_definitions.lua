---@meta sharedConfigs
---@diagnostic disable: missing-return

--[[
    Credits to the community for all the available syntax and descriptions
]]

---@type fun(value: userdata): string
function getUserdataType () end

---@type fun(password: string, algorithm: string, options: table, callback?: function): string
function passwordHash () end

---@type fun(password: string, hash: string, callback?: function): boolean
function passwordVerify () end

---@type fun(x?:number, y?: number): vector2
function Vector2 () end

---@type fun(x?:number, y?: number, z?: number): vector3
function Vector3 () end

---@type fun(x?:number, y?: number, z?: number, w?: number): vector4
function Vector4 () end

---@type fun(position?: vector3, rotation: vector3): matrix
function Matrix () end

---@type fun(miliseconds: integer): boolean
function debugSleep () end

---@type fun(): boolean
function getDevelopmentMode () end

---@type fun(enable: boolean, enableWeb?: boolean): boolean
function setDevelopmentMode () end

---@type fun(filePath: string, readOnly?: boolean): xmlnode
function xmlLoadFile () end

---@type fun(node: xmlnode, name: string, value: string | number): boolean
function xmlNodeSetAttribute () end

---@type fun(): number
function getAircraftMaxHeight () end

---@type fun(theXMLNode: xmlnode): string
function xmlNodeGetValue () end

---@see vehicleId
---@type fun(model: vehicleId, x: number, y: number, z: number, rx?: number, ry?: number, rz?: number, numberplate?: string, bDirection?: boolean, variant1?: integer, variant2?: integer): vehicle
function createVehicle () end

---@type fun(x: number, y: number, z: number, icon?: integer, size?: integer, r?: integer, g?: integer, b?: integer, a?: integer, ordering?: integer, visibleDistance?: number, visibleTo): blip
function createBlip () end

---@type fun(theElement: element): table
function getAttachedElements () end

---@type fun(thePickup: pickup): integer
function getPickupAmount () end

---@type fun(theBlip: blip): integer, integer, integer, integer
function getBlipColor () end

---@type fun(theBlip: blip, iconSize: integer): boolean
function setBlipSize () end

---@type fun(thePlayer: player, r: integer, g: integer, b: integer): boolean
function setPlayerNametagColor () end

---@type fun(theBlip: blip, red: integer, green: integer, blue: integer, alpha: integer): boolean
function setBlipColor () end

---@type fun(thePickup: pickup): integer
function getPickupWeapon () end

---@type fun(theBlip: blip): integer
function getBlipIcon () end

---@type fun(thePed: ped, clothesTexture: string, clothesModel: string, clothesType: integer): boolean
function addPedClothes () end

---@type fun(theBlip: blip): integer
function getBlipOrdering () end

---@type fun(elementToAttachTo: element, icon?: integer, size?: integer, r?: integer, g?: integer, b?: integer, a?: integer, ordering?: integer, visibleDistance?: number, visibleTo): blip
function createBlipAttachedTo () end

---@type fun(theElement: element, theAttachToElement?: element): boolean
function detachElements () end

---@type fun(theElement: element): integer
function getElementAlpha () end

---@type fun(theElement: element): number, number, number, number, number, number
function getElementAttachedOffsets () end

---@type (fun(fadeIn: boolean, numbertimeToFade, red?: integer, green?: integer, blue?: integer): boolean)|(fun(thePlayer: player, fadeIn: boolean, numbertimeToFade, red?: integer, green?: integer, blue?: integer): boolean)
function fadeCamera () end

---@type fun(thePlayer: player): string
function getPlayerName () end

---@type fun(clothesTexture: string, clothesModel: string): integer, integer
function getTypeIndexFromClothes () end

---@type fun(clothesType: integer, clothesIndex: integer): string, string
function getClothesByTypeIndex () end

---@type fun(theBlip: blip): integer
function getBlipSize () end

---@type fun(bodyPartID: integer): string
function getBodyPartName () end

---@type fun(thePlayer: player, text: string): boolean
function setPlayerNametagText () end

---@type fun(theElement: element, name: string): boolean
function setElementID () end

---@type fun(): boolean
function isVoiceEnabled () end

---@type fun(theBlip: blip, ordering: integer): boolean
function setBlipOrdering () end

---@type fun(thePlayer: player): integer
function getPlayerWantedLevel () end

---@type fun(thePed: ped, clothesType: integer): string, string
function getPedClothes () end

---@type fun(thePlayer: player, sound: integer): boolean
function playSoundFrontEnd () end

---@type fun(clothesType: integer): string
function getClothesTypeName () end

---@type fun(fX: number, fY: number, fZ: number, fRadius: number): colshape
function createColSphere () end

---@type fun(fX: number, fY: number, radius: number): colshape
function createColCircle () end

---@type fun(fX: number, fY: number, fWidth: number, fHeight: number): colshape
function createColRectangle () end

---@type fun(thePlayer: player): boolean
function isCursorShowing () end

---@type fun(thePlayer: player, show: boolean, toggleControls?: boolean): boolean
function showCursor () end

---@type fun(eventName: string, attachedTo: element, functionVar: function): boolean
function removeEventHandler () end

---@type fun(node: xmlnode, name: string): string
function xmlNodeGetAttribute () end

---@type fun(theXMLNode: xmlnode): boolean
function xmlDestroyNode () end

---@type fun(eventName: string, baseElement: element, ...: any): boolean
function triggerEvent () end

---@type fun(theElement: element): integer
function getElementDimension () end

---@type fun(theElement: element, xPosOffset?:number, yPosOffset?: number, zPosOffset?: number, xRotOffset?: number, yRotOffset?: number, zRotOffset?: number): boolean
function setElementAttachedOffsets () end

---@type fun(theElement: element, speedX: number, speedY: number, speedZ: number): boolean
function setElementVelocity () end

---@type fun(eventName: string, attachedTo: element): { [integer]: function }
function getEventHandlers () end

---@type fun(filePath: string): boolean
function fileExists () end

---@type fun(theMarker: marker): number, number, number
function getMarkerTarget () end

--- Serverside
---@alias cancelLatentEvent_server (fun(thePlayer: player, handle: integer):boolean)
--- Clientside
---@alias cancelLatentEvent_client (fun(handle: integer):boolean)
---@type cancelLatentEvent_server | cancelLatentEvent_client
function cancelLatentEvent () end

---@type fun(theMarker: marker, markerType: string): boolean
function setMarkerType () end

---@type fun(fX: number, fY: number, fZ: number, fRadius: number, fHeight: number): colshape
function createColTube () end

---@type fun(theFile: file): boolean
function fileClose () end

---@type fun(filePath: string): boolean
function fileDelete () end

---@type fun(theElement: element): boolean
function isElementAttached () end

---@type fun(thePlayer: player, amount: integer): boolean
function takePlayerMoney () end

---@type fun(modelid: integer, x: number, y: number, z: number, rx?: number, ry?: number, rz?: number, isLowLOD?: boolean): object
function createObject () end

---@type fun(theMarker: marker, x: number, y: number, z: number): boolean
function setMarkerTarget () end

---@type fun(filePath: string, copyToFilePath: string, overwrite?: boolean): boolean
function fileCopy () end

---@type fun(thePlayer: player): table
function getLatentEventHandles () end

---@type fun(cancel?: boolean, reason?: string): boolean
function cancelEvent () end

---@type fun(fX: number, fY: number, fZ: number, fWidth: number, fDepth: number, fHeight: number): colshape
function createColCuboid () end

---@type fun(theElement: element): elementTypeAutoComplete
function getElementType () end

---@type fun(theElement: element, theAttachToElement: element, xPosOffset?:number, yPosOffset?: number, zPosOffset?: number, xRotOffset?: number, yRotOffset?: number, zRotOffset?: number): boolean
function attachElements () end

---@type fun(thePed: ped, clothesType: integer, clothesTexture?: string, clothesModel?: string): boolean
function removePedClothes () end

---@type fun(theElement: element, interior: integer, x?: number, y?: number, z?: number): boolean
function setElementInterior () end

---@type fun(parent: element, theType?: elementTypeAutoComplete): table
function getElementChildren () end

---@type fun(elementType: string, elementID?: string): element
function createElement () end

---@type fun(train: vehicle): boolean
function getTrainDirection () end

---@type fun(filePath: string): file
function fileCreate () end

---@type fun(theElement: element, enabled: boolean): boolean
function setElementCallPropagationEnabled () end

---@type fun(elementToDestroy: element): boolean
function destroyElement () end

---@type fun(weaponid: weaponId): integer
function getSlotFromWeapon () end

---@type fun(modelID: integer): table
function getOriginalHandling () end

---@type fun(x1: integer, y1: integer, z1: number, x2: integer, y2: integer, z2: number, x3: integer, y3: integer, z3: number, x4?: integer, y4?: integer, z4?: number, bShallow: boolean): water
function createWater () end

---@type fun(x: number, y: number, z: number, theType: integer, creator?: player): boolean
function createExplosion () end

---@type fun(id: string, index?: integer): element
function getElementByID () end

---@type fun(theElement: element): integer
function getElementModel () end

---@type fun(theElement: element): boolean
function getElementCollisionsEnabled () end

---@type fun(theElement: element, key?: string, inherit): unknown
function getElementData () end

---@type fun(theElement: element, lowLODElement: element): boolean
function setLowLODElement () end

---@type fun(eventName: string, allowRemoteTrigger?: boolean): boolean
function addEvent () end

---@type fun(theElement: element): element
function getElementAttachedTo () end

---@type fun(): boolean
function wasEventCancelled () end

---@type fun(eventName: string, attachedTo: element, handlerFunction: function, getPropagated?: boolean, priority?: string): boolean
function addEventHandler () end

---@type fun(theElement: element): number
function getElementHealth () end

---@type fun(theElement: element, key: string, value: any, synchronize?: boolean): boolean
function setElementData () end

---@type fun(parent: element, index: integer): element
function getElementChild () end

---@type fun(theFile: file): boolean
function fileFlush () end

---@type fun(theFile: file, ...: string): integer
function fileWrite () end

---@type fun(theFile: file, offset: integer): integer
function fileSetPos () end

---@type fun(theFile: file): string
function fileGetPath () end

---@type fun(theFile: file): integer
function fileGetSize () end

---@type fun(theFile: file): boolean
function fileIsEOF () end

---@type fun(filePath: string, readOnly?: boolean): file | false If successful, returns a file handle for the file. Otherwise returns false (f.e. if the file doesn't exist). 
function fileOpen () end

---@type fun(theFile: file, count: integer): string
function fileRead () end

---@type fun(filePath: string, newFilePath: string): boolean
function fileRename () end

---@type fun(): integer
function getMarkerCount () end

---@type fun(myMarker: marker): number
function getMarkerSize () end

---@type fun(theMarker: marker, icon: string): boolean
function setMarkerIcon () end

---@type fun(thePlayer: player, key: string, keyState: string, handlerFunction: function, ...:any): boolean
function bindKey () end

---@type fun(thePed: ped): boolean
function isPedChoking () end

---@type fun(theElement: element): element
function getElementParent () end

---@type fun(theElement: element, legacy?: boolean): table
function getElementMatrix () end

---@type fun(shape: colshape, elemType?: string): table
function getElementsWithinColShape () end

---@type fun(thePed: ped, style: integer): boolean
function setPedWalkingStyle () end

---@type fun(theElement: element): colshape
function getElementColShape () end

---@type fun(theMarker: marker, size: number): boolean
function setMarkerSize () end

---@type fun(theMarker: marker): integer, integer, integer, integer
function getMarkerColor () end

---@type fun(x: number, y: number, z: number, theType?: string, size?: number, r?: integer, g?: integer, b?: integer, a?: integer, visibleTo): marker
function createMarker () end

---@type fun(theobject: object): boolean
function stopObject () end

---@type fun(thePlayer: player, key: string, keyState?: string, handler?: function): boolean
function unbindKey () end

---@type fun(theObject: object, time: integer, targetx: number, targety: number, targetz: number, moverx?:number, movery?: number, moverz?: number, strEasingType?: string, fEasingPeriod?: number, fEasingAmplitude?: number, fEasingOvershoot?: number): boolean
function moveObject () end

---@type fun(theObject: object, scale: number, scaleY?: number, scaleZ?: number): boolean
function setObjectScale () end

---@type fun(thePed: ped, weaponSlot?: integer): integer
function getPedAmmoInClip () end

---@type fun(theMarker: marker): string
function getMarkerType () end

--- Serverside
---@alias createPed_server (fun(modelid: pedId, x: number, y: number, z?: number, rot?: number, synced?: boolean): ped)
--- Clientside
---@alias createPed_client (fun(modelid: pedId, x: number, y: number, z: number, rot?: number): ped)
---@see pedId
---@type createPed_server | createPed_client
function createPed () end

---@type fun(thePed: ped, block?: pedAnimBlockName, anim?: pedAnimName, time?: integer, loop?: boolean, updatePosition?: boolean, interruptable?: boolean, freezeLastFrame?: boolean, blendTime?: integer, retainPedState?: boolean): boolean
function setPedAnimation () end

---@type fun(thePed: ped): boolean
function isPedDucked () end

---@type fun(theTeam: team): string
function getTeamName () end

---@type fun(train: vehicle): number
function getTrainSpeed () end

---@type fun(theTeam: team): boolean
function getTeamFriendlyFire () end

---@type fun(teamName: string): team
function getTeamFromName () end

---@type fun(data: string): string
function base64Decode () end

---@type fun(text: string, level?:integer, red?: integer, green?: integer, blue?: integer): boolean
function outputDebugString () end

---@type fun(text: string): boolean
function outputConsole () end

---@type fun(): boolean
function getCloudsEnabled () end

---@type fun(id: integer): string
function getWeaponNameFromID () end

---@type fun(thePed: ped, theKiller?: ped, weapon?: integer, bodyPart?: integer, stealth?: boolean): boolean
function killPed () end

---@type fun(theObject: object): number
function getObjectScale () end

---@type fun(thePickup: pickup, theType: integer, amountOrWeaponOrModel: integer, ammo?: integer): boolean
function setPickupType () end

---@type fun(thePed: ped): boolean
function removePedFromVehicle () end

---@type fun(thePlayer: player, showing: boolean): boolean
function setPlayerNametagShowing () end

---@type (fun(show: boolean, inputBlocked?: boolean): boolean) | (fun(thePlayer: player, show: boolean, inputBlocked?: boolean): boolean)
function showChat () end

---@type fun(thePed: ped, anim?: string, progress?: number): boolean
function setPedAnimationProgress () end

---@type fun(startPosX: number, startPosY: number, sizeX: number, sizeY: number, r?:integer, g?: integer, b?: integer, a?: integer, visibleTo?: element): radararea
function createRadarArea () end

---@type fun(thePed: ped, state: boolean): boolean
function setPedDoingGangDriveby () end

---@type fun(thePed: ped): vehicle
function getPedOccupiedVehicle () end

---@type fun(thePed: ped, integerweaponSlot): integer
function getPedTotalAmmo () end

---@type fun(thePed: ped, stat: integer, value: number): boolean
function setPedStat () end

---@type fun(thePed: ped): element
function getPedContactElement () end

---@type fun(theElement: element, theMarker: marker): boolean
function isElementWithinMarker () end

---@type fun(thePed: ped): boolean
function isPedOnFire () end

---@type fun(theVehicle: vehicle, upgrade: vehicleUpgradeId | "all"): boolean
function addVehicleUpgrade () end

---@type fun(thePed: ped, integerweaponSlot): integer
function getPedWeapon () end

---@type fun(theMarker: marker, r: integer, g: integer, b: integer, a: integer): boolean
function setMarkerColor () end

---@type fun(theVehicle: vehicle): boolean
function fixVehicle () end

---@type fun(thePed: ped): integer
function getPedWeaponSlot () end

---@type fun(thePed: ped): boolean
function doesPedHaveJetPack () end

---@type fun(thePed: ped): boolean
function isPedInVehicle () end

--- Serverside
---@alias getElementsByType_server fun(theType: elementTypeAutoComplete, startAt?: element): element[]
--- Clientside
---@alias getElementsByType_client fun(theType: elementTypeAutoComplete, startAt?: element, streamedIn?: boolean): element[]
---@type getElementsByType_server | getElementsByType_client Returns a table containing all the elements of the specified type. Returns an empty table if there are no elements of the specified type.
function getElementsByType () end

---@type fun(parent: element): integer Returns an integer with the number of child elements
function getElementChildrenCount () end

---@type fun(theElement: element, rotOrder?: elementRotOrder): rx: number, ry: number, rz: number Returns rx, ry, rz: 3 floats representing the Euler rotation angles on the axis X, Y and Z (with the rotation order depending on the rotOrder argument)
function getElementRotation () end

---@type fun(theElement: element): integer Returns an int for the interior if theElement is valid
function getElementInterior () end

---@type fun(theElement: element): string This returns a string containing the element ID. It will return an empty string if it has no ID.
function getElementID () end

---@type fun(): element Returns the root element.
function getRootElement () end

---@type fun(theElement: element): boolean Returns true if the propagation is enabled
function isElementCallPropagationEnabled () end

---@type fun(name: weaponName): weaponId Returns an int if the name matches that of a weapon
function getWeaponIDFromName () end

---@type fun(theElement: element): x: number, y: number, z: number Returns three floats indicating the position of the element, x, y and z respectively.
function getElementPosition () end

---@type fun(thePed: ped): boolean Returns true if the driveby state is enabled
function isPedDoingGangDriveby () end

---@type fun(theElement: element): boolean Returns true if the element is frozen
function isElementFrozen () end

---@type fun(theElement: element): boolean Returns true if the passed element is in water
function isElementInWater () end

---@type fun(thePed: ped): boolean Returns true if the ped is on foot and on the ground, false otherwise, even if he is in a car that stands still or on object outside world map. 
function isPedOnGround () end

---@type fun(theValue: any): boolean Returns true if the passed value is an element
function isElement () end

---@type fun(): pedId[] Returns a table with all valid ped models. 
function getValidPedModels () end

---@type fun(thePed: ped): vehicleSeatId | false Returns an integer containing the number of the seat that the ped is currently in. false if the ped is on foot.
function getPedOccupiedVehicleSeat () end

---@type fun(thePed: ped): element | false Returns the element that's being targeted, or false if there isn't one. 
function getPedTarget () end

---@type fun(thePed: ped, stat: pedStatId): number Returns the value of the requested statistic. 
function getPedStat () end

---@type fun(theElement: element): element Returns a low LOD element if successful
function getLowLODElement () end

---@type fun(theElement: element): vx: number, vy: number, vz: number If succesful, returns three floats that represent the element's current velocity along the x, y, and z axis respectively.
function getElementVelocity () end

---@type fun(theElement: element): boolean Returns true if the `theElement` is double-sided
function isElementDoubleSided () end

---@type fun(theElement: element, theShape: colshape): boolean Returns true if the element is within the colshape
function isElementWithinColShape () end

---@type fun(theElement: element, enabled: boolean): boolean Returns true if the collisions were set succesfully
function setElementCollisionsEnabled () end

---@type fun(theElement: element): boolean Returns true if the element is low LOD
function isElementLowLOD () end

--[[
    `alpha`: The alpha value to set. Values are 0-255, where 255 is fully opaque and 0 is fully transparent.
    Note: Objects are fully transparent at 140.
]]
---@type fun(theElement: element, alpha: integer): boolean Returns true or false if invalid arguments were passed.
function setElementAlpha () end

---@type fun(theElement: element, x: number, y: number, z: number, warp?: boolean): boolean Returns true if the function was successful
function setElementPosition () end

---@type fun(theElement: element, parent: element): boolean Returns true if both elements are valid
function setElementParent () end

--[[
    `newHealth` Depending on the stat MAX_HEALTH, the max health can be 200.
]]
---@type fun(theElement: element, newHealth: number): boolean Returns true if the new health was set successfully
function setElementHealth () end

---@type fun(theElement: element, rotX: number, rotY: number, rotZ: number, rotOrder?: elementRotOrder, conformPedRotation?: boolean): boolean Returns true if the element rotation was successfully set and false otherwise.
function setElementRotation () end

---@type fun(thePed: ped | player): boolean Returns true if the ped is headless
function isPedHeadless () end

---@type fun(theElement: element, enable: boolean): boolean Returns true if theElement is valid
function setElementDoubleSided () end

---@type fun(theElement: element, freezeStatus: boolean): boolean Returns true if the element was frozen
function setElementFrozen () end

---@type fun(theElement: element, model: integer): boolean Returns true if successful
function setElementModel () end

---@type fun(): number Returns a float containing the max jetpack height. 
function getJetpackMaxHeight () end

---@type fun(thePlayer: player): team | false Returns a team element representing the team the player is on, false if the player is not part of a team. 
function getPlayerTeam () end

---@type fun(theXMLNode: xmlnode, value: string, setCDATA?: boolean): boolean Returns true if value was successfully set
function xmlNodeSetValue () end

---@type fun(rootNode: xmlnode): boolean Returns true if save was successful
function xmlSaveFile () end

---Serverside
---@alias isPlayerMapForced_server fun(thePlayer: player): boolean
---Clientside
---@alias isPlayerMapForced_client fun(): boolean
---@type isPlayerMapForced_server | isPlayerMapForced_client Returns true if the local player's radar map is forced on
function isPlayerMapForced () end

--- If default
---@alias getFarClipDistance_default fun(): false
--- If set
---@alias getFarClipDistance_isSet fun(): number
---@type getFarClipDistance_default | getFarClipDistance_isSet Returns a float with the current render distance if set.
function getFarClipDistance () end

---Serverside
---@alias detonateSatchels_server fun(thePlayer: player): boolean
---Clientside
---@alias detonateSatchels_client fun(): boolean
---@type detonateSatchels_server | detonateSatchels_client Returns true if successful
function detonateSatchels () end

---@type fun(thePed: ped | player, headState: boolean): boolean Returns true if successful
function setPedHeadless () end

---@type fun(): boolean Returns true the traffic lights are currently locked
function areTrafficLightsLocked () end

---@type fun(theTeam: team): player[] Returns a table of all the players in the team
function getPlayersInTeam () end

--- No flags
---@alias getWeaponProperty_default fun(weaponNameOrweaponID: weaponPropertyWeaponName | weaponId, weaponSkill: weaponSkill, property: weaponProperty): integer
--- Flags
---@alias getWeaponProperty_flags fun(weaponNameOrweaponID: weaponPropertyWeaponName | weaponId, weaponSkill: weaponSkill, property: weaponPropertyFlags): boolean
---@type getWeaponProperty_default | getWeaponProperty_flags Returns the weapon property
function getWeaponProperty () end

--- No flags
---@alias getOriginalWeaponProperty_default fun(weaponNameOrweaponID: weaponPropertyWeaponName | weaponId, weaponSkill: weaponSkill, property: weaponProperty): integer
--- Flags
---@alias getOriginalWeaponProperty_flags fun(weaponNameOrweaponID: weaponPropertyWeaponName | weaponId, weaponSkill: weaponSkill, property: weaponPropertyFlags): boolean
---@type getOriginalWeaponProperty_default | getOriginalWeaponProperty_flags Returns the original weapon property
function getOriginalWeaponProperty () end

---@type fun(thePlayer: player): r: integer, g: integer, b: integer Returns red, green and blue values if an existent player was specified
function getPlayerNametagColor () end

---Serverside
---@alias forcePlayerMap_server fun(thePlayer: player, forceOn: boolean): boolean
---Clientside
---@alias forcePlayerMap_client fun(forceOn: boolean): boolean
---@type forcePlayerMap_server | forcePlayerMap_client Returns true if the player's radar map was forced on
function forcePlayerMap () end

---@type fun(): integer Returns the number of real-world milliseconds that go in an ingame minute.
function getMinuteDuration () end

---@type fun(node: xmlnode): boolean Returns true if the document was unloaded successfully
function xmlUnloadFile () end

---@type fun(theVehicle: vehicle, theTrailer?: vehicle): boolean Returns true if the vehicle's were successfully detached
function detachTrailerFromVehicle () end

---@type fun(filePath: string, rootNodeName: string): xmlnode | false Returns the root xmlnode object of the new XML file if successful, or false otherwise. 
function xmlCreateFile () end

---@type fun(thePlayer: player): integer Returns the ping as an integer
function getPlayerPing () end

---@type fun(thePed: ped, isOnFire: boolean): boolean Returns true if successful
function setPedOnFire () end

--- Serverside
---@alias getPlayerMoney_server fun(thePlayer: player): money: integer
--- Clientside
---@alias getPlayerMoney_client fun(): money: integer
---@type getPlayerMoney_server | getPlayerMoney_client Returns an integer with the amount of money
function getPlayerMoney () end

--- Serverside
---@alias setPlayerMoney_server fun(thePlayer: player, amount: integer, instant?: boolean): boolean
--- Clientside
---@alias setPlayerMoney_client fun(amount: integer, instant?: boolean): boolean
---@type setPlayerMoney_server | setPlayerMoney_client Returns true if the money was added
function setPlayerMoney () end

--[[
    Returns true if theElement and dimension are valid, false otherwise. Also returns false if theElement is a player and it's not alive. 
]]
---@type fun(theElement: element, dimension: integer): boolean
function setElementDimension () end

---@type fun(thePed: ped, theVehicle: vehicle, seat: vehicleSeatId): boolean Returns true if the operation is successful
function warpPedIntoVehicle () end

--- Serverside
---@alias blowVehicle_server fun(vehicleToBlow: vehicle, explode?: boolean): boolean
--- Clientside
---@alias blowVehicle_client fun(vehicleToBlow: vehicle): boolean
---@type blowVehicle_server | blowVehicle_client Returns true if the vehicle was blown up
function blowVehicle () end

---@type fun(thePed: ped): number A float with the armor
function getPedArmor () end

---@type fun(thePed: ped): boolean Returns true if the ped is dead
function isPedDead () end

---@type fun(theVehicle: vehicle, theTrailer: vehicle): boolean Returns true if the vehicle's were successfully attached
function attachTrailerToVehicle () end

---@type fun(velocityX: number, velocityY: number, velocityZ: number): boolean Returns true if successful
function setWindVelocity () end

---@type fun(r1: integer, g1: integer, b1: integer, r2: integer, g2: integer, b2: integer): boolean Returns true if the color of the sun was set
function setSunColor () end

--- If default
---@alias getSunColor_default fun(): false
--- If set
---@alias getSunColor_ifSet fun(): r1: integer, g1: integer, b1: integer, r2: integer, g2: integer, b2: integer
---@type getSunColor_default | getSunColor_ifSet Returns the color of the sun as six numbers, false if its default.
function getSunColor () end

---@type fun(): distance: number Returns a float with the current fog render distance
function getFogDistance () end

---@type fun(): boolean Returns true if the color of the sun was reset
function resetSunColor () end

---@type fun(level: number): boolean Returns true if the rain level was set
function setRainLevel () end

---@type fun(distance: number): boolean Returns true if the distance changed successfully
function setFogDistance () end

---@type fun(): size: integer Returns a integer being the moon size that is currently set, depending on which side it is used. 
function getMoonSize () end

---@type fun(nodeToCopy: xmlnode, newFilePath: string): xmlnode | false Returns the xmlnode of the copy if the node was successfully copied, false if invalid arguments were passed. 
function xmlCopyFile () end

--[[
    Returns the walking style ID if successful.
]]
---@see pedWalkStyleId for definitions
---@type fun(thePed: ped): pedWalkStyleId 
function getPedWalkingStyle () end

---@type fun(resourceName: string): resource | false Returns the resource with the specified name, or false if no resource of that name exists. Note that clientside this will also return false for resources that are in the loaded state, since the client is unaware of resources that have not been started. 
function getResourceFromName () end

--- Serverside
---@alias givePlayerMoney_server fun(thePlayer: player, amount: integer): boolean
--- Clientside
---@alias givePlayerMoney_client fun(amount: integer): boolean
--[[
    Returns true if the money was added
]]
---@type givePlayerMoney_server | givePlayerMoney_client
function givePlayerMoney () end

--- Serverside
---@alias getCameraMatrix_server (fun(thePlayer: player): x: number, y: number, z: number, lx: number, ly: number, lz: number, roll: number, fieldOfView: number)
--- Clientside
---@alias getCameraMatrix_client (fun(): x: number, y: number, z: number, lx: number, ly: number, lz: number, roll: number, fieldOfView: number)
--[[
    This function returns 8 floats if the argument is valid (when applicable); the first three indicate the position of the camera, the next three indicate the position of the point it's facing, and the last two are the roll and field of view.
]]
---@type getCameraMatrix_server | getCameraMatrix_client
function getCameraMatrix () end

---@type fun(thePlayer: player): string Returns a string with the nametag text
function getPlayerNametagText () end

---@type fun(thePickup: pickup): integer Returns an integer of the amount of ammo in the pickup, 0 if it's no weapon pickup. 
function getPickupAmmo () end

---@type fun(theTeam: team): integer Returns an integer containing the number of players in the team
function countPlayersInTeam () end

---@type fun(thePlayer: player): boolean Returns true if the player's name tag is being shown
function isPlayerNametagShowing () end

--- Health
---@alias createPickup_health fun(x: number, y: number, z: number, theType: 0, amount: integer, respawnTime?: integer): pickup: pickup
--- Armor
---@alias createPickup_armor fun(x: number, y: number, z: number, theType: 1, amount: integer, respawnTime?: integer): pickup: pickup
--- Weapon
---@alias createPickup_weapon fun(x: number, y: number, z: number, theType: 2, weapon: weaponId, respawnTime?: integer, ammo?: integer): pickup: pickup
--[[
Model
* 1212: Money (wad of cash)
* 1239: Info icon
* 1240: Health (heart)
* 1241: Adrenaline
* 1242: Armour
* 1247: Bribe
* 1248: GTA III sign
* 1252: Bomb from GTA III
* 1253: Photo op
* 1254: Skull
* 1272: House (blue)
* 1273: House (green)
* 1274: Money icon
* 1275: Blue t-shirt
* 1276: Tiki statue
* 1277: Save disk
* 1279: Drug bundle
* 1310: Parachute (with leg straps)
* 1313: 2 Skulls
* 1314: 2 Players icon
* 1318: Down arrow

or other object ID.
]]
---@alias createPickup_model fun(x: number, y: number, z: number, theType: 3, model: integer, respawnTime?: integer): pickup: pickup
--[[
    Returns pickup element if the pickup was created succesfully
]]
---@type createPickup_health | createPickup_armor | createPickup_weapon | createPickup_model
function createPickup () end

---@type fun(): maxVelocity: number Returns a float being the max velocity that is currently set, depending on which side it is used.
function getAircraftMaxVelocity () end

---@type fun(playerName: string): player | false Returns a player element for the player with the nickname provided. If there is no player with that name, false is returned. 
function getPlayerFromName () end

---@type fun(theTeam: team): r: integer, g: integer, b: integer Returns 3 integers representing the red, green, and blue color components of the team if it's valid
function getTeamColor () end

---@type fun(): intensity: integer, randomShift: integer, speedMin: integer, speedMax: integer, scanSizeX: integer, scanSizeY: integer, renderSizeX: integer, renderSizeY: integer, bShowInside: boolean Returns 9 values
function getHeatHaze () end

--[[
    See [wiki](https://wiki.multitheftauto.com/wiki/Weather) for weather definitions
]]
---@type fun(weatherId: integer): boolean Returns true if successful
function setWeatherBlended () end

---@see garageId
---@type fun(garageId: garageId, open: boolean): boolean Returns true if successful
function setGarageOpen () end

---@type fun(): number Returns a float representing the speed of the game. 
function getGameSpeed () end

---@see pickupType
---@type fun(thePickup: pickup): pickupType Returns an integer of the type of the pickup
function getPickupType () end

--[[ 
    See [wiki](https://wiki.multitheftauto.com/wiki/Radar_Blips) for definitions
]]
---@type fun(theBlip: blip, icon: blipIconId): boolean Returns true if the icon was successfully set
function setBlipIcon () end

--- Serverside
---@alias getCameraInterior_server fun(thePlayer: player): integer
--- Clientside
---@alias getCameraInterior_client fun(): integer
---@type getCameraInterior_server | getCameraInterior_client Returns an integer indicating the camera's interior
function getCameraInterior () end

--[[
    See [wiki](https://wiki.multitheftauto.com/wiki/Weather) for weather definitions
]]
--[[
    Returns two integers indicating the weather type that is currently active. The first integer says what weather is currently considered to be active. The second integer is the weather id that is being blended into if any, otherwise it is nil. 
]]
---@type fun(): weatherId: integer, weatherBlendId: integer | nil
function getWeather () end

--[[
    Returns true if the heat haze effect was set correctly
]]
---@type fun(intensity: integer, randomShift?: integer, speedMin?: integer, speedMax?: integer, scanSizeX?: integer, scanSizeY?: integer, renderSizeX?: integer, renderSizeY?: integer, bShowInside?: boolean): boolean
function setHeatHaze () end

--- Serverside
---@alias setCameraTarget_server fun(thePlayer: player, target?: player): boolean
--- Clientside syntax 1
---@alias setCameraTarget_client_syntax_1 fun( target: player): boolean
--- Clientside syntax 2 (Has no effect when the camera doesn't have a target.)
---@alias setCameraTarget_client_syntax_2 fun( targetX: number, targetY: number, targetZ: number): boolean
---@type setCameraTarget_server | setCameraTarget_client_syntax_1 | setCameraTarget_client_syntax_2 Returns true if the function was successful
function setCameraTarget () end

--- Serverside
---@alias setCameraMatrix_server fun(thePlayer: player, positionX: number, positionY: number, positionZ: number, lookAtX?: number, lookAtY?: number, lookAtZ?: number, roll?: number, fov?: number): boolean
--- Clientside
---@alias setCameraMatrix_client fun(positionX: number, positionY: number, positionZ: number, lookAtX?: number, lookAtY?: number, lookAtZ?: number, roll?: number, fov?: number): boolean
---@type setCameraMatrix_server | setCameraMatrix_client Returns true if the arguments are valid
function setCameraMatrix () end

---@type fun(var: any, options?: table): string Always returns a string.
function inspect () end

--- Serverside
---@alias getCameraTarget_server fun(thePlayer: player): element | false
--- Clientside
---@alias getCameraTarget_client fun(): element | false
---@type getCameraTarget_server | getCameraTarget_client Returns an element of the target or false if there is no target
function getCameraTarget () end

--- Serverside
---@alias getFunctionsBoundToKey_server fun(thePlayer: player, theKey: keyName, keyState: keyState): {[keyName]: function}
--- Clientside
---@alias getFunctionsBoundToKey_client fun(theKey: keyName, keyState: keyState):  {[keyName]: function}
---@type getFunctionsBoundToKey_server |  getFunctionsBoundToKey_client Returns a table of the key function(s). 
function getFunctionsBoundToKey () end

--- Serverside
---@alias isControlEnabled_server fun(thePlayer: player, control: controlName): boolean
--- Clientside
---@alias isControlEnabled_client fun(control: controlName): boolean
---@type isControlEnabled_server | isControlEnabled_client Returns true if control is enabled
function isControlEnabled () end

--[[
    See [wiki](https://wiki.multitheftauto.com/wiki/Weather) for weather definitions
]]
--[[
    `weatherId`: The ID of new weather. Valid values are 0 to 255 inclusive.
]]
---@type fun(weatherId: integer): boolean Returns true if the weather was set succesfully
function setWeather () end

---@type fun(value: gameSpeed): boolean Returns true if the gamespeed was set successfully
function setGameSpeed () end

---@type fun(res?: resource): string[] Returns a table of function names if successful
function getResourceExportedFunctions () end

---@type fun(toggle: boolean): boolean Returns true if the successful
function setTrafficLightsLocked () end

--[[
    `size`: The size, can be 0 or any positive value. Default is 3.
]]
---@type fun(size: integer): boolean Returns true if the moon size was set correctly
function setMoonSize () end

---@type fun(): boolean Returns true if successful
function resetWindVelocity () end

---@type fun(theVehicle: vehicle, upgrade: vehicleUpgradeId): boolean Returns true if the upgrade was successfully removed from the vehicle
function removeVehicleUpgrade () end

--[[
    eturns a table with two fields: "in" and "out". Each of these contain a table with two fields: "bits" and "count". Each of these contain a table with 256 numeric fields ranging from 0 to 255, containing the appropriate network usage data for such packet id. 
]]
---@type fun(): {["in"]: { count : { [integer] : integer }, bits : { [integer] : integer }}, out: { count : { [integer] : integer }, bits : { [integer] : integer }}}
function getNetworkUsageData () end

--- Serverside
---@alias toggleAllControls_server fun(thePlayer: player, enabled: boolean, gtaControls?: boolean, mtaControls?: boolean): boolean
--- Clientside
---@alias toggleAllControls_client fun(enabled: boolean, gtaControls?: boolean, mtaControls?: boolean): boolean
--[[
    Returns true if controls were toggled successfully
]]
---@type toggleAllControls_server | toggleAllControls_client
function toggleAllControls () end

---@type fun(...: any): nil Always returns nil.
function iprint () end

---@type fun(x1: number, y1: number, x2: number, y2: number): number Returns a float containing the 2D distance between the two points.
function getDistanceBetweenPoints2D () end

---@type fun(milliseconds: integer): boolean Returns true if successful
function setMinuteDuration () end

---@type fun(modelID: integer, radius: number, x: number, y: number, z: number, iInterior?: integer): boolean Returns true if the world object was restored
function restoreWorldModel () end

---@type fun(modelID: integer, radius: number, x: number, y: number, z: number, interior?: integer): boolean Returns true if the object was removed
function removeWorldModel () end

---@type fun(): boolean Returns true if operation was successful
function resetFogDistance () end

--- Clientside
---@alias toggleControl_server fun(thePlayer: player, control: controlName, enabled: boolean): boolean
--- Serverside
---@alias toggleControl_client fun(control: controlName, enabled: boolean): boolean
--[[
   Returns true if the control was set successfully
]]
---@type toggleControl_server | toggleControl_client
function toggleControl () end

---@type fun(): boolean Returns true if operation was successful
function resetFarClipDistance () end

---@type fun(distance: number): boolean Returns true if the distance was set correctly.
function setFarClipDistance () end

---@type fun(x1: number, y1: number, z1: number, x2: number, y2: number, z2: number): number Returns a float containing the distance between the two points as a float.
function getDistanceBetweenPoints3D () end

--- Valid string
---@alias getColorFromString_validString fun(theColor: string): r:integer, g:integer, b:integer, a:integer 
--- Invalid string
---@alias getColorFromString_invalidString fun(theColor: string): invalid: false
--[[
    Returns four integers in RGBA format, with a maximum value of 255 for each. Each stands for red, green, blue, and alpha. Alpha decides transparancy where 255 is opaque and 0 is transparent. false is returned if the string passed is invalid. 
]]
---@type getColorFromString_validString | getColorFromString_invalidString
function getColorFromString () end

---@type fun(garageId: garageId): boolean Returns true if the garage is open
function isGarageOpen () end


---@alias networkStats { bytesReceived: integer, bytesSent: integer, packetsReceived: integer, packetsSent: integer, packetlossTotal: integer, packetlossLastSecond: integer, messagesInSendBuffer: integer, messagesInResendBuffer: integer, isLimitedByCongestionControl: integer, isLimitedByOutgoingBandwidthLimit: integer, encryptionStatus: integer }
--[[
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
function getNetworkStats () end

--[[
* `hour`: The hour of the new time (range 0-23).
* `minute`: The minute of the new time (range 0-59).
]]
---@type fun(hour: integer, minute: integer): boolean Returns true if the new time was successfully set
function setTime () end

---@type fun(): number Returns the rain level as a number. 
function getRainLevel () end

---@type fun(x1: number, y1: number, z1: number, x2: number, y2: number, z2: number, fProgress: number, strEasingType: strEasingType, numberfEasingPeriod?: number, fEasingAmplitude?: number, fEasingOvershoot?: number): x: number, y: number, z: number Returns x, y, z
function interpolateBetween () end

---@type fun(size: integer): boolean Returns true if the size of the sun was set, false otherwise. 
function setSunSize () end

---@type fun(category: performanceCategory, options?: string, filter?: string): string[], string[][] Returns two tables. First contains column names. The second contains result rows. Each row is table of cells. 
function getPerformanceStats () end

--- Serverside
---@alias setCameraInterior_server fun(thePlayer: player, interior: integer): boolean
--- Clientside
---@alias setCameraInterior_client fun(interior: integer): boolean
---@type setCameraInterior_server | setCameraInterior_client Returns true if the camera's interior was changed successfully, false otherwise. 
function setCameraInterior () end

---@type fun(): hours: integer, minutes: integer Returns two integers that represent hours and minutes. 
function getTime () end

---@type fun(topRed?: integer, topGreen?: integer, topBlue?: integer, bottomRed?: integer, bottomGreen?: integer, bottomBlue?: integer): boolean Returns true if sky color was set correctly, false if invalid values were passed.
function setSkyGradient () end

---@type fun(theTimer: timer): timeLeft: integer, leftToExecute: integer, timeInterval: integer
function getTimerDetails () end

---@alias getRealTime_default fun(localTime?: boolean): {second: integer, minute: integer, hour: integer, monthday: integer, month: integer, year: integer, weekday: integer, yearday: integer, isdst: integer, timestamp: integer }
---@alias getRealTime_seconds fun(seconds: integer, localTime?: boolean): {second: integer, minute: integer, hour: integer, monthday: integer, month: integer, year: integer, weekday: integer, yearday: integer, isdst: integer, timestamp: integer } | false
---@type getRealTime_default | getRealTime_seconds Returns a table of substrings with different time format or false if the seconds argument is out of range. 
function getRealTime () end

---@type fun(): integer Returns an integer containing the number of milliseconds since the system the server is running on started.
function getTickCount () end

--[[
* `auto`: Sets the traffic lights default behavior (switches the colors automatically).
* `disabled`: Turns traffic lights off.
]]
---@alias setTrafficLightState_state fun(state: trafficLightStateId | "auto" | "disabled"): boolean
---@alias setTrafficLightState_color fun(colorNS : "green" | "yellow" | "red", colorEW : "green" | "yellow" | "red"): boolean
---@type setTrafficLightState_state | setTrafficLightState_color Returns true if the state was successfully set
function setTrafficLightState () end

---@type fun(theMarker: marker): markerIcon
function getMarkerIcon () end

---@type fun(): gravityLevel:number Returns a float with the current server or client (depending on where you call the function) gravity level. 
function getGravity () end

---@type fun(enabled: boolean): boolean If a boolean was passed to the function
function setInteriorSoundsEnabled () end

--- `citiesonly` = false 
---@alias getZoneName_default fun(x: number, y: number, z: number, citiesonly: false): zoneAndSomeCityName
--- `citiesonly` = true 
---@alias getZoneName_cityOnly fun(x: number, y: number, z: number, citiesonly: true): cityName
---@type getZoneName_default | getZoneName_cityOnly Returns the string of the zone/city name. 
function getZoneName () end

---@type fun(): boolean Returns true if the rain level was reset. 
function resetRainLevel () end

--- If default
---@alias getSunSize_default fun(): false
--- If set
---@alias getSunSize_isSet fun(): number
---@type getSunSize_default | getSunSize_isSet Returns the size of the sun as a number, false if the size of the sun is at its default. 
function getSunSize () end

---@type fun(data: string): string eturns the base64 representation of the encoded data if the encoding process was successfully completed
function base64Encode () end

--[[
    `theResource`: the resource whose root element we are getting. If not specified, assumes the current resource. (the resource returned from getThisResource)
]]
---@type fun(theResource?: resource): element Returns an element representing the resource's root
function getResourceRootElement () end

---@type fun(): boolean Returns true if the size of the sun was reset
function resetSunSize () end

---@type fun(theRadarArea: radararea, r: integer, g: integer, b: integer, a: integer): boolean Returns true if the color was set successfully
function setRadarAreaColor () end

---@type fun(theRadarArea: radararea, flash: boolean): boolean Returns true if the new flash state was successfully set
function setRadarAreaFlashing () end

---@type fun(theRadararea: radararea): x:number, y:number Returns two floats indicating the X and Y length of the radar area respectively
function getRadarAreaSize () end

---@type fun(): {number: integer, mta: string, name: "MTA:SA Server" | "MTA:SA Client", netcode: integer, os: "Windows"|string, type: "Custom" | "Release" | string, tag: string, sortable: string } Returns a table with version information.
function getVersion () end

---@type fun(): integer Returns an integer
function getFPSLimit () end

---@type fun(json: string): ...:unknown Returns variables read from the JSON string. 
function fromJSON () end

---@type fun(theRadararea: radararea): boolean Returns true if the radar area is flashing
function isRadarAreaFlashing () end

---@type fun(theRadararea: radararea, x: number, y: number): boolean Returns true if the size was set successfully
function setRadarAreaSize () end

---@see weaponSlotId
---@type fun(thePed: ped, weaponSlot: weaponSlotId): boolean Returns true if successful in setting the ped's equipped weapon slot
function setPedWeaponSlot () end

--[[
    `theTime`: The maximum time left (in milliseconds) on the timers you wish to retrieve.
]]
---@type fun(theTime?: integer): timer[] Returns a table of all the active timers. 
function getTimers () end

---@type fun(): boolean Returns true if occlusions are enabled
function getOcclusionsEnabled () end

---@type fun(res: resource): string Returns a string with the resource name in it
function getResourceName () end

---@type fun(theRadararea: radararea): red:integer, green:integer, blue:integer, alpha:integer Returns four integers in RGBA format (red, green, blue, alpha), with a maximum value of 255 for each. Alpha decides transparency where 255 is opaque and 0 is transparent. 
function getRadarAreaColor () end

---@type fun(text: string, tokenNumber: integer, separatingCharacter: string | ASCII): string | false Returns a string containing the token if it exists, false otherwise. 
function gettok () end

--- If default
---@alias getWindVelocity_default fun(): false
--- If set
---@alias getWindVelocity_isSet fun(): x:integer, y:integer, z:integer
---@type getWindVelocity_default | getWindVelocity_isSet
function getWindVelocity () end

---@type fun(theArea: radararea, posX: number, posY: number): boolean Returns true if the position is inside the radar area
function isInsideRadarArea () end

---@type fun(theResource: resource): resourceState If successful returns a string with the resource state in it
function getResourceState () end

---@type fun(): boolean Returns true if the world objects were restored
function restoreAllWorldModels () end

---@type fun(): resource Returns the resource in which the current script is. 
function getThisResource () end

--- Serverside
---@alias addCommandHandler_server (fun(commandName: string, handlerFunction: fun(playerSource: player, commandName: string, ...:string ), restricted?: boolean, caseSensitive?: boolean): boolean)
--- Clientside
---@alias addCommandHandler_client (fun(commandName: string, handlerFunction:  fun(commandName: string, ...:string ), caseSensitive?: boolean): boolean)
---@type addCommandHandler_server | addCommandHandler_client Returns true if the command handler was added successfully, false otherwise.
function addCommandHandler () end

---@type fun(filePath: string): xmlnode | false Returns the root node of the specified configuration file. If the file is corrupted, not defined in the meta file or doesn't exist, returns false. 
function getResourceConfig () end

---@type fun(enabled: boolean): boolean Returns true if the setting was set correctly
function setOcclusionsEnabled () end

--[[
    `velocity`: The max velocity, can be 0 or any positive value. Default is 1.5.
]]
---@type fun(velocity: number): boolean Returns true if the max velocity was set correctly
function setAircraftMaxVelocity () end

--[[
    `level`: The level of gravity (default is 0.008).
]]
---@type fun(level: number): boolean Returns true if gravity was changed
function setGravity () end

---@alias fetchRemoteOptions { queueName?: string, connectionAttempts?: integer, connectTimeout?: integer, postData?: string, postIsBinary?: boolean, method?: "GET" | "POST", headers?: {[string]: any}, maxRedirects?: integer, username?: string, password?: string, formFields?: {[string]: any}}
--- Without options
---@alias fetchRemote_syntaxWithoutOptions fun(URL: string, callbackFunction: function, callbackArguments?: table): request | false
--- With options
---@alias fetchRemote_syntaxWithOptions fun(URL: string, options: fetchRemoteOptions, callbackFunction: function, callbackArguments?: table): request | false
--[[ 
    Using version syntax from  1.5.4-9.11342 + 1.5.4-9.11413. Because the other variant has too many sub-variations
]]
--[[
    Returns a request value
]]
---@type fetchRemote_syntaxWithoutOptions | fetchRemote_syntaxWithOptions 
function fetchRemote () end

--- Serverside
---@alias executeCommandHandler_server fun(commandName: string, thePlayer: player, ...: string): boolean
--- Clientside
---@alias executeCommandHandler_client fun(commandName: string, ...: string): boolean
---@type executeCommandHandler_server | executeCommandHandler_client Returns true if the command handler was called successfully
function executeCommandHandler () end

---@type fun(): boolean Returns true if the size of the moon was reset
function resetMoonSize () end

--- Serverside
---@alias setWeaponAmmo_server fun(thePlayer: player, weapon: weaponId, totalAmmo: integer, ammoInClip?: integer): boolean
--- Clientside
---@alias setWeaponAmmo_client fun(weapon: weapon, ammo: integer): boolean
---@see weaponId
---@type setWeaponAmmo_server | setWeaponAmmo_client Returns true on success
function setWeaponAmmo () end

---@type fun(theResource: resource): element | false Returns an element of the resource's dynamic element root if the resource specified was valid and active (currently running), false otherwise. 
function getResourceDynamicElementRoot () end

---@type fun(): boolean Returns true if the heat haze was reset correctly
function resetHeatHaze () end

---@see trafficLightStateId
---@type fun(): trafficLightStateId Returns the current state of the traffic lights.
function getTrafficLightState () end

---@type fun(): boolean Returns true if sky color was reset correctly
function resetSkyGradient () end

---@type fun(enabled: boolean): boolean Returns true if the cloud state was changed succesfully
function setCloudsEnabled () end

---@type fun(): r1:integer, g1:integer, b1:integer, r2:integer, g2:integer, b2:integer Returns 6 ints, of which the first 3 represent the sky's "top" color, (in RGB) and the last 3 represent the bottom colors. 
function getSkyGradient () end

--- Serverside
---@alias setWeaponProperty_server_syntax_1 fun(weaponNameOrWeaponID: weaponPropertyWeaponName | weaponId, weaponSkill: weaponSkill, property: weaponProperty, theValue: integer | number): boolean
--- Serverside toggle flags
---@alias setWeaponProperty_server_syntax_2 fun(weaponNameOrWeaponID: weaponPropertyWeaponName | weaponId, weaponSkill: weaponSkill, property: weaponPropertyFlags, theValue: boolean): boolean
--- Clientside
---@alias setWeaponProperty_client fun(weapon: weapon, property: weaponProperty_client_syntax_1, theValue: number) | fun(weapon: weapon, property: weaponProperty_client_syntax_2, theValue: vector3)
--[[
    Returns true if the property was set. 
]]
---@see weaponId
---@type setWeaponProperty_server_syntax_1 | setWeaponProperty_server_syntax_2 | setWeaponProperty_client
function setWeaponProperty () end

---@type fun(height: number): boolean Returns true if successful
function setAircraftMaxHeight () end

---@type fun(height: number): boolean Returns true if successful
function setJetpackMaxHeight () end

---@type fun(theBlip: blip): number Returns one float with the blips visible distance
function getBlipVisibleDistance () end

---@type fun(theBlip: blip, theDistance: number): boolean Returns true if successful
function setBlipVisibleDistance () end

---@type fun(fX: number, fY: number, fX1: number, fY1: number, fX2: number, fY2: number, fX3: number, fY3: number, ...:number): colshape Returns a colshape element if successful
function createColPolygon () end

---@alias latentEventStatus { tickStart: number, tickEnd: number, totalSize: number, percentComplete: number}
--- Serverside
---@alias getLatentEventStatus_server (fun(handle: integer): latentEventStatus)
--- Clientside
---@alias getLatentEventStatus_client (fun(thePlayer: player, handle: integer): latentEventStatus)
---@type getLatentEventStatus_server | getLatentEventStatus_client Returns a table with the following info or false if invalid arguments were passed
function getLatentEventStatus () end

---@type fun(theFile: file): integer Returns the file position if successful
function fileGetPos () end

--- Serverside
---@alias getKeyBoundToFunction_server (fun(thePlayer: player, theFunction: function): string | false)
--- Clientside
---@alias getKeyBoundToFunction_client (fun(theFunction: function): string | false)
---@type getKeyBoundToFunction_server | getKeyBoundToFunction_client Returns a string of the first key the function was bound to. 
function getKeyBoundToFunction () end

--- Serverside
---@alias clearChatBox_server (fun(clearFor?: player | root): boolean)
--- Clientside
---@alias clearChatBox_client (fun(): boolean)
---@type clearChatBox_server | clearChatBox_client Returns true if the player's chat was cleared successfully, false otherwise. 
function clearChatBox () end

--- Serverside
---@alias outputChatBox_server (fun(text: string, visibleTo?: player | root | player[] | team, r?: integer, g?: integer, b?: integer, colorCoded?: boolean) : boolean)
--- Clientside
---@alias outputChatBox_client (fun(text: string, r?: integer, g?: integer, b?: integer, colorCoded?: boolean) : boolean)
---@type outputChatBox_server | outputChatBox_client Returns true if the message was displayed successfully.
function outputChatBox () end

---@type fun(theResource: resource, theFunction: string, ... ): ... Returns anything that the designated function has returned, if the function has no return, nil is returned. If the function does not exist, is not exported, or the call was not successful it will return false. 
function call () end

---@type fun(commandName: string, handler?: function): boolean Returns true if the command handler was removed successfully, false if the command doesn't exist. 
function removeCommandHandler () end

---@type fun(fpsLimit: integer): boolean Returns true if successful, or false if it was not possible to set the limit or an invalid value was passed. 
function setFPSLimit () end

---@type fun(value: any, compact?: boolean, prettyType?: jsonPrettyType): string Returns a JSON formatted string. 
function toJSON () end

---@type fun(fProgress: number, strEasingType: strEasingType, fEasingPeriod?: number, fEasingAmplitude?: number, fEasingOvershoot?: number): number
function getEasingValue () end

---@type fun(algorithm: "md5" | "sha1" | "sha224" | "sha256" | "sha384" | "sha512" | "hmac" |, dataToHash: string, options?: table): string Returns the hash of the data, false if an invalid argument was used.
function hash () end

---@type fun(theTimer: timer): boolean Returns true if the timer was successfully killed, false if no such timer existed. 
function killTimer () end

---@type fun(theTimer: timer): boolean Returns true if the timer was successfully reset
function resetTimer () end

--[[
* `timeInterval`: The number of milliseconds that should elapse before the function is called. The minimum is 0 ms; 1000 milliseconds = 1 second)
* `timesToExecute`: The number of times you want the timer to execute, or 0 for infinite repetitions.
]]
---@type fun(theFunction: fun(...: any), timeInterval: integer, timesToExecute: integer, ...: any ): timer Returns a timer pointer if the timer was set successfully
function setTimer (theFunction, timeInterval, timesToExecute, ...) end

---@type fun(stringToSplit: string, separatingChar: string | integer): string[] Returns a table of substrings split from the original string if successful
function split () end

---@type fun(theTimer: timer): boolean Returns true if the passed value is a timer
function isTimer () end

---@type fun(str: string): string Returns the MD5 hash of the input string if successful
function md5 () end

---@type fun(str: string): string Returns the sha256 hash of the input string if successful
function sha256 () end

---@type fun(text: string, key: string): string Returns the base64 representation of the encrypted string if the encryption process was successfully completed
function teaEncode () end

---@type fun(data: string, key: string): string Returns string containing the decrypted data if the decryption process was successfully completed
function teaDecode () end

---@type fun(characterCode: integer): string Returns a string if the function was successful
function utfChar () end

---@type fun(theString: string): integer Returns an integer if the function was successful
function utfCode () end

---@type fun(theString: string): integer Returns an integer if the function was successful
function utfLen () end

---@type fun(theString: string, position: integer): integer | false Returns an integer if the function was successful, false otherwise. 
function utfSeek () end

---@type fun(theString: string, start: integer, end: integer): string Returns a string if the function was successful. Returns an empty string if out of bounds.
function utfSub () end

---@type fun(subject: string, pattern: string, flags?: integer | string): boolean Returns true if the pattern was found in the input string, false otherwise. 
function pregFind () end

---@type fun(subject: string, pattern: string, replacement: string, flags?: integer | string): string Returns the replaced string
function pregReplace () end

---@type fun(base: string, pattern: string, flags?: integer | string, maxResults?: integer): string[] Returns a table if one or more match is found
function pregMatch () end

---@type fun(var1: uint, var2: uint, ...: uint): uint Returns the conjuncted value. 
function bitAnd () end

---@type fun(var: uint): uint Returns the value on which the operation has been performed. 
function bitNot () end

---@type fun(var1: uint, var2: uint, ...: uint): uint Returns the conjuncted value. 
function bitOr () end

---@type fun(var1: uint, var2: uint, ...: uint): uint Returns the conjuncted value. 
function bitXor () end

---@type fun(var1: uint, var2: uint, ...: uint): boolean Returns true if the conjuncted value is not zero, false otherwise.
function bitTest () end

---@type fun(value: integer, n: integer): integer Returns the circular left-rotated value as integer. 
function bitLRotate () end

---@type fun(value: integer, n: integer): integer Returns the circular right-rotated value as integer. 
function bitRRotate () end

---@type fun(value: integer, n: integer): integer Returns the logical left shifted value as integer. 
function bitLShift () end

---@type fun(value: integer, n: integer): integer Returns the logical right shifted value as integer. 
function bitRShift () end

---@type fun(value: integer, n: integer): integer Returns the arithmetic shifted value as integer. 
function bitArShift () end

---@type fun(var: uint, field: integer, width?: integer): uint Returns the extracted value/bit sequence. 
function bitExtract () end

---@type fun(var: uint, replaceValue: uint, field: integer, width?: integer): uint Returns the replaced value/bit sequence. 
function bitReplace () end

--- hookType: "preFunction" or "postFunction"
---@alias debugHookCallback_func fun( sourceResource: resource, functionName: string, isAllowedByACL: boolean, luaFilename: string, luaLineNumber: integer, ...): nil | "skip"
--- hookType: "preEvent" or "postEvent"
---@alias debugHookCallback_event fun( sourceResource: resource, eventName: string, eventSource: element, eventClient: player, luaFilename: string, luaLineNumber: integer, ...): nil | "skip"
--- hookType: "preEventFunction" or "postEventFunction"
---@alias debugHookCallback_eventFunc fun( sourceResource: resource, eventName: string, eventSource: element, eventClient: player, eventFilename: string, eventLineNumber: integer, functionResource: resource, functionFilename: string, functionLineNumber: integer, ...): nil | "skip"

--[[
    Returns true if the hook was successfully added
]]
---@type (fun(hookType: "preFunction" | "postFunction", callbackFunction: debugHookCallback_func, nameList?: string[]): boolean) | (fun(hookType: "preEvent" | "postEvent", callbackFunction: debugHookCallback_event, nameList?: string[]): boolean) | (fun(hookType: "preEventFunction" | "postEventFunction", callbackFunction: debugHookCallback_eventFunc, nameList?: string[]): boolean)
function addDebugHook () end

--[[
    Returns true if the hook was successfully removed
]]
---@type (fun(hookType: "preFunction" | "postFunction", callbackFunction: debugHookCallback_func): boolean) | (fun(hookType: "preEvent" | "postEvent", callbackFunction:  debugHookCallback_event): boolean) | (fun(hookType: "preEventFunction" | "postEventFunction", callbackFunction: debugHookCallback_eventFunc): boolean)
function removeDebugHook () end

---@type fun(vehicleToCheck: vehicle): boolean Returns true if the train is derailable
function isTrainDerailable () end

---@type fun(vehicleToCheck: vehicle): boolean Returns true if the train is derailed
function isTrainDerailed () end

---@type fun(theVehicle: vehicle): boolean Returns true if the vehicle specified has blown up
function isVehicleBlown () end

--[[
    vehicle ID's are: 420, 438
]]
---@type fun(taxi: vehicle): boolean Returns true if the light is on
function isVehicleTaxiLightOn () end

---@type fun(theVehicle: vehicle): boolean Returns true if the vehicle is damage proof
function isVehicleDamageProof () end

---@type fun(theVehicle: vehicle): boolean Returns true if the specified vehicle is valid and its fuel tank is explodable
function isVehicleFuelTankExplodable () end

---@type fun(theVehicle: vehicle): boolean Returns true if the vehicle specified is locked
function isVehicleLocked () end

---@type fun(theVehicle: vehicle): boolean Returns true if vehicle is on the ground
function isVehicleOnGround () end

---@deprecated Function has been disabled.
---@type fun(train: vehicle): integer
function getTrainTrack () end

---@type fun(train: vehicle): number | false Returns a float that represents how along the track it is, false if there is problem with train element. 
function getTrainPosition () end


--[[
* Returns 12 ints (if `bRGB` is true) indicating the red, green and blue components of each of the 4 vehicle colors.
* Returns 4 ints (if `bRGB` is false) indicating the color ids of each of the 4 vehicle colors.
]]
--- RGB
---@alias getVehicleColor_rgb fun(theVehicle: vehicle, bRGB: true): r1:integer, g1:integer, b1:integer, r2:integer, g2:integer, b2:integer, r3:integer, g3:integer, b3:integer, r4:integer, g4:integer, b4:integer
--- Palette
---@alias getVehicleColor_palette fun(theVehicle: vehicle, bRGB: false): vehiclePaletteColor, vehiclePaletteColor, vehiclePaletteColor, vehiclePaletteColor
---@type getVehicleColor_rgb | getVehicleColor_palette
function getVehicleColor () end

---@type fun(theVehicle: vehicle, slot: vehicleSlotId): vehicleUpgradeId[] Returns a table with all the compatible upgrades
function getVehicleCompatibleUpgrades () end

---@type fun(theVehicle: vehicle): player | ped | false Returns a player object, if there isn't a driver, it will search the 'trailer chain' for the front driver, false otherwise. 
function getVehicleController () end

---@see vehicleDoorId
---@see vehicleDoorStateId
---@type fun(theVehicle: vehicle, door: vehicleDoorId): vehicleDoorStateId
function getVehicleDoorState () end

---@type fun(theVehicle: vehicle): boolean Returns true if the vehicle's engine is started
function getVehicleEngineState () end

--[[
Returns
* Returns true if landing gear is down, false if the landing gear is up.
* Returns nil if the vehicle has no landing gear, or is invalid. 
]]
---@type fun(theVehicle: vehicle): boolean | nil
function getVehicleLandingGearDown () end

---@see vehicleLightId
---@see vehicleLightStateId
---@type fun(theVehicle: vehicle, light: vehicleLightId): vehicleLightStateId Returns 0 (working) or 1 (broken) 
function getVehicleLightState () end

---@see vehicleId
---@type fun(modelIDOrTheVehicle: vehicleId | vehicle): integer Returns an integer indicating the maximum number of passengers that can enter a vehicle.
function getVehicleMaxPassengers () end

---@type fun(theVehicle: vehicle): vehicleName Returns a string containing the requested vehicle's name
function getVehicleName () end

---@see vehicleSeatId
---@type fun(theVehicle: vehicle, seat: vehicleSeatId): player | ped Returns the player/ped sitting in the vehicle, or false if the seat is unoccupied or doesn't exist. 
function getVehicleOccupant () end

---@see vehicleSeatId
---@type fun(theVehicle: vehicle): {[vehicleSeatId]: player | ped | nil } Returns a table with seat ID as an index and the occupant as an element
function getVehicleOccupants () end

---@see vehicleOverrideLightStateId
---@type fun(theVehicle: vehicle): vehicleOverrideLightStateId Returns an integer value: 0 (No override), 1 (Force off) or 2 (Force on). 
function getVehicleOverrideLights () end

--[[
Returns an integer representing the current paintjob on the vehicle.

* 0: The first paintjob
* 1: The second paintjob
* 2: The third paintjob
* 3: Default paintjob (no paintjob)
]]
---@see vehiclePaintjobId
---@type fun(theVehicle: vehicle): vehiclePaintjobId
function getVehiclePaintjob () end

---@see vehiclePanelId
---@type fun(theVehicle: vehicle, panel: vehiclePanelId): vehiclePanelStateId Returns an int indicating the state of the specified the panel. This is a value between 0 and 3, with 0 indicating the panel is undamaged and 3 indicating it is very damaged. 
function getVehiclePanelState () end

---@type fun(theVehicle: vehicle): string Returns a string that corresponds to the plate on the text
function getVehiclePlateText () end

---@type fun(theVehicle: vehicle): boolean Returns true if the sirens are turned on for the specified vehicle, false if the sirens are turned off for the specified vehicle, if the vehicle doesn't have sirens or if invalid arguments are specified. 
function getVehicleSirensOn () end

---@type fun(theVehicle: vehicle): vehicle | false Returns the vehicle that theVehicle is towing, false if it isn't towing a vehicle. 
function getVehicleTowedByVehicle () end

---@type fun(theVehicle: vehicle): vehicle | false Returns the vehicle that theVehicle is being towed by. false if it isn't being towed.
function getVehicleTowingVehicle () end

---@deprecated Use getElementAngularVelocity instead
---@type fun(theVehicle: vehicle): number, number, number
function getVehicleTurnVelocity () end

---@type fun(turretVehicle: vehicle): rx:number, ry:number Returns two floats for the X (horizontal) and Y (vertical) axis rotation respectively. These values are in radians. The function will return 0, 0 if the vehicle is not a vehicle with a turret. 
function getVehicleTurretPosition () end

---@type fun(theVehicle: vehicle): vehicleType Returns a string with vehicle type
function getVehicleType () end

---@see vehicleSlotId
---@type fun(theVehicle: vehicle, slot: vehicleSlotId): vehicleUpgradeId | false Returns an integer with the upgrade on the slot if correct arguments were passed
function getVehicleUpgradeOnSlot () end

---@type fun(theVehicle: vehicle): vehicleUpgradeId[] Returns a table of all the upgrades on each slot of a vehicle, which may be empty
function getVehicleUpgrades () end

---@see vehicleSlotId
---@type fun(slotOrUpgrade: vehicleSlotId | vehicleUpgradeId): vehicleSlotName Returns a string with the slot name if a valid slot or upgrade ID was given
function getVehicleUpgradeSlotName () end

---@see vehicleWheelStateId
---@type fun(theVehicle: vehicle): frontLeft: vehicleWheelStateId, rearLeft: vehicleWheelStateId, frontRight: vehicleWheelStateId, rearRight: vehicleWheelStateId Returns 4 ints indicating the states of the wheels
function getVehicleWheelStates () end

---@see vehicleDoorId
---@type fun(theVehicle: vehicle, door: vehicleDoorId): number Returns a number between 0 and 1 that indicates how open the door is. 0 is closed, and 1 is fully open.
function getVehicleDoorOpenRatio () end

---@see vehicleHandlingProperty
---@type fun(theVehicle: vehicle): {[vehicleHandlingProperty]: any} Returns a table containing all the handling data
function getVehicleHandling () end

---@type fun(theVehicle: vehicle): red:integer, green:integer, blue:integer Returns three integers for the red, green and blue of the headlight color for the specified vehicle
function getVehicleHeadLightColor () end

---@see vehicleId
---@type fun(name: vehicleName): vehicleId Returns an integer if the name exists, false otherwise. If you use this function on vehicles with shared names, such as "police", it will return the earliest occurrence of that vehicle's ID. 
function getVehicleModelFromName () end

---@see vehicleId
---@type fun(model: vehicleId): vehicleName Returns the name of the vehicle if the model ID was valid
function getVehicleNameFromModel () end

--- See [vehicle variants](https://wiki.multitheftauto.com/wiki/Vehicle_variants). Not all variants are available depending on the vehicle.
---@type (fun(theVehicle: vehicle): 0 | 1 | 2 | 3 | 4 | 5, 0 | 1 | 2 | 3 | 4 | 5)
function getVehicleVariant () end

---@type fun(theVehicle: vehicle): {SirenCount: integer, SirenType: sirenTypeId, Flags: { ["360"] : boolean, DoLOSCheck: boolean, UseRandomiser: boolean, Silent: boolean}} | false Returns a table with the siren count, siren type and a sub table for the four flags. False otherwise. 
function getVehicleSirenParams () end

---@type fun(theVehicle: vehicle): {x: number, y: number, z: number, Red: integer, Green: integer, Blue: integer, Alpha: integer, Min_Alpha: integer }[]
function getVehicleSirens () end

---@type fun(derailableVehicle: vehicle, derailable: boolean): boolean Returns true if the state was successfully set
function setTrainDerailable () end

---@type fun(vehicleToDerail: vehicle, derailed: boolean): boolean Returns true if the state was successfully set 
function setTrainDerailed () end

---@type fun(train: vehicle, clockwise: boolean): boolean Returns true if successful
function setTrainDirection () end

--[[
    `speed`: the new on-track speed of the train. A positive value will make it go clockwise, a negative value counter clockwise.
]]
---@type fun(train: vehicle, speed: number): boolean Returns true if successful
function setTrainSpeed () end

---@deprecated Function has been disabled according to wiki
---@type fun(train: vehicle, track: 0 | 1 | 2 | 3): boolean Returns true if the track was set to the train
function setTrainTrack () end

--[[
    `position`: the position along the track (0 - 18107 a complete way round)
]]
---@type fun(train: vehicle, position: number): boolean Returns true if the train position was set
function setTrainPosition () end

--- Using RGB 1
---@alias setVehicleColor_rgb1 fun(theVehicle: vehicle, r1: integer, g1: integer, b1: integer): boolean
--- Using RGB 2
---@alias setVehicleColor_rgb2 fun(theVehicle: vehicle, r1: integer, g1: integer, b1: integer, r2: integer, g2: integer, b2: integer): boolean
--- Using RGB 3
---@alias setVehicleColor_rgb3 fun(theVehicle: vehicle, r1: integer, g1: integer, b1: integer, r2: integer, g2: integer, b2: integer, r3: integer, g3: integer, b3: integer): boolean
--- Using RGB 4
---@alias setVehicleColor_rgb4 fun(theVehicle: vehicle, r1: integer, g1: integer, b1: integer, r2: integer, g2: integer, b2: integer, r3: integer, g3: integer, b3: integer, r4: integer, g4: integer, b4: integer): boolean
--- Using palette
---@alias setVehicleColor_palette fun(theVehicle: vehicle, p1: vehiclePaletteColor, p2: vehiclePaletteColor, p3: vehiclePaletteColor, p4: vehiclePaletteColor): boolean
---@see vehiclePaletteColor for palette definitions
--[[
    Returns true if vehicle's color was set
]]
---@type setVehicleColor_rgb1 | setVehicleColor_rgb2 | setVehicleColor_rgb3 | setVehicleColor_rgb4 | setVehicleColor_palette
function setVehicleColor () end


---@type fun(theVehicle: vehicle, damageProof: boolean): boolean Returns true if the door state was successfully set
function setVehicleDamageProof () end

---@see vehicleDoorId
---@see vehicleDoorStateId
---@type fun(theVehicle: vehicle, door: vehicleDoorId, state: integer, spawnFlyingComponent?: boolean): boolean Returns true if the door state was successfully set
function setVehicleDoorState () end

---@type fun(theVehicle: vehicle, state: boolean): boolean Returns true if the damageability state was successfully changed
function setVehicleDoorsUndamageable () end

---@type fun(theVehicle: vehicle, engineState: boolean): boolean Returns true if the vehicle's engine state was successfully changed
function setVehicleEngineState () end

---@type fun(theVehicle: vehicle, explodable: boolean): boolean Returns true if the vehicle's fuel tank explodable state was successfully changed
function setVehicleFuelTankExplodable () end

---@type fun(theVehicle: vehicle, gearState: boolean): boolean Returns true if the landing gear was set successfully
function setVehicleLandingGearDown () end

---@see vehicleLightId
---@see vehicleOverrideLightStateId
---@type fun(theVehicle: vehicle, light: vehicleLightId, state: vehicleLightStateId): boolean Returns true if the light state was set successfully
function setVehicleLightState () end

---@type fun(theVehicle: vehicle, locked: boolean): boolean Returns true if the operation was successful
function setVehicleLocked () end

---@see vehicleOverrideLightStateId
---@type fun(theVehicle: vehicle, value: vehicleOverrideLightStateId): boolean Returns true if the vehicle's lights setting was changed.
function setVehicleOverrideLights () end

---@see vehiclePaintjobId
---@type fun(theVehicle: vehicle, value: vehiclePaintjobId): boolean Returns true if the vehicle's paintjob was changed
function setVehiclePaintjob () end

---@see vehiclePanelId
---@see vehiclePanelStateId
---@type fun(theVehicle: vehicle, panelId: vehiclePanelId, state: vehiclePanelStateId): boolean Returns true if the panel state has been updated
function setVehiclePanelState () end

--[[
`numberplate`: a string that will go on the number plate of the vehicle (max 8 characters).
]]
---@type fun(theVehicle: element, numberplate: string): boolean Returns true if the numberplate was changed successfully
function setVehiclePlateText () end

---@type fun(theVehicle: vehicle, sirensOn: boolean): boolean Returns true if the sirens are set for the specified vehicle, false if the sirens can't be set for the specified vehicle, if the vehicle doesn't have sirens or if invalid arguments are specified. 
function setVehicleSirensOn () end

---@type fun(turretVehicle: vehicle, positionX: number, positionY: number): boolean Returns a true if a valid vehicle element and valid positions were passed
function setVehicleTurretPosition () end

--[[
* `ratio`: The ratio value, ranging from 0 (fully closed) to 1 (fully open).
* `time`: The number of milliseconds the door should take to reach the value you have specified. A value of 0 will change the door open ratio instantly.
]]
--[[
    Returns true if the door open ratio was successfully set
]]
---@see vehicleDoorId
---@type fun(theVehicle: vehicle, door: vehicleDoorId, ratio: number, time?: integer): boolean 
function setVehicleDoorOpenRatio () end

---@deprecated Use setElementAngularVelocity instead
---@type fun(theVehicle: vehicle, rx: number, ry: number, rz: number): boolean Returns true if it was succesful
function setVehicleTurnVelocity () end

--[[
    `frontLeft` or `frontLeft` or `rearLeft` or `rearRight` with **-1** means **No change** 
]]
---@see vehicleWheelStateId
---@type fun(theVehicle: vehicle, frontLeft: vehicleWheelStateId | -1, rearLeft?: vehicleWheelStateId | -1, frontRight?: vehicleWheelStateId | -1, rearRight?: vehicleWheelStateId | -1): boolean
function setVehicleWheelStates () end

--[[
* `red`: The amount of red from 0 to 255
* `green`: The amount of green from 0 to 255
* `blue`: The amount of blue from 0 to 255
]]
---@type fun(theVehicle: vehicle, red: integer, green: integer, blue: integer): boolean Returns true if vehicle's headlight color was set
function setVehicleHeadLightColor () end

--[[
    Supported vehicle ID's: 420, 438
]]
---@type fun(taxi: vehicle, lightState: boolean): boolean Returns true if the state was successfully set,
function setVehicleTaxiLightOn () end

--[[
* `red`: The amount of red from 0 to 255
* `green`: The amount of green from 0 to 255
* `blue`: The amount of blue from 0 to 255
* `alpha`: The alpha of the siren from 0 to 255
]]
--[[ 
    [Vehicles that are not supported](https://wiki.multitheftauto.com/wiki/Vehicle_IDs#Lua_table_of_vehicles_that_doesn't_support_siren_lights).
]]
---@type fun(theVehicle: vehicle, sirenPoint: integer, posX: number, posY: number, posZ: number, red: number, green: number, blue: number, alpha?: number, minAlpha?: number): boolean Returns true if the siren point was successfully changed on the vehicle
function setVehicleSirens () end

---@type fun(): r:integer, g:integer, b:integer, a:integer Returns 4 ints, indicating the color of the water. (RGBA) 
function getWaterColor () end

-- vertexIndex when there are 4 points
---@alias getWaterVertexPosition_quad fun(theWater: water, vertexIndex: 1 | 2 | 3 | 4): x: integer, y: integer, z: number
-- vertexIndex when there are 3 points
---@alias getWaterVertexPosition_triangle fun(theWater: water, vertexIndex: 1 | 2 | 3): x: integer, y: integer, z: number
---@type getWaterVertexPosition_quad | getWaterVertexPosition_triangle Returns the x, y and z coordinates of the specified vertex if successful
function getWaterVertexPosition () end

---@type fun(): number Returns the height as a float
function getWaveHeight () end

---@type fun(): boolean Returns true if water color was reset correctly
function resetWaterColor () end

--[[
* `red`: The red value of the water, from 0 to 255.
* `green`: The green value of the water, from 0 to 255.
* `blue`: The blue value of the water, from 0 to 255.
* `alpha`: The alpha (visibility) value of the water, from 0 to 255. Defaults to 200 if not declared.
]]
---@type fun(red: integer, green: integer, blue: integer, alpha?: integer): boolean Returns true if water color was set correctly
function setWaterColor () end

--- Default
---@alias setWaterLevel_default (fun(level: number, includeWaterFeatures?: boolean, includeWaterElements?: boolean, includeWorldSea?: boolean, includeOutsideWorld?: boolean): boolean)
--- Water element
---@alias setWaterLevel_element (fun(theWater: water, level: number): boolean)
--- Alternative clientside only syntax
---@alias setWaterLevel_alternativeClientSide (fun(x: number, y: number, z: number, level: number): boolean)
---@type setWaterLevel_default | setWaterLevel_element | setWaterLevel_alternativeClientSide Returns true if successful
function setWaterLevel () end

-- vertexIndex when there are 4 points
---@alias setWaterVertexPosition_quad fun(theWater: water, vertexIndex: 1 | 2 | 3 | 4, x: integer, y: integer, z: number): boolean Returns true if successful
-- vertexIndex when there are 3 points
---@alias setWaterVertexPosition_triangle fun(theWater: water, vertexIndex: 1 | 2 | 3, x: integer, y: integer, z: number): boolean Returns true if successful
--[[
    Note: X and Y positions will be changed to an even integer
]]
---@type setWaterVertexPosition_quad | setWaterVertexPosition_triangle Returns true if successful
function setWaterVertexPosition () end

--[[
`height`: A float between 0 and 100.
]]
---@type fun(height: number): boolean Returns a boolean value true or false that tells you if it was successful or not. 
function setWaveHeight () end

---@type fun(): boolean Returns true if water level was reset correctly
function resetWaterLevel () end

---@type fun(parentNode: xmlnode, tagName: string): xmlnode Returns the created xmlnode if successful
function xmlCreateChild () end

--[[
* `tagName`: This is the name of the child node you wish to find (case-sensitive).
* `index`: This is the 0-based index of the node you wish to find. For example, to find the 5th subnode with a particular name, you would use 4 as the index value. To find the first occurence, use 0.
]]
---@type fun(parent: xmlnode, tagName: string, index: integer): xmlnode | false Returns an xmlnode if the node was found, false otherwise. 
function xmlFindChild () end

---@type fun(node: xmlnode): {[string]: string|number} If successful, returns a table with as keys the names of the attributes and as values the corresponding attribute values. If the node has no attributes, returns an empty table. In case of failure, returns false. 
function xmlNodeGetAttributes () end

--[[
    If index isn't specified, returns a table containing all child nodes. If index is specified, returns the corresponding child node if it exists. If no nodes are found, it returns an empty table. Returns false in case of failure. 
]]
---@type (fun(parent: xmlnode, index: integer): xmlnode | false) | (fun(parent: xmlnode): xmlnode[])
function xmlNodeGetChildren () end

---@type fun(node: xmlnode): string Returns the tag name of the node if successful
function xmlNodeGetName () end

---@type fun(node: xmlnode): xmlnode | false Returns the parent node of the specified node if successful. Returns false if the specified node is the root node
function xmlNodeGetParent () end

---@type fun(node: xmlnode, name: string): boolean Returns true if successful
function xmlNodeSetName () end

---@type fun(thePed: ped): boolean Returns true if the ped is carrying a jetpack
function isPedWearingJetpack () end

-- Default
---@alias setVehicleHandling_default fun(theVehicle: element, property: vehicleHandlingProperty, value: any): boolean
-- Reset one property to model handling value
---@alias setVehicleHandling_resetOneModelHandling fun(theVehicle: element, property: vehicleHandlingProperty, value:nil, gta_default:false): boolean
-- Reset one property to GTA default value
---@alias setVehicleHandling_resetOneGtaHandling fun(theVehicle: element, property: vehicleHandlingProperty, value:nil, gta_default:true): boolean
-- Reset all properties to model handling value
---@alias setVehicleHandling_resetAllModelHandling fun(theVehicle: element, gta_default:false): boolean
-- Reset all properties to GTA default value
---@alias setVehicleHandling_resetAllGtaHandling fun(theVehicle: element, gta_default:true): boolean
---@see vehicleHandlingProperty
--[[ 
    Returns true if the handling was set successfully 
]]
---@type setVehicleHandling_default | setVehicleHandling_resetOneModelHandling | setVehicleHandling_resetOneGtaHandling | setVehicleHandling_resetAllModelHandling | setVehicleHandling_resetAllGtaHandling 
function setVehicleHandling () end

-- Without callback
---@alias encodeString_default fun(algorithm:  "rsa" | "tea" | "aes128" | string, input: string, options: table): string
-- With callback
---@alias encodeString_callback fun(algorithm: "rsa" | "tea" | "aes128" | string, input: string, options: table, callback: fun(result:string)): true
---@type encodeString_default | encodeString_callback
function encodeString () end

-- Without callback
---@alias decodeString_default fun(algorithm: "rsa" | "tea" | "aes128" | string, input: string, options: table): string
-- With callback
---@alias decodeString_callback fun(algorithm: "rsa" | "tea" | "aes128" | string, input: string, options: table, callback: fun(result:string)): true
---@type decodeString_default | decodeString_callback
function decodeString () end

---@see colShapeTypeId.
---@type fun(shape: colshape): colShapeTypeId Returns an integer of the type of the colshape.
function getColShapeType () end

---@type fun(theElement: element): rx:number, ry:number, rz:number Returns three floats describing the x, y and z rotation 
function getElementAngularVelocity () end

---@type fun(theElement: element, rx: number, ry: number, rz: number): boolean Returns true if it was succesful
function setElementAngularVelocity () end

---@type fun(x: number, y: number, z: number, range: number, elemType?: string, interior?: integer, dimension?: integer): element[] Returns a table containing all the elements of the specified type within range. Returns an empty table if there are no elements within range.
function getElementsWithinRange () end

---@type fun(theShape: colshape, posX: number, posY: number, posZ: number): boolean Returns true if the position is inside the colshape
function isInsideColShape () end

--[[
    `speed`: a float containing the speed between 0.0–1.0 you want to apply to the animation. This limitation may be adjusted in the future, so do not provide speeds outside this boundary. The limit is now 0.0 to 10.0.
]]
---@type fun(thePed: ped, anim?: pedAnimName, speed?: number): boolean Returns true if successful
function setPedAnimationSpeed () end

---@type fun(shape: colshape, fX: number, fY: number, index?: integer): boolean Returns true if the polygon was changed
function addColPolygonPoint () end

---@type fun(shape: colshape): radius:number Returns a float containing the radius of the colshape
function getColShapeRadius () end

-- Cuboid
---@alias getColShapeSize_cuboid fun(shape: colshape): width:number, depth:number, height:number
-- Rectangle
---@alias getColShapeSize_rectangle fun(shape: colshape): width:number, height:number
-- Tube
---@alias getColShapeSize_tube fun(shape: colshape): height:number
---@type getColShapeSize_cuboid | getColShapeSize_rectangle | getColShapeSize_tube
function getColShapeSize() end

---@type fun(shape: colshape, radius: number): boolean Returns true if the radius was changed
function setColShapeRadius () end

-- Cuboid
---@alias setColShapeSize_cuboid fun(shape: colshape, width: number, depth: number, height: number): boolean
-- Rectangle
---@alias setColShapeSize_rectangle fun(shape: colshape, width: number, height: number): boolean
-- Tube
---@alias setColShapeSize_tube fun(shape: colshape, height: number): boolean
---@type setColShapeSize_cuboid | setColShapeSize_rectangle | setColShapeSize_tube Returns true if the size was changed
function setColShapeSize () end

---@type fun(theElement: element, key: string, inherit?: boolean): boolean This function returns true if the element contains element data for key, or false if the element doesn't exist or there is no data associated with the key. 
function hasElementData () end

---@type (fun(): {[1]: string, [2]: resource}[]) | (fun(theResource: resource): string ) Returns a table containing all the commands of the given resource or a table with subtables containing the command and theResource pointer.
function getCommandHandlers () end

---@type fun(thePed: ped): fightingStyleId Returns the ped's current fighting style as an integer ID, false if it fails to retrieve a value. 
function getPedFightingStyle () end

--[[
    `armor`: the amount of armor you want to set on the ped. Valid values are from 0 to 100.
]]
---@type fun(thePed: ped, armor: number): boolean Returns true if the armor was changed succesfully. Returns false if an invalid ped was specified, or the armor value specified is out of acceptable range.
function setPedArmor () end

---@see fightingStyleId
---@type fun(thePed: ped, style: fightingStyleId): boolean Returns true in case of success
function setPedFightingStyle () end

---@type fun(thePickup: pickup, thePlayer: player): boolean
function usePickup () end

--- Serverside
---@alias setPlayerHudComponentVisible_server fun(thePlayer: player, component: hudComponent, show: boolean): boolean
--- Clientside
---@alias setPlayerHudComponentVisible_client fun(component: hudComponent, show: boolean): boolean
---@type setPlayerHudComponentVisible_server | setPlayerHudComponentVisible_client Returns true if the component was shown or hidden succesfully
function setPlayerHudComponentVisible () end

---@type fun(theResource?: resource): request[] Returns a table with all requests
function getRemoteRequests () end

---@type fun(theRequest: request, postDataLength?: integer, includeHeaders?: boolean): {bytesReceived: number, bytesTotal: number, currentAttempt: integer, type: "fetch" | "call", url: string, resource: resource, queue: string, method: "GET" | "POST", connectionAttempts: integer, connectionTimeout: integer, postData: string, headers: string} | false Returns a table when valid, false otherwise
function getRemoteRequestInfo () end

---@type fun(theRequest: request): boolean Returns true on success, false when invalid request was provided 
function abortRemoteRequest () end

---@type fun(reference: integer): any Returns mixed if the reference were valid. Returns false if the reference were invalid. 
function deref () end

---@type fun(): boolean Returns true or false if OOP is enabled or not.
function isOOPEnabled () end

---@type fun(objectToReference: any): integer Returns an int if the reference were successfully created. 
function ref () end

---@type fun(red: integer, green: integer, blue: integer, alpha?: integer): color Returns a single value representing the color. 
function tocolor () end

---@type fun(xmlString: string): xmlnode | false Returns the root xmlnode object of an xml string if successful, or false otherwise (invalid XML string). 
function xmlLoadString () end

---@type fun(theElement: element, theMatrix: table): boolean Returns true if the matrix was set succesfully
function setElementMatrix () end

---@type fun(shape: colshape): table Returns a table of coordinates, each coordinate being a table containing the x and y position of a bound point
function getColPolygonPoints () end

---@type fun(shape: colshape, index: integer): x:number, y: number Returns two floats, x and y, indicating the position of the point.
function getColPolygonPointPosition () end

---@type fun(shape: colshape, index: integer): boolean Returns true if the polygon was changed
function removeColPolygonPoint () end

---@type fun(shape: colshape, index: integer, fX: number, fY: number): boolean Returns true if the polygon was changed
function setColPolygonPointPosition () end

--- See [vehicle variants](https://wiki.multitheftauto.com/wiki/Vehicle_variants) for the correct variants. Not all variants are available depending on the vehicle.
---@type fun(theVehicle: vehicle, variant1?: 0 | 1 | 2 | 3 | 4 | 5, variant2?: 0 | 1 | 2 | 3 | 4 | 5): boolean Returns true if the vehicle variants were successfully set, false otherwise (the specified vehicle doesn't exist or the specified variants are invalid). 
function setVehicleVariant () end

--[[
Returns
* On server this returns a boolean, whether the transfer box should be visible during downloads or not.
* On client this returns a boolean, whether the transfer box should be visible or not at the time of invocation. 
]]
---@type fun(): boolean
function isTransferBoxVisible () end

---@type fun(visible: boolean): boolean Returns true if the visibility was set successfully
function setTransferBoxVisible () end

---@type fun(shape: colshape, floor: number, ceil: number): boolean Returns true if the polygon was changed
function setColPolygonHeight () end

---@type fun(): floor:number, ceil:number Returns two floats, indicating the floor and ceiling of the colshape height
function getColPolygonHeight () end

--- Since 1.6.0 r21765 also available as a server-side function
---@type fun(theObject: object, breakable: boolean): boolean Returns true if the object is now breakable. false if it can't or if invalid arguments are passed.
function setObjectBreakable () end

---@param ... integer
local char = function ( ... ) end
utf8 = {
    char = char
}