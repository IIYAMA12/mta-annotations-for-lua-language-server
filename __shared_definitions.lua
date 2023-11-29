---@meta sharedConfigs
---@diagnostic disable: missing-return

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

---@type fun(model: integer, x: number, y: number, z: number, rx?: number, ry?: number, rz?: number, numberplate?: string, bDirection?: boolean, variant1?: integer, variant2?: integer): vehicle
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

triggerEvent()

---@type fun(theElement: element): integer
function getElementDimension () end

---@type fun(theElement: element, xPosOffset?:number, yPosOffset?: number, zPosOffset?: number, xRotOffset?: number, yRotOffset?: number, zRotOffset?: number): boolean
function setElementAttachedOffsets () end

---@type fun(theElement: element, speedX: number, speedY: number, speedZ: number): boolean
function setElementVelocity () end

---@type fun(eventName: string, attachedTo: element): table
function getEventHandlers () end

---@type fun(filePath: string): boolean
function fileExists () end

---@type fun(theMarker: marker): number, number, number
function getMarkerTarget () end

--- Player argument is required serverside
---@type (fun(handle: integer):boolean) | (fun(thePlayer: player, handle: integer):boolean)
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

---@type fun(modelid: integer, x: number, y: number, z: number, rx:number, ry?: number, rz?: number, isLowLOD?: boolean): object
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

---@type fun(theElement: element): string
function getElementType () end

---@type fun(theElement: element, theAttachToElement: element, xPosOffset?:number, yPosOffset?: number, zPosOffset?: number, xRotOffset?: number, yRotOffset?: number, zRotOffset?: number): boolean
function attachElements () end

---@type fun(thePed: ped, clothesType: integer, clothesTexture?: string, clothesModel?: string): boolean
function removePedClothes () end

---@type fun(theElement: element, interior: integer, x?: number, y?: number, z?: number): boolean
function setElementInterior () end

---@type fun(parent: element, theType?: string): table
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

---@type fun(weaponid: integer): integer
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

---@type fun(filePath: string, readOnly?: boolean): file
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

-- Serverside has optional argument `synced`
---@type (fun(modelid: integer, x: number, y: number, z: number, rot?: number): ped)|(fun(modelid: integer, x: number, y: number, z?: number, rot?: number, synced?: boolean): ped)
function createPed () end

---@type fun(thePed: ped, block?: string, anim?: string, time?: integer, loop?: boolean, updatePosition?: boolean, interruptable?: boolean, freezeLastFrame?: boolean, blendTime?: integer, retainPedState?: boolean): boolean
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

---@type fun(text: string, level:integer, red?: integer, green?: integer, blue?: integer): boolean
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

---@type fun(theVehicle: vehicle, upgrade: integer): boolean
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

---@type fun(theType: string, startat?: element): table
function getElementsByType () end

---@type fun(parent: element): integer
function getElementChildrenCount () end

---@type fun(theElement: element, rotOrder?: string): number, number, number
function getElementRotation () end

---@type fun(theElement: element): integer
function getElementInterior () end

---@type fun(theElement: element): string
function getElementID () end

---@type fun(): element
function getRootElement () end

---@type fun(theElement: element): boolean
function isElementCallPropagationEnabled () end

---@type fun(name: string): integer
function getWeaponIDFromName () end

---@type fun(theElement: element): number, number, number
function getElementPosition () end

---@type fun(thePed: ped): boolean
function isPedDoingGangDriveby () end

---@type fun(theElement: element): boolean
function isElementFrozen () end

---@type fun(theElement: element): boolean
function isElementInWater () end

---@type fun(thePed: ped): boolean
function isPedOnGround () end

---@type fun(theValue: any): boolean
function isElement () end

---@type fun(): table
function getValidPedModels () end

---@type fun(thePed: ped): integer
function getPedOccupiedVehicleSeat () end

---@type fun(thePed: ped): element
function getPedTarget () end

---@type fun(thePed: ped, stat: integer): number
function getPedStat () end

---@type fun(theElement: element): element
function getLowLODElement () end

---@type fun(theElement: element): number, number, number
function getElementVelocity () end

---@type fun(theElement: element): boolean
function isElementDoubleSided () end

---@type fun(theElement: element, theShape: colshape): boolean
function isElementWithinColShape () end

---@type fun(theElement: element, enabled: boolean): boolean
function setElementCollisionsEnabled () end

---@type fun(theElement: element): boolean
function isElementLowLOD () end

---@type fun(theElement: element, alpha: integer): boolean
function setElementAlpha () end

---@type fun(theElement: element, x: number, y: number, z: number, warp?: boolean): boolean
function setElementPosition () end

---@type fun(theElement: element, parent: element): boolean
function setElementParent () end

---@type fun(theElement: element, newHealth: number): boolean
function setElementHealth () end

---@type fun(theElement: element, rotX: number, rotY: number, rotZ: number, rotOrder?: string, conformPedRotation?: boolean): boolean
function setElementRotation () end

---@type fun(thePed: ped): boolean
function isPedHeadless () end

---@type fun(theElement: element, enable: boolean): boolean
function setElementDoubleSided () end

---@type fun(theElement: element, freezeStatus: boolean): boolean
function setElementFrozen () end

---@type fun(theElement: element, model: integer): boolean
function setElementModel () end

---@type fun(): number
function getJetpackMaxHeight () end

---@type fun(thePlayer: player): team
function getPlayerTeam () end

---@type fun(theXMLNode: xmlnode, value: string, setCDATA?: boolean): boolean
function xmlNodeSetValue () end

---@type fun(rootNode: xmlnode): boolean
function xmlSaveFile () end

---@type fun(thePlayer: player): boolean
function isPlayerMapForced () end

---@type fun(): number
function getFarClipDistance () end

---@type fun(): boolean
function detonateSatchels () end

---@type fun(thePed: ped, headState: boolean): boolean
function setPedHeadless () end

---@type fun(): boolean
function areTrafficLightsLocked () end

---@type fun(theTeam: team): table
function getPlayersInTeam () end

---@type fun(weaponNameOrweaponID: string | integer, weaponSkill: string, property: string): integer
function getWeaponProperty () end

---@type fun(weaponNameOrweaponID: string | integer, weaponSkill: string, property: string): integer
function getOriginalWeaponProperty () end

---@type fun(thePlayer: player): integer, integer, integer
function getPlayerNametagColor () end

---@type fun(thePlayer: player, forceOn: boolean): boolean
function forcePlayerMap () end

---@type fun(): integer
function getMinuteDuration () end

---@type fun(node: xmlnode): boolean
function xmlUnloadFile () end

---@type fun(theVehicle: vehicle, theTrailer?: vehicle): boolean
function detachTrailerFromVehicle () end

---@type fun(filePath: string, rootNodeName: string): xmlnode
function xmlCreateFile () end

---@type fun(thePlayer: player): integer
function getPlayerPing () end

---@type fun(thePed: ped, isOnFire: boolean): boolean
function setPedOnFire () end

---@type fun(thePlayer: player): integer | boolean
function getPlayerMoney () end

---@type fun(thePlayer: player, amount: integer, instant?: boolean): boolean
function setPlayerMoney () end

---@type fun(theElement: element, dimension: integer): boolean
function setElementDimension () end

---@type fun(thePed: ped, theVehicle: vehicle, integerseat): boolean
function warpPedIntoVehicle () end

---@type fun(vehicleToBlow: vehicle, explode?: boolean): boolean
function blowVehicle () end

---@type fun(thePed: ped): number
function getPedArmor () end

---@type fun(thePed: ped): boolean
function isPedDead () end

---@type fun(theVehicle: vehicle, theTrailer: vehicle): boolean
function attachTrailerToVehicle () end

---@type fun(velocityX: number, velocityY: number, velocityZ: number): boolean
function setWindVelocity () end

---@type fun(aRed: integer, aGreen: integer, aBlue: integer, bRed: integer, bGreen: integer, bBlue: integer): boolean
function setSunColor () end

---@type fun(): integer, integer, integer, integer, integer, integer
function getSunColor () end

---@type fun(): number
function getFogDistance () end

---@type fun(): boolean
function resetSunColor () end

---@type fun(level: number): boolean
function setRainLevel () end

---@type fun(distance: number): boolean
function setFogDistance () end

---@type fun(): integer
function getMoonSize () end

---@type fun(nodeToCopy: xmlnode, newFilePath: string): xmlnode
function xmlCopyFile () end

---@type fun(thePed: ped): integer
function getPedWalkingStyle () end

---@type fun(resourceName: string): resource
function getResourceFromName () end

---@type fun(thePlayer: player, amount: integer): boolean
function givePlayerMoney () end

--- Player argument is required serverside
---@type (fun(): number, number, number, number, number, number, number, number) | (fun(thePlayer: player): number, number, number, number, number, number, number, number)
function getCameraMatrix () end

---@type fun(thePlayer: player): string
function getPlayerNametagText () end

---@type fun(thePickup: pickup): integer
function getPickupAmmo () end

---@type fun(theTeam: team): integer
function countPlayersInTeam () end

---@type fun(thePlayer: player): boolean
function isPlayerNametagShowing () end

---@type fun(x: number, y: number, z: number, theType: integer, amountOrWeaponOrModel: integer, integerrespawnTime, ammo?: integer): pickup
function createPickup () end

---@type fun(): number
function getAircraftMaxVelocity () end

---@type fun(playerName: string): player
function getPlayerFromName () end

---@type fun(theTeam: team): integer, integer, integer
function getTeamColor () end

---@type fun(): integer, integer, integer, integer, integer, integer, integer, integer, boolean
function getHeatHaze () end

---@type fun(weatherID: integer): boolean
function setWeatherBlended () end

---@type fun(garageID: integer, open: boolean): boolean
function setGarageOpen () end

---@type fun(): number
function getGameSpeed () end

---@type fun(thePickup: pickup): integer
function getPickupType () end

---@type fun(theBlip: blip, icon: integer): boolean
function setBlipIcon () end

---@type fun(thePlayer: player): integer
function getCameraInterior () end

---@type fun(): integer, integer
function getWeather () end

---@type fun(intensity: integer, randomShift?: integer, speedMin?: integer, speedMax?: integer, scanSizeX?: integer, scanSizeY?: integer, renderSizeX?: integer, renderSizeY?: integer, bShowInside?: boolean): boolean
function setHeatHaze () end

---@type fun(thePlayer: player, target?: player): boolean
function setCameraTarget () end

---@type fun(thePlayer: player, positionX: number, positionY: number, positionZ: number, lookAtX?: number, lookAtY?: number, lookAtZ?: number, roll?: number, fov?: number): boolean
function setCameraMatrix () end

---@type fun(var: any, options?: table): string
function inspect () end

---@type fun(thePlayer: player): element
function getCameraTarget () end

---@type fun(thePlayer: player, theKey: string): table
function getFunctionsBoundToKey () end

---@type fun(thePlayer: player, control: string): boolean
function isControlEnabled () end

---@type fun(weatherID: integer): boolean
function setWeather () end

---@type fun(value: number): boolean
function setGameSpeed () end

---@type fun(res?: resource): table|false
function getResourceExportedFunctions () end

---@type fun(toggle: boolean): boolean
function setTrafficLightsLocked () end

---@type fun(size: integer): boolean
function setMoonSize () end

---@type fun(): boolean
function resetWindVelocity () end

---@type fun(theVehicle: vehicle, upgrade: integer): boolean
function removeVehicleUpgrade () end

---@type fun(): table
function getNetworkUsageData () end

---@type fun(thePlayer: player, enabled: boolean, gtaControls?: boolean, mtaControls?: boolean): boolean
function toggleAllControls () end

---@type fun(...: any): boolean
function iprint () end

---@type fun(x1: number, y1: number, x2: number, y2: number): number
function getDistanceBetweenPoints2D () end

---@type fun(milliseconds: integer): boolean
function setMinuteDuration () end

---@type fun(modelID: integer, radius: number, x: number, y: number, z: number, iInterior?: integer): boolean
function restoreWorldModel () end

---@type fun(modelID: integer, radius: number, x: number, y: number, z: number, interior?: integer): boolean
function removeWorldModel () end

---@type fun(): boolean
function resetFogDistance () end

---@type fun(thePlayer: player, control: string, enabled: boolean): boolean
function toggleControl () end

---@type fun(): boolean
function resetFarClipDistance () end

---@type fun(distance: number): boolean
function setFarClipDistance () end

---@type fun(x1: number, y1: number, z1: number, x2: number, y2: number, z2: number): number
function getDistanceBetweenPoints3D () end

---@type fun(theColor: string): integer, integer, integer, integer
function getColorFromString () end

---@type fun(garageID: integer): boolean
function isGarageOpen () end

---@type fun(): table
function getNetworkStats () end

---@type fun(hour: integer, minute: integer): boolean
function setTime () end

---@type fun(): number
function getRainLevel () end

---@type fun(x1: number, y1: number, z1: number, x2: number, y2: number, z2: number, fProgress: number, strEasingType: string, numberfEasingPeriod?: number, fEasingAmplitude?: number, fEasingOvershoot?: number): number, number, number
function interpolateBetween () end

---@type fun(Size: integer): boolean
function setSunSize () end

---@type fun(category: string, options?: string, filter?: string): table, table
function getPerformanceStats () end

---@type fun(fProgress: number, strEasingType: string, fEasingPeriod: number, fEasingAmplitude: number, fEasingOvershoot: number): number
function getEasingValue () end

---@type fun(thePlayer: player, interior: integer): boolean
function setCameraInterior () end

---@type fun(): integer, integer
function getTime () end

---@type fun(topRed?: integer, topGreen?: integer, topBlue?: integer, bottomRed?: integer, bottomGreen?: integer, bottomBlue?: integer): boolean
function setSkyGradient () end

---@type fun(theTimer: timer): integer, integer, integer
function getTimerDetails () end

---@type fun(seconds?: integer, localTime?: boolean): table
function getRealTime () end

---@type fun(): integer
function getTickCount () end

---@type fun(state: integer): boolean
function setTrafficLightState () end

---@type fun(theMarker: marker): string
function getMarkerIcon () end

---@type fun(): number
function getGravity () end

---@type fun(enabled: boolean): boolean
function setInteriorSoundsEnabled () end

---@type fun(x: number, y: number, z: number, citiesonly?: boolean): string
function getZoneName () end

---@type fun(): boolean
function resetRainLevel () end

---@type fun(): number
function getSunSize () end

---@type fun(data: string): string
function base64Encode () end

---@type fun(theResource?: resource): element
function getResourceRootElement () end

---@type fun(): boolean
function resetSunSize () end

---@type fun(theRadarArea: radararea, r: integer, g: integer, b: integer, a: integer): boolean
function setRadarAreaColor () end

---@type fun(theRadarArea: radararea, flash: boolean): boolean
function setRadarAreaFlashing () end

---@type fun(theRadararea: radararea): number, number
function getRadarAreaSize () end

---@type fun(): table
function getVersion () end

---@type fun(): integer
function getFPSLimit () end

---@type fun(json: string): unknown
function fromJSON () end

---@type fun(theRadararea: radararea): boolean
function isRadarAreaFlashing () end

---@type fun(theRadararea: radararea, x: number, y: number): boolean
function setRadarAreaSize () end

---@type fun(thePed: ped, weaponSlot: integer): boolean
function setPedWeaponSlot () end

---@type fun(theTime): table
function getTimers () end

---@type fun(): boolean
function getOcclusionsEnabled () end

---@type fun(res: resource): string
function getResourceName () end

---@type fun(theRadararea: radararea): integer, integer, integer, integer
function getRadarAreaColor () end

---@type fun(text: string, tokenNumber: integer, separatingCharacter: string | integer): string
function gettok () end

---@type fun(): integer, integer, integer
function getWindVelocity () end

---@type fun(theArea: radararea, posX: number, posY: number): boolean
function isInsideRadarArea () end

---@type fun(theResource: resource): string
function getResourceState () end

---@type fun(): boolean
function restoreAllWorldModels () end

---@type fun(): resource
function getThisResource () end

---@type fun(commandName: string, handlerFunction: function, restricted?: boolean, caseSensitive?: boolean): boolean
function addCommandHandler () end

---@type fun(filePath: string): xmlnode
function getResourceConfig () end

---@type fun(enabled: boolean): boolean
function setOcclusionsEnabled () end

---@type fun(velocity: number): boolean
function setAircraftMaxVelocity () end

---@type fun(level: number): boolean
function setGravity () end

---@type fun(URL: string, queueName?: string, connectionAttempts: integer, connectTimeout: integer, callbackFunction: function, postData?: string, postIsBinary?: boolean, ...: any): boolean
function fetchRemote () end

---@type fun(commandName: string, thePlayer: player, args?: string): boolean
function executeCommandHandler () end

---@type fun(): boolean
function resetMoonSize () end

---@type fun(thePlayer: player, weapon: integer, totalAmmo: integer, ammoInClip?: integer): boolean
function setWeaponAmmo () end

---@type fun(theResource: resource): element
function getResourceDynamicElementRoot () end

---@type fun(): boolean
function resetHeatHaze () end

---@type fun(): integer
function getTrafficLightState () end

---@type fun(): boolean
function resetSkyGradient () end

---@type fun(enabled: boolean): boolean
function setCloudsEnabled () end

---@type fun(): integer, integer, integer, integer, integer, integer
function getSkyGradient () end

---@type fun(weaponNameOrWeaponID: string | integer, weaponSkill: string, property: string, theValue: integer | number): boolean
function setWeaponProperty () end

---@type fun(Height: number): boolean
function setAircraftMaxHeight () end

---@type fun(Height: number): boolean
function setJetpackMaxHeight () end

---@type fun(theBlip: blip): number
function getBlipVisibleDistance () end

---@type fun(theBlip: blip, theDistance: number): boolean
function setBlipVisibleDistance () end

---@type fun(fX: number, fY: number, fX1: number, fY1: number, fX2: number, fY2: number, fX3: number, fY3: number, ...): colshape
function createColPolygon () end

--- Player argument is required serverside
---@type (fun(handle: integer): table) | (fun(thePlayer: player, handle: integer): table)
function getLatentEventStatus () end

---@type fun(thePlayer: player, handle: integer): boolean
function cancelLatentEvent () end

---@type fun(theFile: file): integer
function fileGetPos () end

---@type fun(thePlayer: player, theFunction: function): string
function getKeyBoundToFunction () end

---@type fun()
function call () end

---@type fun(commandName: string, handler?: function): boolean
function removeCommandHandler () end

---@type fun(fpsLimit: integer): boolean
function setFPSLimit () end

---@type fun(value: any, compact?: boolean, prettyType: string): string
function toJSON () end

---@type fun(fProgress: number, strEasingType: string, fEasingPeriod?: number, fEasingAmplitude?: number, fEasingOvershoot?: number): number
function getEasingValue () end

---@type fun(integerseconds, localTime?: boolean): table
function getRealTime () end

---@type fun(algorithm: string, dataToHash: string): string
function hash () end

---@type fun(theTimer: timer): boolean
function killTimer () end

---@type fun(theTimer: timer): boolean
function resetTimer () end

---@type fun(theFunction: function, timeInterval: integer, timesToExecute: integer, ...: any ): timer
function setTimer () end

---@type fun(stringToSplit: string, separatingChar: string | integer): table
function split () end

---@type fun(theTimer: timer): boolean
function isTimer () end

---@type fun(str: string): string
function md5 () end

---@type fun(str: string): string
function sha256 () end

---@type fun(text: string, key: string): string
function teaEncode () end

---@type fun(data: string, key: string): string
function teaDecode () end

---@type fun(characterCode: integer): string
function utfChar () end

---@type fun(theString: string): integer
function utfCode () end

---@type fun(theString: string): integer
function utfLen () end

---@type fun(theString: string, position: integer): integer
function utfSeek () end

---@type fun(theString: string, Start: integer, End: integer): string
function utfSub () end

---@type fun(subject: string, pattern: string, flags?: integer | string): boolean
function pregFind () end

---@type fun(subject: string, pattern: string, replacement: string, flags?: integer | string): string
function pregReplace () end

---@type fun(base: string, pattern: string, flags?: integer | string, maxResults?: integer): table
function pregMatch () end

---@type fun(var1: uint, var2: uint, ...): uint
function bitAnd () end

---@type fun(var: uint): uint
function bitNot () end

---@type fun(var1: uint, var2: uint, ...): uint
function bitOr () end

---@type fun(var1: uint, var2: uint, ...): uint
function bitXor () end

---@type fun(var1: uint, var2: uint, ...): boolean
function bitTest () end

---@type fun(value: integer, n: integer): integer
function bitLRotate () end

---@type fun(value: integer, n: integer): integer
function bitRRotate () end

---@type fun(value: integer, n: integer): integer
function bitLShift () end

---@type fun(value: integer, n: integer): integer
function bitRShift () end

---@type fun(value: integer, n: integer): integer
function bitArShift () end

---@type fun(var: uint, field: integer, width?: integer): uint
function bitExtract () end

---@type fun(var: uint, replaceValue: uint, field: integer, width: integer): uint
function bitReplace () end

---@type fun(hookType: string, callbackFunction: function, nameList?: table): boolean
function addDebugHook () end

---@type fun(hookType: string, callbackFunction: function): boolean
function removeDebugHook () end

---@type fun(vehicleToCheck: vehicle): boolean
function isTrainDerailable () end

---@type fun(vehicleToCheck: vehicle): boolean
function isTrainDerailed () end

---@type fun(theVehicle: vehicle): boolean
function isVehicleBlown () end

---@type fun(taxi: vehicle): boolean
function isVehicleTaxiLightOn () end

---@type fun(theVehicle: vehicle): boolean
function isVehicleDamageProof () end

---@type fun(theVehicle: vehicle): boolean
function isVehicleFuelTankExplodable () end

---@type fun(theVehicle: vehicle): boolean
function isVehicleLocked () end

---@type fun(theVehicle: vehicle): boolean
function isVehicleOnGround () end

---@type fun(train: vehicle): integer
function getTrainTrack () end

---@type fun(train: vehicle): number
function getTrainPosition () end

---@type fun(theVehicle: vehicle): integer, integer, integer, integer
function getVehicleColor () end

---@type fun(theVehicle: vehicle, integerslot): table
function getVehicleCompatibleUpgrades () end

---@type fun(theVehicle: vehicle): player
function getVehicleController () end

---@type fun(theVehicle: vehicle, door: integer): integer
function getVehicleDoorState () end

---@type fun(theVehicle: vehicle): boolean
function getVehicleEngineState () end

---@type fun(theVehicle: vehicle): boolean
function getVehicleLandingGearDown () end

---@type fun(theVehicle: vehicle, light: integer): integer
function getVehicleLightState () end

---@type fun(modelIDOrTheVehicle: integer | vehicle): integer
function getVehicleMaxPassengers () end

---@type fun(theVehicle: vehicle): string
function getVehicleName () end

---@type fun(theVehicle: vehicle, integerseat): player
function getVehicleOccupant () end

---@type fun(theVehicle: vehicle): table
function getVehicleOccupants () end

---@type fun(theVehicle: vehicle): integer
function getVehicleOverrideLights () end

---@type fun(theVehicle: vehicle): integer
function getVehiclePaintjob () end

---@type fun(theVehicle: vehicle, panel: integer): integer
function getVehiclePanelState () end

---@type fun(theVehicle: vehicle): string
function getVehiclePlateText () end

---@type fun(theVehicle: vehicle): boolean
function getVehicleSirensOn () end

---@type fun(theVehicle: vehicle): vehicle
function getVehicleTowedByVehicle () end

---@type fun(theVehicle: vehicle): vehicle
function getVehicleTowingVehicle () end

---@type fun(theVehicle: vehicle): number, number, number
function getVehicleTurnVelocity () end

---@type fun(turretVehicle: vehicle): number, number
function getVehicleTurretPosition () end

---@type fun(theVehicle: vehicle): string
function getVehicleType () end

---@type fun(theVehicle: vehicle, slot: integer): integer
function getVehicleUpgradeOnSlot () end

---@type fun(theVehicle: vehicle): table
function getVehicleUpgrades () end

---@type fun(slotOrUpgrade: integer): string
function getVehicleUpgradeSlotName () end

---@type fun(theVehicle: vehicle): integer, integer, integer, integer
function getVehicleWheelStates () end

---@type fun(theVehicle: vehicle, door: integer): number
function getVehicleDoorOpenRatio () end

---@type fun(theVehicle: element): table
function getVehicleHandling () end

---@type fun(theVehicle: vehicle): integer, integer, integer
function getVehicleHeadLightColor () end

---@type fun(name: string): integer
function getVehicleModelFromName () end

---@type fun(model: integer): string
function getVehicleNameFromModel () end

---@type fun(theVehicle: vehicle): integer, integer
function getVehicleVariant () end

---@type fun(theVehicle: vehicle): table
function getVehicleSirenParams () end

---@type fun(theVehicle: vehicle): table
function getVehicleSirens () end

---@type fun(derailableVehicle: vehicle, derailable: boolean): boolean
function setTrainDerailable () end

---@type fun(vehicleToDerail: vehicle, derailed: boolean): boolean
function setTrainDerailed () end

---@type fun(train: vehicle, clockwise: boolean): boolean
function setTrainDirection () end

---@type fun(train: vehicle, speed: number): boolean
function setTrainSpeed () end

---@type fun(train: vehicle, track: integer): boolean
function setTrainTrack () end

---@type fun(train: vehicle, position: number): boolean
function setTrainPosition () end

---@type fun(theVehicle: vehicle, r1: integer, g1: integer, b1: integer, r2?: integer, g2?: integer, b2?: integer, r3?: integer, g3?: integer, b3?: integer, r4?: integer, g4?: integer, b4?: integer): boolean
function setVehicleColor () end

---@type fun(theVehicle: vehicle, damageProof: boolean): boolean
function setVehicleDamageProof () end

---@type fun(theVehicle: vehicle, door: integer, state: integer, spawnFlyingComponent?: boolean): boolean
function setVehicleDoorState () end

---@type fun(theVehicle: vehicle, state: boolean): boolean
function setVehicleDoorsUndamageable () end

---@type fun(theVehicle: vehicle, engineState: boolean): boolean
function setVehicleEngineState () end

---@type fun(theVehicle: vehicle, explodable: boolean): boolean
function setVehicleFuelTankExplodable () end

---@type fun(theVehicle: vehicle, gearState: boolean): boolean
function setVehicleLandingGearDown () end

---@type fun(theVehicle: vehicle, light: integer, state: integer): boolean
function setVehicleLightState () end

---@type fun(theVehicle: vehicle, locked: boolean): boolean
function setVehicleLocked () end

---@type fun(theVehicle: vehicle, value: integer): boolean
function setVehicleOverrideLights () end

---@type fun(theVehicle: vehicle, value: integer): boolean
function setVehiclePaintjob () end

---@type fun(theVehicle: vehicle, panelID: integer, state: integer): boolean
function setVehiclePanelState () end

---@type fun(theVehicle: element, numberplate: string): boolean
function setVehiclePlateText () end

---@type fun(theVehicle: vehicle, sirensOn: boolean): boolean
function setVehicleSirensOn () end

---@type fun(turretVehicle: vehicle, positionX: number, positionY: number): boolean
function setVehicleTurretPosition () end

---@type fun(theVehicle: vehicle, door: integer, ratio: number, time?: integer): boolean
function setVehicleDoorOpenRatio () end

---@type fun(theVehicle: vehicle, rx: number, ry: number, rz: number): boolean
function setVehicleTurnVelocity () end

---@type fun(theVehicle: vehicle, frontLeft: integer, rearLeft?: integer, frontRight?: integer, rearRight?: integer): boolean
function setVehicleWheelStates () end

---@type fun(theVehicle: vehicle, red: integer, green: integer, blue: integer): boolean
function setVehicleHeadLightColor () end

---@type fun(taxi: vehicle, LightState: boolean): boolean
function setVehicleTaxiLightOn () end

---@type fun(theVehicle: vehicle, sirenPoint: integer, posX: number, posY: number, posZ: number, red: number, green: number, blue: number, alpha?: number, minAlpha?: number): boolean
function setVehicleSirens () end

---@type fun(): integer, integer, integer, integer
function getWaterColor () end

---@type fun(theWater: water, vertexIndex: integer): integer, integer, number
function getWaterVertexPosition () end

---@type fun(): number
function getWaveHeight () end

---@type fun(): boolean
function resetWaterColor () end

---@type fun(red: integer, green: integer, blue: integer, integeralpha): boolean
function setWaterColor () end

---@type (fun(theWater: water, level: number)) | (fun(level: number, includeWaterFeatures?: boolean, includeWaterElements?: boolean, includeWorldSea?: boolean, includeOutsideWorld?: boolean): boolean)
function setWaterLevel () end

---@type fun(theWater: water, vertexIndex: integer, x: integer, y: integer, z: number): boolean
function setWaterVertexPosition () end

---@type fun(height: number): boolean
function setWaveHeight () end

---@type fun(): boolean
function resetWaterLevel () end

---@type fun(parentNode: xmlnode, tagName: string): xmlnode
function xmlCreateChild () end

---@type fun(parent: xmlnode, tagName: string, index: integer): xmlnode
function xmlFindChild () end

---@type fun(node: xmlnode): table
function xmlNodeGetAttributes () end

---@type fun(parent: xmlnode, integerindex): table|xmlnode
function xmlNodeGetChildren () end

---@type fun(node: xmlnode): string
function xmlNodeGetName () end

---@type fun(node: xmlnode): xmlnode
function xmlNodeGetParent () end

---@type fun(node: xmlnode, name: string): boolean
function xmlNodeSetName () end

---@type fun(thePed: ped): boolean
function isPedWearingJetpack () end

---@type fun(theVehicle: element, property: string, value: any): boolean
function setVehicleHandling () end

---@type fun(algorithm: string, input: string, options: table, callback?: function): string
function encodeString () end

---@type fun(algorithm: string, input: string, options: table, callback?: function): string
function decodeString () end

---@type fun(shape: colshape): integer
function getColShapeType () end

---@type fun(theElement: element): boolean
function getElementAngularVelocity () end

---@type fun(theElement: element, rx: number, ry: number, rz: number): boolean
function setElementAngularVelocity () end

---@type fun(x: number, y: number, z: number, range: number, elemType?: string, dimension?: integer): table
function getElementsWithinRange () end

---@type fun(theShape: colshape, posX: number, posY: number, posZ: number): boolean
function isInsideColShape () end

---@type fun(thePed: ped, anim?: string, speed?: number): boolean
function setPedAnimationSpeed () end

---@type fun(shape: colshape, fX: number, fY: number, index?: integer): boolean
function addColPolygonPoint () end

---@type fun(shape: colshape): number
function getColShapeRadius () end

---@type fun(shape: colshape): number, number, number
function getColShapeSize () end

---@type fun(shape: colshape, radius: number): boolean
function setColShapeRadius () end

---@type fun(shape: colshape, width: number, depth: number, height: number): boolean
function setColShapeSize () end

---@type fun(theElement: element, key: string, inherit?: boolean): boolean
function hasElementData () end

---@type fun(theResource?: resource): table
function getCommandHandlers () end

---@type fun(thePed: ped): integer
function getPedFightingStyle () end

---@type fun(thePed: ped, armor: number): boolean
function setPedArmor () end

---@type fun(thePed: ped, style: integer): boolean
function setPedFightingStyle () end

---@type fun(thePickup: pickup, thePlayer: player): boolean
function usePickup () end

---@type fun(thePlayer: player, component: string, show: boolean): boolean
function setPlayerHudComponentVisible () end

---@type fun(theResource?: resource): table
function getRemoteRequests () end

---@type fun(theRequest: request, postDataLength?: integer, includeHeaders?: boolean): table
function getRemoteRequestInfo () end

---@type fun(theRequest: request): boolean
function abortRemoteRequest () end

---@type fun(reference: integer): any
function deref () end

---@type fun(): boolean
function isOOPEnabled () end

---@type fun(objectToReference: any): integer
function ref () end

---@type fun(red: integer, green: integer, blue: integer, alpha?: integer): color
function tocolor () end

---@type fun(xmlString: string): xmlnode
function xmlLoadString () end

---@type fun(theElement: element, theMatrix: table): boolean
function setElementMatrix () end

---@type fun(shape: colshape): table
function getColPolygonPoints () end

---@type fun(shape: colshape, index: integer): vector2
function getColPolygonPointPosition () end

---@type fun(shape: colshape, index: integer): boolean
function removeColPolygonPoint () end

---@type fun(shape: colshape, index: integer, fX: number, fY: number): boolean
function setColPolygonPointPosition () end

---@type fun(theVehicle: vehicle, variant1?: integer, variant2?: integer): boolean
function setVehicleVariant () end

---@type fun(): boolean
function isTransferBoxVisible () end

---@type fun(visible: boolean): boolean
function setTransferBoxVisible () end

---@type fun(shape: colshape, floor: number, ceil: number): boolean
function setColPolygonHeight () end

---@type fun(): number, number
function getColPolygonHeight () end

---@type fun(): number, number
function getColPolygonHeight () end

---@param ... integer
local char = function ( ... ) end
utf8 = {
    char = char
}