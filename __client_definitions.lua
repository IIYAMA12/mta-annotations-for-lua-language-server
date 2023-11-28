---@meta clientConfigs
---@diagnostic disable: missing-return


---@type fun(shouldFlash: boolean, count?: integer): boolean
function setWindowFlashing () end

---@type fun(webBrowser: browser): boolean
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

---@type fun(propertyName: string, enabled: boolean): boolean
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

---@type fun(control: string, state?: number, forceOverrideNextFrame?: boolean): boolean
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

---@type fun(commandControl: string): table
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

---@type fun(control: string): number
function getAnalogControlState () end

---@type fun(): boolean
function isChatVisible () end

---@type fun(theResource?: resource): element
function getResourceGUIElement () end

---@type fun(): table
function getLocalization () end

---@type fun(theText: string): boolean
function setClipboard () end

---@type fun(posX: number, posY: number, posZ: number, ignoreDistanceToWaterThreshold?: boolean): number
function getWaterLevel () end

---@type fun(): boolean
function isWaterDrawnLast () end

---@type fun(bEnabled: boolean): boolean
function setWaterDrawnLast () end

---@type fun(theType: string, x: number, y: number, z: number): weapon
function createWeapon () end

---@type fun(theWeapon: weapon): boolean
function fireWeapon () end

---@type fun(theWeapon: weapon): string
function getWeaponState () end

---@type fun(theWeapon: weapon): nil | element | number
function getWeaponTarget () end

---@type fun(theWeapon: weapon): boolean
function getWeaponOwner () end

---@type fun(theWeapon: weapon, theFlag: string): boolean
function getWeaponFlags () end

---@type fun(theWeapon: weapon): integer
function getWeaponFiringRate () end

---@type fun(theWeapon: weapon): integer
function getWeaponAmmo () end

---@type fun(theWeapon: weapon): integer
function getWeaponClipAmmo () end

---@type fun(theWeapon: weapon): boolean
function resetWeaponFiringRate () end

---@type fun(theWeapon: weapon, theState: string): boolean
function setWeaponState () end

---@type fun(theWeapon: weapon, theTarget: element, theComponent?: integer): boolean
function setWeaponTarget () end

---@type fun(theWeapon: weapon, theFlag: string, enable: boolean): boolean
function setWeaponFlags () end

---@type fun(theWeapon: weapon, firingRate: integer): boolean
function setWeaponFiringRate () end

---@type fun(theWeapon: weapon, clipAmmo: integer): boolean
function setWeaponClipAmmo () end

---@type fun(): number
function getNearClipDistance () end

---@type fun(x: number, y: number, z: number, edgeTolerance?: number, relative?: boolean): number, number, number
function getScreenFromWorldPosition () end

---@type fun(x: number, y: number, depth: number): number, number, number
function getWorldFromScreenPosition () end

---@type fun(theType: string): boolean
function isAmbientSoundEnabled () end

---@type fun(startX: number, startY: number, startZ: number, endX: number, endY: number, endZ: number, checkBuildings?: boolean, checkVehicles?: boolean, checkPeds?: boolean, checkObjects?: boolean, checkDummies?: boolean, seeThroughStuff?: boolean, ignoreSomeObjectsForCamera?: boolean, ignoredElement?: element): boolean
function isLineOfSightClear () end

---@type fun(group: integer, integerindex): boolean
function isWorldSoundEnabled () end

---@type fun(propname: string): boolean
function isWorldSpecialPropertyEnabled () end

---@type fun(startX: number, startY: number, startZ: number, endX: number, endY: number, endZ: number, checkBuildings?: boolean, checkVehicles?: boolean, checkPlayers?: boolean, checkObjects?: boolean, checkDummies?: boolean, seeThroughStuff?: boolean, ignoreSomeObjectsForCamera?: boolean, shootThroughStuff?: boolean, ignoredElement?: element, includeWorldModelInformation?: boolean, bIncludeCarTyres?: boolean): hit:boolean, x:number, y:number, z:number, element, nx:number, ny:number, nz:number, mat:integer, lighting:number, piece:integer, worldModel:integer, x:number, y:number, z:number, rx:number, ry:number, rz:number, worldLOD:integer
function processLineOfSight () end

---@type fun(): boolean
function resetAmbientSounds () end

---@type fun(): boolean
function resetWorldSounds () end

---@type fun(theType: string, enable: boolean): boolean
function setAmbientSoundEnabled () end

---@type fun(enable: boolean): boolean
function setBirdsEnabled () end

---@type fun(roomID: integer, enabled: boolean): boolean
function setInteriorFurnitureEnabled () end

---@type fun(distance: number): boolean
function setNearClipDistance () end

---@type fun(startX: number, startY: number, startZ: number, endX: number, endY: number, endZ: number): boolean, number, number, number
function testLineAgainstWater () end

---@type fun(theFunction: function): string
function getKeyBoundToFunction () end

---@type fun(): boolean
function clearChatBox () end

---@type fun(text: string, r?: integer, g?: integer, b?: integer, colorCoded?: boolean)
function outputChatBox () end

---@type (fun(): boolean) |  (fun(x: number, y: number, z: number, radius?: number): boolean)
function extinguishFire () end

---@type (fun(group: integer, enable: boolean, immediate? : boolean) : boolean) | (fun(group: integer, index: integer, enable: boolean, immediate? : boolean) : boolean)
function setWorldSoundEnabled () end

---@type fun(goggleEffect: string, noiseEnabled?: boolean): boolean
function setCameraGoggleEffect () end

---@type fun(theSound: element): number
function getSoundBufferLength () end

--- Returns on success: table for all, 3 floats for center_of_mass or float for other properties 
---@type (fun(theObject: object, property: 'all' ): table) | (fun(theObject: object, property: 'center_of_mass' ): number, number, number) | (fun(theObject: object, property: string ): number)
function getObjectProperty () end

---@type fun(theObject: object, property: string, value: any): boolean
function setObjectProperty () end

---@type fun(fileName: string): boolean
function downloadFile () end

---@type fun(): table
function getKeyboardLayout () end

---@type fun(): boolean
function resetNearClipDistance () end

---@type fun(): integer
function getBlurLevel () end

---@type fun(): boolean
function resetBlurLevel () end

---@type fun(level: integer): boolean
function setBlurLevel () end

---@type fun(aRed: integer, aGreen: integer, aBlue: integer, aAlpha: integer, bRed: integer, bGreen: integer, bBlue: integer, bAlpha: integer): boolean
function setColorFilter () end

---@type fun(): boolean
function resetColorFilter () end

---@type fun(theElement: element, bone: integer): table
function getElementBoneMatrix () end

---@type fun(theElement: element, bone: integer): x:number, y:number, z:number
function getElementBonePosition () end

---@type fun(theElement: element, bone: integer): x:number, y:number, z:number
function getElementBoneRotation () end

---@type fun(theElement: element, bone: integer, matrix: matrix): boolean
function setElementBoneMatrix () end

---@type fun(theElement: element, bone: integer, x: number, y: number, z: number): boolean
function setElementBonePosition () end

---@type fun(theElement: element, bone: integer, yaw: number, pitch: number, roll: number): boolean
function setElementBoneRotation () end

---@type fun(theElement: element): boolean
function updateElementRpHAnim () end

---@type fun(x: number, y: number, z: number): number
function getRoofPosition () end

---@type fun(theSound: element, loop: boolean): boolean
function setSoundLooped () end

---@type fun(theSound: element): boolean
function isSoundLooped () end

---@type fun(theObject: object): boolean
function isObjectMoving () end

---@type fun(webBrowser: browser): boolean
function isBrowserRenderingPaused () end

---@type fun(sound: element, effectName: string, effectParam: string, paramValue: any): boolean
function setSoundEffectParameter () end

---@type fun(sound: element, effectName: string): table
function getSoundEffectParameters () end

---@type fun(): boolean
function clearDebugBox () end

---@type fun(): boolean
function isChatInputBlocked () end

---@type fun(): integer
function getPlayerMapOpacity () end

---@type fun(): boolean
function isShowCollisionsEnabled () end

---@type fun(): boolean
function isShowSoundEnabled () end

---@type fun(state: boolean): boolean
function showSound () end

---@type fun(state: boolean): boolean
function showCol () end

---@type (fun( width: integer,  height: integer): svgElement:svg) | (fun( width: integer,  height: integer, pathOrRawdata: string, callback: fun(svgElement: svg)): svgElement:svg)
function svgCreate () end

---@type fun(svgElement: svg): xmlnode
function svgGetDocumentXML () end

---@type fun(svgElement: svg): integer, integer
function svgGetSize () end

---@type fun(svgElement: svg, xmlDocument: xmlnode, callBack?: fun(svg: svg) ): boolean
function svgSetDocumentXML () end

---@type fun(svgElement: svg, width: integer, height: integer, callBack?: fun(svgElement: svg) ): boolean
function svgSetSize () end

---@type fun(): boolean
function isTransferBoxAlwaysVisible () end

---@type fun(svgElement: svg): function
function svgGetUpdateCallback () end

---@type fun(svgElement: svg, callback: function | boolean): boolean
function svgSetUpdateCallback () end

