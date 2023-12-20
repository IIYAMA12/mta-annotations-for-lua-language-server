---@meta clientConfigs
---@diagnostic disable: missing-return

---@alias soundEffectName "gargle" | "compressor" | "echo" | "i3dl2reverb" | "distortion" | "chorus" | "parameq" | "reverb" | "flanger"
---@alias boneId 0|1|2|3|4|5|6|7|8|21|22|23|24|25|26|31|32|33|34|35|36|41|42|43|44|51|52|53|54|201|301|302
---@alias objectProperty "mass" | "turn_mass" | "air_resistance" | "elasticity" | "center_of_mass" | "buoyancy"
---@alias goggleEffect "normal" | "nightvision" | "thermalvision"
---@alias worldSoundGroup 0|1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30|31|32|33|34|35|36|37|38|39|40|41|42|43|44
---@alias roomTypeId 0|1|2|3|4 
---@alias ambientSoundType "gunfire" | "general"
---@alias weaponFlag "disable_model" | "flags" | "instant_reload" | "shoot_if_out_of_range" | "shoot_if_blocked"
---@alias weaponFlag_ "disable_model" | "instant_reload" | "shoot_if_out_of_range" | "shoot_if_blocked" Synax without "flags"
---@alias weaponState "reloading" | "firing" | "ready"
---@alias weaponCreateType "colt 45" | "silenced" | "deagle" | "uzi" | "mp5" | "ak-47" | "m4" | "tec-9" | "rifle" | "sniper" | "minigun"

---@type fun(shouldFlash: boolean, count?: integer): boolean Default count: 10 Returns false if the window is already in focus or the client has disabled this feature.
function setWindowFlashing () end

---@type fun(webBrowser: browser): boolean Returns true if the browser can navigate back
function canBrowserNavigateBack () end

---@type fun(webBrowser: browser): boolean
function navigateBrowserBack () end

---@type fun(webBrowser: browser): boolean
function navigateBrowserForward () end

---@type fun(webBrowser: browser): boolean
function reloadBrowserPage () end

---@type fun(webBrowser: browser, width: number, height: number): boolean
function resizeBrowser () end

---@type fun(notificationText: string, iconType?: string, useSound?: boolean): boolean
function createTrayNotification () end

---@type fun(): boolean
function isTrayNotificationEnabled () end

---@type fun(propertyName: worldSpecialProperty, enabled: boolean): boolean
function setWorldSpecialPropertyEnabled () end

---@type fun(sound: element): table
function getSoundEffects () end

---@type fun(): integer
function getRadioChannel () end

---@type fun(theSound: element): integer, integer
function getSoundLevelData () end

---@type fun(): boolean
function isPlayerMapVisible () end

---@type fun(sound: element): table
function getSoundMetaTags () end

---@type fun(creator: element, weaponType: integer, posX?: number, posY?: number, posZ?: number, force?: number, target?: element, rotX?: number, rotY?: number, rotZ?: number, velX?: number, velY?: number, velZ?: number, model?: integer): projectile
function createProjectile () end

---@type fun(sound: element, iSamples: integer, iBands?: integer): table
function getSoundFFTData () end

---@type fun(sound: element): integer
function getSoundBPM () end

---@type fun(sound: element): integer
function getSoundMaxDistance () end

---@type fun(): number, number, number, number, number
function getCursorPosition () end

---@type fun(theSound: element): number
function getSoundLength () end

---@type fun(audioContainer: string): boolean
function getSFXStatus () end

---@type fun(id: integer): string
function getRadioChannelName () end

---@type fun(sound: element, iSamples: integer): table
function getSoundWaveData () end

---@type fun(theSound: element): number
function getSoundSpeed () end

---@type fun(theSound: element): boolean
function isSoundPaused () end

---@type fun(theSound: element): number
function getSoundVolume () end

---@type fun(soundPath: string, looped?: boolean, throttled?: boolean): element
function playSound () end

---@type fun(theSound: element): number
function getSoundPan () end

---@type fun(webBrowser: browser, jsCode: string): boolean
function executeBrowserJavascript () end

---@type fun(sound: element): number, number, number, boolean
function getSoundProperties () end

---@type fun(webBrowser: browser): boolean
function focusBrowser () end

---@type fun(): element
function getCamera () end

---@type fun(theElement: element): number
function getElementDistanceFromCentreOfMassToBaseOfModel () end

---@type fun(): boolean
function isPedTargetingMarkerEnabled () end

---@type fun(theSound: element, speed: number): boolean
function setSoundSpeed () end

---@type fun(soundPath: string, x: number, y: number, z: number, looped?: boolean): element
function playSound3D () end

---@type fun(theSound: element): boolean
function isSoundPanningEnabled () end

---@type fun(sound: element, distance: integer): boolean
function setSoundMaxDistance () end

---@type fun(sound: element): integer
function getSoundMinDistance () end

---@type fun(containerName: string, bankId: integer, soundId: integer, looped?: boolean): element
function playSFX () end

---@type fun(theSound: element): number
function getSoundPosition () end

---@type fun(containerName: string, bankId: integer, soundId: integer, x: number, y: number, z: number, looped?: boolean): element
function playSFX3D () end

---@type fun(sound: element, enable: boolean): boolean
function setSoundPanningEnabled () end

---@type fun(theSound: element, pos: number): boolean
function setSoundPosition () end

---@type fun(theSound: element, paused: boolean): boolean
function setSoundPaused () end

---@type fun(theSound: element): boolean
function stopSound () end

---@type fun(sound: element, distance: integer): boolean
function setSoundMinDistance () end

---@type fun(theSound: element, pan: number): boolean
function setSoundPan () end

---@type fun(posX: number, posY: number, posZ: number, dirX: number, dirY: number, dirZ: number, smokeSize?: integer, sparkCount?: integer, smokeIntensity?: number): boolean
function fxAddBulletImpact () end

---@type fun(sound: element, effectName: string, bEnable: boolean): boolean
function setSoundEffectEnabled () end

---@type fun(posX: number, posY: number, posZ: number, colorR?: integer, colorG?: integer, colorB?: integer, colorA?: integer, scale?: number, count?: integer): boolean
function fxAddDebris () end

---@type fun(theSound: element, volume: number): boolean
function setSoundVolume () end

---@type fun(posX: number, posY: number, posZ: number, dirX: number, dirY: number, dirZ: number): boolean
function fxAddTankFire () end

---@type fun(posX: number, posY: number, posZ: number): boolean
function fxAddFootSplash () end

---@type fun(posX: number, posY: number, posZ: number): boolean
function fxAddBulletSplash () end

---@type fun(sound: element, fSampleRate: number, fTempo: number, fPitch: number, bReverse: boolean): boolean
function setSoundProperties () end

---@type fun(posX: number, posY: number, posZ: number, dirX: number, dirY: number, dirZ: number, force?: number, count?: integer, acrossLineX?: number, acrossLineY?: number, acrossLineZ?: number, blur?: boolean, spread?: number, life?: number): boolean
function fxAddSparks () end

---@type fun(): integer, integer, integer, integer
function getPlayerMapBoundingBox () end

---@type fun(theElement: element): boolean
function isElementLocal () end

---@type fun(theElement: element): boolean
function isElementSyncer () end

---@type fun(posX: number, posY: number, posZ: number, dirX: number, dirY: number, dirZ: number): boolean
function fxAddTyreBurst () end

---@type fun(cursorX: integer, cursorY: integer): boolean
function setCursorPosition () end

---@type fun(posX: number, posY: number, posZ: number): boolean
function fxAddWaterHydrant () end

---@type fun(theEffect: effect): number
function getEffectDensity () end

---@type fun(posX: number, posY: number, posZ: number, colorR?: integer, colorG?: integer, colorB?: integer, colorA?: integer, scale?: number, count?: integer): boolean
function fxAddGlass () end

---@type fun(theElement: element): number, number, number, number, number, number
function getElementBoundingBox () end

---@type fun(width: integer, height: integer, isLocal: boolean, transparent?: boolean): element
function createBrowser () end

---@type fun(posX: number, posY: number, posZ: number, dirX: number, dirY: number, dirZ: number, count?: integer, brightness?: number): boolean
function fxAddWood () end

---@type fun(posX: number, posY: number, posZ: number, dirX: number, dirY: number, dirZ: number, includeSparks?: boolean): boolean
function fxAddGunshot () end

---@type fun(posX: number, posY: number, posZ: number, dirX: number, dirY: number, dirZ: number, count?: integer, brightness?: number): boolean
function fxAddBlood () end

---@type fun(posX: number, posY: number, posZ: number): boolean
function fxAddWaterSplash () end

---@type fun(x: number, y: number, z: number, size?: number): boolean
function createFire () end

---@type fun(posX: number, posY: number, posZ: number, dirX: number, dirY: number, dirZ: number): boolean
function fxAddPunchImpact () end

---@type fun(theEffect: effect, speed: number): boolean
function setEffectSpeed () end

---@type fun(name: string, x: number, y: number, z: number, rX?: number, rY?: number, rZ?: number, drawDistance?: number, soundEnabled): effect
function createEffect () end

---@type fun(theObject: object): number
function getObjectMass () end

---@type fun(x: number, y: number, z: number): number
function getGroundPosition () end

---@type fun(projectile: projectile, timeToDetonate: integer): boolean
function setProjectileCounter () end

---@type fun(garageID: integer): number, number, number, number
function getGarageBoundingBox () end

---@type fun(theElement: element, withElement: element, enabled: boolean): boolean
function setElementCollidableWith () end

---@type fun(theElement: element): number
function getElementRadius () end

---@type fun(thePlayer: element, enabled: boolean): boolean
function setPedFootBloodEnabled () end

---@type fun(theElement: element): boolean
function isElementStreamedIn () end

---@type fun(theEffect: effect, density: number): boolean
function setEffectDensity () end

---@type fun(theEffect: effect): number
function getEffectSpeed () end

---@type fun(theElement: element): boolean
function isElementWaitingForGroundToLoad () end

---@type fun(event: string, theElement: element, arguments...): boolean
function triggerServerEvent () end

---@type fun(theLight: light, radius: number): boolean
function setLightRadius () end

---@type fun(theElement: element): boolean
function isElementStreamable () end

---@type fun(): player
function getLocalPlayer () end

---@type fun(theElement: element, withElement: element): boolean
function isElementCollidableWith () end

---@type fun(theSearchLight: searchlight): number, number, number
function getSearchLightEndPosition () end

---@type fun(control: controlName, state?: number, forceOverrideNextFrame?: boolean): boolean
function setAnalogControlState () end

---@type fun(theSearchLight: searchlight): searchlight
function getSearchLightEndRadius () end

---@type fun(theProjectile: projectile): element
function getProjectileTarget () end

---@type fun(theObject: object, respawn: boolean): boolean
function toggleObjectRespawn () end

---@type (fun(event: string, arguments...): boolean) | (fun(event: string, bandwidth: integer, persist: boolean, arguments...): boolean)
function triggerLatentServerEvent () end

---@type fun(theElement: element, streamable: boolean): boolean
function setElementStreamable () end

---@type fun(theObject: object, mass: number): boolean
function setObjectMass () end

---@type fun(theElement: element): boolean
function isElementOnScreen () end

---@type fun(theSearchLight: searchlight, startX: number, startY: number, startZ: number): searchlight
function setSearchLightStartPosition () end

---@type fun(theProjectile: projectile): integer
function getProjectileType () end

---@type fun(component: string): boolean
function isPlayerHudComponentVisible () end

---@type fun(roomID: integer): boolean
function getInteriorFurnitureEnabled () end

---@type fun(theLight: light, x: number, y: number, z: number): boolean
function setLightDirection () end

---@type fun(): boolean
function getBirdsEnabled () end

---@type fun(): boolean
function getInteriorSoundsEnabled () end

---@type fun(garageID: integer): number, number, number
function getGaragePosition () end

---@type fun(CVar?: string): boolean | integer | table
function getChatboxLayout () end

---@type fun(fx: number, fy: number, fZ: number, duration: integer): boolean
function createSWATRope () end

---@type fun(garageID: integer): number, number, number
function getGarageSize () end

---@type fun(commandControl: string | controlName): table
function getBoundKeys () end

---@type fun(keyName: string): boolean
function getKeyState () end

---@type fun(theLight: light, r: number, g: number, b: number): boolean
function setLightColor () end

---@type fun(lightType: integer, posX: number, posY: number, posZ: number, radius?: number, r?: integer, g?: integer, b?: integer, dirX?: number, dirY?: number, dirZ?: number, createsShadow?: boolean): light
function createLight () end

---@type fun(): boolean
function isChatBoxInputActive () end

---@type fun(theProjectile: projectile): element
function getProjectileCreator () end

---@type fun(enabled: boolean): boolean
function setDebugViewActive () end

---@type fun(theLight: light): integer
function getLightType () end

---@type fun(theLight: light): number, number, number
function getLightDirection () end

---@type fun(theLight: light): number
function getLightRadius () end

---@type fun(theLight: light): integer, integer, integer
function getLightColor () end

---@type fun(): boolean
function isMTAWindowActive () end

---@type fun(theSearchLight: searchlight, endX: number, endY: number, endZ: number): searchlight
function setSearchLightEndPosition () end

---@type fun(theSearchLight: searchlight): searchlight
function getSearchLightStartRadius () end

---@type fun(theSearchlight: searchlight, startRadius: number): searchlight
function setSearchLightStartRadius () end

---@type fun(): boolean
function isConsoleActive () end

---@type fun(): boolean
function isMainMenuActive () end

---@type fun(startX: number, startY: number, startZ: number, endX: number, endY: number, endZ: number, startRadius: number, endRadius: number, renderSpot?: boolean): searchlight
function createSearchLight () end

---@type fun(): boolean
function isDebugViewActive () end

---@type fun(theSearchlight: searchlight, endRadius: number): searchlight
function setSearchLightEndRadius () end

---@type fun(projectile: projectile): integer
function getProjectileCounter () end

---@type fun(theProjectile: projectile): number
function getProjectileForce () end

---@type fun(theSearchLight: searchlight): searchlight
function getSearchLightStartPosition () end

---@type fun(): boolean
function isTransferBoxActive () end

---@type fun(theObject: object, breakable: boolean): boolean
function setObjectBreakable () end

---@type fun(theObject: object): boolean
function breakObject () end

---@type fun(theObject: object): boolean
function isObjectBreakable () end

---@type fun(theObject: object): boolean
function respawnObject () end

---@type fun(address: string, isURL?: boolean): boolean
function isBrowserDomainBlocked () end

---@type fun(webBrowser: browser): boolean
function isBrowserFocused () end

---@type fun(webBrowser: browser): boolean
function isBrowserLoading () end

---@type fun(theBrowser: browser, key: string): boolean
function getBrowserProperty () end

---@type fun(): table
function getBrowserSettings () end

---@type fun(webBrowser: browser): string
function getBrowserTitle () end

---@type fun(webBrowser: browser): string
function getBrowserURL () end

---@type fun(webBrowser: browser, mouseButton: string): boolean
function injectBrowserMouseDown () end

---@type fun(webBrowser: browser, posX: integer, posY: integer): boolean
function injectBrowserMouseMove () end

---@type fun(webBrowser: browser, mouseButton: string): boolean
function injectBrowserMouseUp () end

---@type fun(webBrowser: browser, verticalScroll: integer, horizontalScroll: integer): boolean
function injectBrowserMouseWheel () end

---@type fun(webBrowser: browser, url: string, postData?: string, urlEncoded?: boolean): boolean
function loadBrowserURL () end

---@type fun(webBrowser: browser): boolean
function canBrowserNavigateForward () end

---@type fun(theBrowser: browser, key: string, value: string): boolean
function setBrowserProperty () end

---@type fun(webBrowser: browser, paused: boolean): boolean
function setBrowserRenderingPaused () end

---@type (fun(webBrowser: browser, volume: number): boolean) | (fun( volume: number): boolean)
function setBrowserVolume () end

---@type fun(pages: table, parseAsURL?: boolean, callback?: function): boolean
function requestBrowserDomains () end

---@type fun(webBrowser: browser, url: string, handler?: function): boolean
function setBrowserAjaxHandler () end

---@type fun(webBrowser: browser, callback: function): boolean
function getBrowserSource () end

---@type fun(webBrowser: browser, visible: boolean): boolean
function toggleBrowserDevTools () end

---@type fun(): boolean, boolean
function getCameraClip () end

---@type fun(): string
function getCameraGoggleEffect () end

---@type fun(): integer, integer
function getCameraViewMode () end

---@type fun(cameraMode: string): number
function getCameraFieldOfView () end

---@type fun(): integer
function getCameraShakeLevel () end

---@type fun(objects?: boolean, vehicles?: boolean): boolean
function setCameraClip () end

---@type fun(vehicleCameraMode: integer, pedCameraMode?: integer): boolean
function setCameraViewMode () end

---@type fun(cameraMode: string, fieldOfView: number): boolean
function setCameraFieldOfView () end

---@type fun(shakeLevel: integer): boolean
function setCameraShakeLevel () end

---@type fun(alpha: integer): boolean
function setCursorAlpha () end

---@type fun(): integer
function getCursorAlpha () end

---@type fun(theKey: string, keyState: string): table
function getCommandsBoundToKey () end

---@type fun(command: string): string
function getKeyBoundToCommand () end

---@type fun(control: controlName, rawValue?: boolean): number Returns a float between 0 and 1 indicating the amount the control is pressed. 
function getAnalogControlState () end

---@type fun(): boolean Returns true if the chat is visible
function isChatVisible () end

---@type fun(theResource?: resource): element Returns the root GUI element that contains all the other GUI elements. 
function getResourceGUIElement () end

---@type fun(): { code: string, name: string} Returns a table
function getLocalization () end

---@type fun(theText: string): boolean Returns true if the text in the clip board was set correctly. 
function setClipboard () end

---@type (fun(posX: number, posY: number, posZ: number, ignoreDistanceToWaterThreshold: false): waterLevel: number | false) | (fun(posX: number, posY: number, posZ: number, ignoreDistanceToWaterThreshold: true): waterLevel: number) | (fun(waterElement: water): waterLevel: number) Returns an integer of the water level if the localPlayer/position is near the water (-3 to 20 on the Z coordinate) else false if there's no water near the localPlayer/position. 
function getWaterLevel () end

---@type fun(): boolean Returns true if water is drawn last in the rendering order
function isWaterDrawnLast () end

---@type fun(bEnabled: boolean): boolean Returns true if the rendering order was changed successfully
function setWaterDrawnLast () end

---@type fun(theType: weaponCreateType, x: number, y: number, z: number): weapon Returns a custom weapon element
function createWeapon () end

---@type fun(theWeapon: weapon): boolean Returns true if the shot weapon is valid and therefore the shot was fired
function fireWeapon () end

---@type fun(theWeapon: weapon): weaponState A string if the weapon is valid, indicating the weapon state
function getWeaponState () end

---@type (fun(theWeapon: weapon): target: nil | element) | (fun(theWeapon: weapon): x:number, y:number, z:number) Returns the target of the custom weapon, which can be: `nil` if the weapon is in rotation based targeting. `3 floats` if the weapon is firing at a fixed point. An `element` if the weapon is firing an entity.
function getWeaponTarget () end

---@type fun(theWeapon: weapon): boolean This function was intended to return the player which owns the custom weapon
function getWeaponOwner () end

---@type (fun(theWeapon: weapon, theFlag: weaponFlag_): enabled: boolean) | (fun(theWeapon: weapon, theFlag: "flags"):  checkBuildings: boolean, checkCarTires: boolean, checkDummies: boolean, checkObjects: boolean, checkPeds: boolean, checkVehicles: boolean, checkSeeThroughStuff: boolean, checkShootThroughStuff: boolean) Returns the true or false on success (flags flag returns 8 values) if the flag is enabled or not.
function getWeaponFlags () end

---@type fun(theWeapon: weapon): integer Returns an integer with the firing rate of the custom weapon
function getWeaponFiringRate () end

---@type fun(theWeapon: weapon): integer Returns an integer containing how many ammo left has the weapon
function getWeaponAmmo () end

---@type fun(theWeapon: weapon): integer Returns the amount of ammo in the custom weapon's clip
function getWeaponClipAmmo () end

---@type fun(theWeapon: weapon): boolean Returns true on success
function resetWeaponFiringRate () end

---@type fun(theWeapon: weapon, theState: weaponState): boolean Returns true on success
function setWeaponState () end

---@type (fun(theWeapon: weapon, theTarget: element, theComponent?: boneId | wheelId | 255): boolean) | (fun(theWeapon: weapon, targetX: number, targetY: number, targetZ: number): boolean) | (fun(theWeapon: weapon, reset: nil): boolean) Returns true on success
function setWeaponTarget () end

---@type (fun(theWeapon: weapon, theFlag: weaponFlag_, enable: boolean): boolean) |  (fun(theWeapon: weapon, theFlag: "flags", checkBuildings: boolean, checkCarTires: boolean, checkDummies: boolean, checkObjects: boolean, checkPeds: boolean, checkVehicles: boolean, checkSeeThroughStuff: boolean, checkShootThroughStuff: boolean ): boolean) Returns true if all arguments are valid and the flags where changed
function setWeaponFlags () end

---@type fun(theWeapon: weapon, firingRate: integer): boolean Returns true on success
function setWeaponFiringRate () end

---@type fun(theWeapon: weapon, clipAmmo: integer): boolean This function returns true if the arguments are valid and the weapon clip ammo could be changed
function setWeaponClipAmmo () end

---@type fun(): number This function returns a float containing the actual near clip distance. 
function getNearClipDistance () end

---@type (fun(x: number, y: number, z: number, edgeTolerance?: number, relative?: boolean): number|false, number?, number?) Returns two x, y floats indicating the screen position and float distance between screen and given position if successful
function getScreenFromWorldPosition () end

---@type fun(x: number, y: number, depth: number): number, number, number Returns three x, y, z floats indicating the world position if successful
function getWorldFromScreenPosition () end

---@type fun(theType: ambientSoundType): boolean Returns true if the ambient sound is enabled
function isAmbientSoundEnabled () end

---@type fun(startX: number, startY: number, startZ: number, endX: number, endY: number, endZ: number, checkBuildings?: boolean, checkVehicles?: boolean, checkPeds?: boolean, checkObjects?: boolean, checkDummies?: boolean, seeThroughStuff?: boolean, ignoreSomeObjectsForCamera?: boolean, ignoredElement?: element): boolean Returns true if the line between the specified points is clear
function isLineOfSightClear () end

---@type fun(group: worldSoundGroup, index: integer): boolean Returns true if the world sounds are enabled
function isWorldSoundEnabled () end

---@type fun(propname: worldSpecialProperty): boolean Returns true if the property is enabled
function isWorldSpecialPropertyEnabled () end

---@type fun(startX: number, startY: number, startZ: number, endX: number, endY: number, endZ: number, checkBuildings?: boolean, checkVehicles?: boolean, checkPlayers?: boolean, checkObjects?: boolean, checkDummies?: boolean, seeThroughStuff?: boolean, ignoreSomeObjectsForCamera?: boolean, shootThroughStuff?: boolean, ignoredElement?: element, includeWorldModelInformation?: boolean, bIncludeCarTyres?: boolean): hit:boolean, x:number, y:number, z:number, element, nx:number, ny:number, nz:number, mat:integer, lighting:number, piece:integer, worldModel:integer, x:number, y:number, z:number, rx:number, ry:number, rz:number, worldLOD:integer
function processLineOfSight () end

---@type fun(): boolean Returns true if the ambient sounds were reset
function resetAmbientSounds () end

---@type fun(): boolean Returns true if the world sounds were reset
function resetWorldSounds () end

---@type fun(theType: ambientSoundType, enable: boolean): boolean Returns true if the ambient sound was set correctly
function setAmbientSoundEnabled () end

---@type fun(enable: boolean): boolean Returns true if the birds state was changed succesfully
function setBirdsEnabled () end

--[[
    roomID: The room type which you want disable or enable the furniture in:
    0: shop
    1: office
    2: lounge
    3: bedroom
    4: kitchen
]]
---@type fun(roomID: roomTypeId, enabled: boolean): boolean Returns true if successful.
function setInteriorFurnitureEnabled () end

--[[
    `distance` must be between 0.1 and 20 for the function to do any effect. Default value is 0.3.
]]
---@type fun(distance: number): boolean This function returns true if the argument is valid.
function setNearClipDistance () end

---@type fun(startX: number, startY: number, startZ: number, endX: number, endY: number, endZ: number): boolean, x:number, y:number, z:number Returns true and the position of the intersection point of the line and the water surface if there is a collision
function testLineAgainstWater () end

---@type fun(theFunction: function): string
function getKeyBoundToFunction () end

---@type fun(): boolean
function clearChatBox () end

---@type fun(text: string, r?: integer, g?: integer, b?: integer, colorCoded?: boolean)
function outputChatBox () end

---@type (fun(): boolean) |  (fun(x: number, y: number, z: number, radius?: number): boolean) Returns true if successful
function extinguishFire () end

---@type (fun(group: worldSoundGroup, enable: boolean, immediate? : boolean) : boolean) | (fun(group: worldSoundGroup, index: integer, enable: boolean, immediate? : boolean) : boolean) Returns true if the world sound was correctly enabled/disabled
function setWorldSoundEnabled () end

---@type fun(goggleEffect: goggleEffect, noiseEnabled?: boolean): boolean Returns true if the effect was set correctly.
function setCameraGoggleEffect () end

---@type fun(theSound: sound): number | false Returns a float value indicating the buffer playback length of the sound in seconds or false if the sound is not a stream.
function getSoundBufferLength () end

--- Returns on success: table for all, 3 floats for center_of_mass or float for other properties 
---@type (fun(theObject: object, property: 'all' ): table) | (fun(theObject: object, property: 'center_of_mass' ): number, number, number) | (fun(theObject: object, property: "mass" | "turn_mass" | "air_resistance" | "elasticity" | "buoyancy" ): number)
function getObjectProperty () end

---@type (fun(theObject: object, property: "mass" | "turn_mass" | "air_resistance" | "elasticity" | "buoyancy", value: number): boolean) | (fun(theObject: object, property: "center_of_mass", x: number, y: number, z: number): boolean) Returns true if the property was set successfully
function setObjectProperty () end

---@type fun(fileName: string): boolean Returns true if file download has been queued
function downloadFile () end

---@type fun(): {["readingLayout"]: "ltr" | "rtl" | "ttb-rtl-ltr" | "ttb-ltr"} Returns a table with keyboard layout
function getKeyboardLayout () end

---@type fun(): true Returns always true.
function resetNearClipDistance () end

--- Player element has to be provided on serverside.
---@type (fun(): integer) | (fun(player: player): integer) Returns the blur level. 
function getBlurLevel () end

---@type fun(): boolean Default blur level is 36. Returns true if the blur level was reset successfully
function resetBlurLevel () end

--- Player element has to be provided on serverside. Level between 0-255.
---@type (fun(level: integer): boolean) | (fun(player: player, level: integer): boolean) Returns true if the function was successful
function setBlurLevel () end

---@type fun(aRed: integer, aGreen: integer, aBlue: integer, aAlpha: integer, bRed: integer, bGreen: integer, bBlue: integer, bAlpha: integer): boolean Values between 0-255. Returns true if the color filter was set
function setColorFilter () end

---@type fun(): boolean Returns true if the color filtering was reset
function resetColorFilter () end

---@type fun(theElement: element, bone: boneId): table Returns a multi-dimensional array (which can be transformed into a proper matrix class using Matrix.create method) containing a 4x4 matrix.
function getElementBoneMatrix () end

---@type fun(theElement: element, bone: boneId): x:number, y:number, z:number Returns 3 floats, representing the X, Y, Z world position of the bone. 
function getElementBonePosition () end

---@type fun(theElement: element, bone: boneId): yaw:number, pitch:number, roll:number Returns 3 floats, representing the yaw, pitch, roll rotation values. 
function getElementBoneRotation () end

---@type fun(theElement: element, bone: boneId, matrix: matrix): boolean Returns true if the function was successful
function setElementBoneMatrix () end

---@type fun(theElement: element, bone: boneId, x: number, y: number, z: number): boolean Returns true if the function was successful
function setElementBonePosition () end

---@type fun(theElement: element, bone: boneId, yaw: number, pitch: number, roll: number): boolean Returns true if the function was successful
function setElementBoneRotation () end

---@type fun(theElement: element): boolean Returns true if successful
function updateElementRpHAnim () end

---@type fun(x: number, y: number, z: number): number|false Returns a float with the lowest roof-level Z coord if parameters are valid, false if the point you tried to test is outside the loaded world map. 
function getRoofPosition () end

---@type fun(theSound: sound, loop: boolean): boolean Returns true if the sound element loop state was successfully changed
function setSoundLooped () end

---@type fun(theSound: sound): boolean Returns true if the sound element is looped
function isSoundLooped () end

---@type fun(theObject: object): boolean Returns true if the object is moving
function isObjectMoving () end

---@type fun(webBrowser: browser): boolean Returns true if the browser rendering is paused
function isBrowserRenderingPaused () end

---@type fun(sound: sound, effectName: soundEffectName, effectParam: string, paramValue: integer|number|boolean): boolean Returns true if effect have been set successfully
function setSoundEffectParameter () end

---@type fun(sound: sound, effectName: soundEffectName): {[string]: integer|number|boolean} Returns a table with the parameter names as the keys, and their values.
function getSoundEffectParameters () end

---@type fun(): true Always returns true.
function clearDebugBox () end

---@type fun(): boolean Returns true if the chat input is blocked, false otherwise. 
function isChatInputBlocked () end

---@type fun(): integer Returns an integer with a value from 0 to 255, where 0 is fully transparent and 255 is fully opaque. 
function getPlayerMapOpacity () end

---@type fun(): boolean Returns true if the collision previews are enabled.  (This function only works in development mode.)
function isShowCollisionsEnabled () end

---@type fun(): boolean Returns true if world sound IDs should be printed in the debug window.  (This function only works in development mode.)
function isShowSoundEnabled () end

---@type fun(state: boolean): boolean Returns true if the function is successful. (This function only works in development mode.)
function showSound () end

---@type fun(state: boolean): boolean Returns true if the function is successful. (This function only works in development mode.)
function showCol () end

---@type (fun( width: integer,  height: integer, pathOrRawdata?: string, callback?: fun(svgElement: svg)): svgElement:svg) Returns an svg if created successfully
function svgCreate () end

---@type fun(svgElement: svg): xmlnode Returns an xmlnode if successful
function svgGetDocumentXML () end

---@type fun(svgElement: svg): width:integer, height:integer Returns two ints, representing width and height
function svgGetSize () end

---@type fun(svgElement: svg, xmlDocument: xmlnode, callBack?: fun(svg: svg) ): boolean Returns true if successful
function svgSetDocumentXML () end

---@type fun(svgElement: svg, width: integer, height: integer, callBack?: fun(svgElement: svg) ): boolean Returns true if successful
function svgSetSize () end

---@type fun(): boolean
function isTransferBoxAlwaysVisible () end

-- See status for implementation of this function: https://github.com/multitheftauto/mtasa-blue/pull/2595
---@type fun(svgElement: svg): function
function svgGetUpdateCallback () end

---@type fun(svgElement: svg, callback: function | boolean): boolean Returns true if successful
function svgSetUpdateCallback () end

