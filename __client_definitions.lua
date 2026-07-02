---@meta clientConfigs
---@diagnostic disable: missing-return
---@diagnostic disable: lowercase-global

--[[
    Credits to the community for all the available syntax and descriptions
]]

-----------------
-- Window / Tray --
-----------------

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetWindowFlashing)
]]
---@type fun(shouldFlash: boolean, count?: integer): boolean Default count: 10 Returns false if the window is already in focus or the client has disabled this feature.
function setWindowFlashing() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/CanBrowserNavigateBack)
]]
---@type fun(webBrowser: browser): boolean Returns true if the browser can navigate back
function canBrowserNavigateBack() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/NavigateBrowserBack)
]]
---@type fun(webBrowser: browser): boolean Returns true if the browser has returned to the previous page
function navigateBrowserBack() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/NavigateBrowserForward)
]]
---@type fun(webBrowser: browser): boolean Returns true if the browser has gone to the next page
function navigateBrowserForward() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/ReloadBrowserPage)
]]
---@type fun(webBrowser: browser, ignoreCache?: boolean): boolean Returns true if the browser has reloaded
function reloadBrowserPage() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/ResizeBrowser)
]]
---@type fun(webBrowser: browser, width: number, height: number): boolean Returns true if the browser is resized successfully
function resizeBrowser() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/CreateTrayNotification)
]]
---@type fun(notificationText: string, iconType?: trayNotificationIconType , useSound?: boolean): boolean Returns true if the notification is correctly created
function createTrayNotification() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/IsTrayNotificationEnabled)
]]
---@type fun(): boolean Returns true if the tray notifications are enabled in the settings
function isTrayNotificationEnabled() end

-----------------
-- Sound / SFX / Radio --
-----------------

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetSoundEffects)
]]
---@type fun(sound: sound): {['gargle']: boolean, ['compressor']: boolean, ['echo']: boolean, ['i3dl2reverb']: boolean, ['distortion']: boolean, ['chorus']: boolean, ['parameq']: boolean, ['reverb']: boolean, ['flanger']: boolean } Returns a table of booleans indicating which effects are enabled on the sound.
function getSoundEffects() end

---@see radioChannelId for definitions
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetRadioChannel)

See [Radio](https://wiki.multitheftauto.com/wiki/Radio) for channel definitions.
]]
---@type fun(): radioChannelId Returns an integer representing the radio channel.
function getRadioChannel() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetSoundLevelData)
]]
---@type (fun(theSound: element): false) | (fun(theSound: element): leftData: integer, rightData: integer) Returns a two integers in range from 0 to 32768.
function getSoundLevelData() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/IsPlayerMapVisible)
]]
---@type fun(): boolean Returns true if the player has the map visible
function isPlayerMapVisible() end

---@alias getSoundMetaTags_syntax_1 (fun(sound: sound): {[soundMetaTags]?: string} | false)
---@alias getSoundMetaTags_syntax_2 (fun(sound: sound, format: soundMetaTags): string | false)
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetSoundMetaTags)
]]
---@type getSoundMetaTags_syntax_1 | getSoundMetaTags_syntax_2 Returns a table, but only a string if format is given, with all data available (keys are listed below) for the sound if successful, false otherwise. If any data is unavailable then the associated key is not written to the table.
function getSoundMetaTags() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/CreateProjectile)
]]
---@type fun(creator: element, weaponType: projectileId, posX?: number, posY?: number, posZ?: number, force?: number, target?: element, rotX?: number, rotY?: number, rotZ?: number, velX?: number, velY?: number, velZ?: number, model?: integer): projectile | false Returns a projectile element if projectile creation was successful. Returns false if unable to create a projectile (wrong weapon ID or projectiles limit was reached).
function createProjectile() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetSoundFFTData)

`iSamples`: Must be one of 256, 512, 1024, 2048, 4096, 8192, or 16384. Stream sounds must be playing and buffered.
]]
---@type fun(sound: sound, iSamples: 256 | 512 | 1024 | 2048 | 4096 | 8192 | 16384, iBands?: integer): waveData:{[integer]: number} | false Returns a table of iSamples/2 (or iBands if iBands is used) floats representing the current audio frame. Returns false if the sound is not playing yet or hasn't buffered in the case of streams.
function getSoundFFTData() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetSoundBPM)
]]
---@type fun(sound: sound): beatsPerMinute: integer Returns the beats per minute of the given sound.
function getSoundBPM() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetSoundMaxDistance)
]]
---@type fun(sound: sound): integer Returns an integer of the max distance
function getSoundMaxDistance() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetCursorPosition)
]]
---@type (fun(): false) | (fun(): cursorX: number, cursorY: number, worldX: number, worldY: number, worldZ: number) Returns 5 values: cursorX, cursorY, worldX, worldY, worldZ. The first two values are the 2D relative screen coordinates of the cursor. The 3 values that follow are the 3D world map coordinates that the cursor points at. If the cursor isn't showing, returns false as the first value.
function getCursorPosition() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetSoundLength)
]]
---@type fun(theSound: sound): number Returns an float value indicating the playback length of the sound element in seconds.
function getSoundLength() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetSFXStatus)
]]
---@type fun(audioContainer: specialEffectContainerName): boolean Returns true if the sound container is available
function getSFXStatus() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetRadioChannelName)
]]
---@type fun(id: radioChannelId): radioChannelName Returns a string containing the station name if successful
function getRadioChannelName() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetSoundWaveData)
]]
---@type fun(sound: sound, iSamples: 256 | 512 | 1024 | 2048 | 4096 | 8192 | 16384): waveData:{[integer]: number} | false Returns a table of iSamples floats representing the current audio frame waveform, starting from index 0. Returns false if the sound is not playing yet or hasn't buffered in the case of streams.
function getSoundWaveData() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetSoundSpeed)
]]
---@type fun(theSound: sound): number Returns an float value indicating the playback speed of the sound element. Default sound playback speed is 1.0.
function getSoundSpeed() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/IsSoundPaused)
]]
---@type fun(theSound: sound): boolean Returns true if the sound element is paused, false if unpaused or invalid arguments were passed.
function isSoundPaused() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetSoundVolume)
]]
---@type fun(theSound: sound): number Returns a float representing the volume level of the sound element
function getSoundVolume() end

---@alias playSound_syntax_1 fun(soundPath: string, looped?: boolean): sound | false
---@alias playSound_syntax_2 fun(soundURL: string, looped?: boolean, throttled?: boolean): sound | false
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/PlaySound)
]]
---@type playSound_syntax_1 | playSound_syntax_2 Returns a sound element if the sound was successfully created
function playSound() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetSoundPan)
]]
---@type fun(theSound: element): panLevel: number Returns float value with range from -1.0 (left) to 1.0 (right)
function getSoundPan() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/ExecuteBrowserJavascript)
]]
---@type fun(webBrowser: browser, jsCode: string): boolean Returns true if executing Javascript is allowed in the current context
function executeBrowserJavascript() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetSoundProperties)
]]
---@type fun(sound: sound): sampleRate: number, tempo: number, pitch: number, reversed: boolean Returns sample rate, tempo, pitch, and whether the sound is reversed.
function getSoundProperties() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/FocusBrowser)
`webBrowser`: The web browser to be focused - if this is nil, it will unfocus all browsers.
]]
---@type fun(webBrowser?: browser): boolean Returns true if the browser was focused or if nil was passed
function focusBrowser() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetCamera)
]]
---@type fun(): camera Returns an element that corresponds to the game camera
function getCamera() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetElementDistanceFromCentreOfMassToBaseOfModel)
]]
---@type fun(theElement: element): distance: number Returns a float with the distance
function getElementDistanceFromCentreOfMassToBaseOfModel() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/IsPedTargetingMarkerEnabled)
]]
---@type fun(): boolean Returns true if the health target markers are enabled
function isPedTargetingMarkerEnabled() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetSoundSpeed)
]]
---@type fun(theSound: element, speed: number): boolean Returns true if the sound element playback speed was successfully changed
function setSoundSpeed() end

---@alias playSound3D_syntax_1 fun(soundPath: string, x: number, y: number, z: number, looped?: boolean): sound | false
---@alias playSound3D_syntax_2 fun(soundURL: string, x: number, y: number, z: number, looped?: boolean, throttled?: boolean): sound | false
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/PlaySound3D)
]]
---@type playSound3D_syntax_1 | playSound3D_syntax_2 Returns a sound element if the sound was successfully created
function playSound3D() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/IsSoundPanningEnabled)
]]
---@type fun(theSound: sound): boolean Returns true if the sound is valid and it has panning enabled
function isSoundPanningEnabled() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetSoundMaxDistance)
`distance`: the default value for this is 20
]]
---@type fun(sound: sound, distance: integer): boolean Returns a true if the max distance was set
function setSoundMaxDistance() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetSoundMinDistance)
]]
---@type fun(sound: sound): integer Returns an integer of the minimum distance
function getSoundMinDistance() end

---@alias playSFX_syntax_1 (fun(audioContainer: specialEffectContainerName, bankId: integer, soundId: integer, looped?: boolean): sound | false)
---@alias playSFX_syntax_2 (fun(audioContainer: "radio", radioStation: radioStationName, trackId: integer, looped?: boolean): sound | false)
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/PlaySFX)
]]
---@type playSFX_syntax_1 | playSFX_syntax_2 Returns a sound element if the sound was successfully created. It can fail if the original files are missing.
function playSFX() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetSoundPosition)
]]
---@type fun(theSound: element): number Returns a float value indicating the seek position of the sound element in seconds.
function getSoundPosition() end

---@alias playSFX3D_syntax_1 (fun(audioContainer: specialEffectContainerName, bankId: integer, soundId: integer, x: number, y: number, z: number, looped?: boolean): sound | false)
---@alias playSFX3D_syntax_2 (fun(audioContainer: "radio", radioStation: radioStationName, trackId: integer, x: number, y: number, z: number, looped?: boolean): sound | false)
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/PlaySFX3D)
]]
---@type playSFX3D_syntax_1 | playSFX3D_syntax_2 Returns a sound element if the sound was successfully created. It can fail if the original files are missing.
function playSFX3D() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetSoundPanningEnabled)
]]
---@type fun(sound: sound, enable: boolean): boolean  Returns true if the sound is valid and good arguments were passed
function setSoundPanningEnabled() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetSoundPosition)
    `position`: a float value representing the new seek position of the sound element in seconds.
]]
---@type fun(theSound: sound, position: number): boolean Returns true if the sound element's seek position was successfully changed
function setSoundPosition() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetSoundPaused)
]]
---@type fun(theSound: sound, paused: boolean): boolean Returns true if the sound element was successfully paused
function setSoundPaused() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/StopSound)
]]
---@type fun(theSound: sound): boolean Returns true if the sound was successfully stopped
function stopSound() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetSoundMinDistance)
]]
---@type fun(sound: sound, distance: integer): boolean Returns a true if the minimum distance was set
function setSoundMinDistance() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetSoundPan)
]]
---@type fun(theSound: sound, pan: number): boolean Returns true if the sound element pan was successfully changed
function setSoundPan() end

-----------------
-- FX effects --
-----------------

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/FxAddBulletImpact)
]]
---@type fun(posX: number, posY: number, posZ: number, dirX: number, dirY: number, dirZ: number, smokeSize?: integer, sparkCount?: integer, smokeIntensity?: number): boolean Returns a true if the operation was successful
function fxAddBulletImpact() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetSoundEffectEnabled)
]]
---@type fun(soundOrPlayer: sound | player, effectName: soundEffectName, bEnable: boolean): boolean Returns true if the effect was set successfully
function setSoundEffectEnabled() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/FxAddDebris)
]]
---@type fun(posX: number, posY: number, posZ: number, colorR?: integer, colorG?: integer, colorB?: integer, colorA?: integer, scale?: number, count?: integer): boolean Returns a true if the operation was successful
function fxAddDebris() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetSoundVolume)
`volume`: A floating point number representing the desired volume level. Range is from 0.0 to 1.0. This can go above 1.0 for amplification.
]]
---@type fun(theSound: element, volume: number): boolean Returns true if the sound element volume was successfully changed
function setSoundVolume() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/FxAddTankFire)
]]
---@type fun(posX: number, posY: number, posZ: number, dirX: number, dirY: number, dirZ: number): boolean Returns a true if the operation was successful
function fxAddTankFire() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/FxAddFootSplash)
]]
---@type fun(posX: number, posY: number, posZ: number): boolean Returns a true if the operation was successful
function fxAddFootSplash() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/FxAddBulletSplash)
]]
---@type fun(posX: number, posY: number, posZ: number): boolean Returns a true if the operation was successful
function fxAddBulletSplash() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetSoundProperties)
]]
---@type fun(sound: element, fSampleRate: number, fTempo: number, fPitch: number, bReverse?: boolean): boolean Returns true if the properties successfully set
function setSoundProperties() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/FxAddSparks)
* `force`: speed factor: the higher this value, the faster and further the sparks fly.
* `count`: the number of effects to create.
* `acrossLineX`, `acrossLineY`, `acrossLineZ`: a vector starting at the pos coordinates. If specified, the sparks will be created along a line going from pos to pos - acrossLine. If not specified, all sparks originate from the point at pos.
* `blur`: if false, creates standard bullet impact-like sparks. If true, adds motion blur to the sparks.
* `spread`: determines how strongly the particles deviate from each other. With low values the particles will stay quite close together, high values will make them fly in all directions. Also affects their speed.
* `life`: the higher this value, the longer the sparks survive before they disappear.
]]
---@type fun(posX: number, posY: number, posZ: number, dirX: number, dirY: number, dirZ: number, force?: number, count?: integer, acrossLineX?: number, acrossLineY?: number, acrossLineZ?: number, blur?: boolean, spread?: number, life?: number): boolean Returns a true if the operation was successful
function fxAddSparks() end

--[[
If the player's map is showing, it returns four integers: minX, minY, maxX, maxY. These are absolute position coordinates of where the player's map is drawn on the screen.
* `min_x`, `min_y` represent the world coordinates -3000, 3000 (upper-left corner of the world map).
* `max_x`, `max_y` represent the world coordinates 3000, -3000 (lower-right corner of the world map).
Negative values may be returned if these coordinates are off screen.
]]
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetPlayerMapBoundingBox)
    If the map is not showing, a false boolean value is returned.
]]
---@type (fun(): min_x: integer, min_y: integer, max_x: integer, max_y: integer) | (fun(): false)
function getPlayerMapBoundingBox() end

-----------------
-- Element / Stream / Collision --
-----------------

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/IsElementLocal)
]]
---@type fun(theElement: element): boolean Returns true if the passed element is local
function isElementLocal() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/IsElementSyncer)
    Accepted elements are peds and vehicles.
]]
---@type fun(theElement: element): boolean Returns true if the passed element is synced by the local player
function isElementSyncer() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/FxAddTyreBurst)
]]
---@type fun(posX: number, posY: number, posZ: number, dirX: number, dirY: number, dirZ: number): boolean Returns a true if the operation was successful
function fxAddTyreBurst() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetCursorPosition)
]]
---@type fun(cursorX: integer, cursorY: integer): boolean Returns true if the position has been successfully set
function setCursorPosition() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/FxAddWaterHydrant)
]]
---@type fun(posX: number, posY: number, posZ: number): boolean Returns a true if the operation was successful
function fxAddWaterHydrant() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetEffectDensity)
]]
---@type fun(theEffect: effect): density: number Returns the density of an effect.
function getEffectDensity() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/FxAddGlass)
]]
---@type fun(posX: number, posY: number, posZ: number, colorR?: integer, colorG?: integer, colorB?: integer, colorA?: integer, scale?: number, count?: integer): boolean Returns a true if the operation was successful
function fxAddGlass() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetElementBoundingBox)
]]
---@type (fun(theElement: element): false) | (fun(theElement: element): min_x: number, min_y: number, min_z: number, max_x: number, max_y: number, max_z: number) Returns min x, min y, min z, max x, max y, max z if the passed element is valid and streamed in, false otherwise.
function getElementBoundingBox() end

-----------------
-- Browser --
-----------------

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/CreateBrowser)

`isLocal`: Set to false for remote URLs. Returns false if the user disabled remote pages and isLocal was false.
]]
---@type fun(width: integer, height: integer, isLocal: boolean, transparent?: boolean): browser | false Returns a texture of the browser if it was created successfully, false otherwise. Returns also false, if the user disabled remote pages and isLocal was set to false.
function createBrowser() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/FxAddWood)
* `count`: the number of flying droplets to create.
* `brightness`: the brightness. Ranges from 0 (almost black) to 1 (normal color).
]]
---@type fun(posX: number, posY: number, posZ: number, dirX: number, dirY: number, dirZ: number, count?: integer, brightness?: number): boolean Returns a true if the operation was successful
function fxAddWood() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/FxAddGunshot)
]]
---@type fun(posX: number, posY: number, posZ: number, dirX: number, dirY: number, dirZ: number, includeSparks?: boolean): boolean Returns a true if the operation was successful
function fxAddGunshot() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/FxAddBlood)
* `count`: the number of flying droplets to create.
* `brightness`: the brightness. Ranges from 0 (almost black) to 1 (normal color).
]]
---@type fun(posX: number, posY: number, posZ: number, dirX: number, dirY: number, dirZ: number, count?: integer, brightness?: number): boolean
function fxAddBlood() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/FxAddWaterSplash)
]]
---@type fun(posX: number, posY: number, posZ: number): boolean Returns a true if the operation was successful
function fxAddWaterSplash() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/CreateFire)
]]
---@type fun(x: number, y: number, z: number, size?: number): boolean Returns true if successful, false if bad arguments were passed or the limit of active fires was reached. There can be a maximum of 60 active fires.
function createFire() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/FxAddPunchImpact)
]]
---@type fun(posX: number, posY: number, posZ: number, dirX: number, dirY: number, dirZ: number): boolean Returns a true if the operation was successful
function fxAddPunchImpact() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/FxCreateParticle)
]]
---@type fun(particle: fxParticles, posX: number, posY: number, posZ: number,  dirX: number, dirY: number, dirZ: number, r: number, g: number, b: number, a: number, randomizeColors?: boolean, count?: integer, brightness?: number, size?: number, randomSizes?: boolean, life?: number): boolean
function fxCreateParticle() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetEffectSpeed)
]]
---@type fun(theEffect: effect, speed: number): boolean Returns true if the effect speed was successfully changed
function setEffectSpeed() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/CreateEffect)
    `drawDistance`: A floating point number between 1 and 8191 which represents the draw distance of the effect, or 0 to use the default draw distance.
]]
---@see effectName for definitions
---@type fun(name: effectName, x: number, y: number, z: number, rX?: number, rY?: number, rZ?: number, drawDistance?: number, soundEnabled?: boolean): effect
function createEffect() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetObjectMass)
]]
---@type fun(theObject: object): number Returns A float representing the mass of the object. -1 if object was never streamed in.
function getObjectMass() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetGroundPosition)
]]
---@type fun(x: number, y: number, z: number): z: number Returns a float with the highest ground-level Z coord if parameters are valid, 0 if the point you tried to test is outside the loaded world map
function getGroundPosition() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetProjectileCounter)
* Rockets and Grenades will explode when it hits 0
* Teargas may be a duration timer
* Satchels unknown
* Molotov will explode with search ground level when it hits 0
]]
---@type fun(projectile: projectile, timeToDetonate: integer): boolean Returns true on success
function setProjectileCounter() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetGarageBoundingBox)
]]
---@type fun(garageId: garageId): western_x_position: number, eastern_x_position: number, southern_y_position: number, northern_y_position: number
function getGarageBoundingBox() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetElementCollidableWith)
Note <time datetime="2023-12-23">2023-12-23</time>: You can only use this function with the element types listed below.
* Player
* Ped
* Vehicle
* Object
* Weapon
]]
---@type fun(theElement: element, withElement: element, enabled: boolean): boolean Returns true if the collisions were set successfully
function setElementCollidableWith() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetElementRadius)
]]
---@type fun(theElement: element): radius: number Returns a float containing the radius if the element is valid
function getElementRadius() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetPedFootBloodEnabled)
]]
---@type fun(thePlayer: element, enabled: boolean): boolean Returns true if changing the ped's bloody feet status worked.
function setPedFootBloodEnabled() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/IsElementStreamedIn)
]]
---@type fun(theElement: element): boolean Returns true if the passed element is currently streamed in, false if it is virtualized
function isElementStreamedIn() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetEffectDensity)
]]
---@type fun(theEffect: effect, density: number): boolean Returns true if the density was successfully changed
function setEffectDensity() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetEffectSpeed)
]]
---@type fun(theEffect: effect): speed: number Returns float containing the effect's speed
function getEffectSpeed() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/IsElementWaitingForGroundToLoad)
]]
---@type fun(theElement: element): boolean Returns true if the specified element is frozen waiting for collisions of custom map objects to load. Returns false if it's not or if the specified element is invalid.
function isElementWaitingForGroundToLoad() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/TriggerServerEvent)
]]
---@type fun(event: string, theElement: element, arg1?: unknownSyncAble, arg2?: unknownSyncAble, arg3?: unknownSyncAble, arg4?: unknownSyncAble, arg5?: unknownSyncAble, arg6?: unknownSyncAble, arg7?: unknownSyncAble, arg8?: unknownSyncAble, arg9?: unknownSyncAble, arg10?: unknownSyncAble, ...): boolean Returns true if the event trigger has been sent, false if invalid arguments were specified or a client side element was a parameter.
function triggerServerEvent() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetLightRadius)
]]
---@type fun(theLight: light, radius: number): boolean Returns true if the function was successful
function setLightRadius() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/IsElementStreamable)
]]
---@type fun(theElement: element): boolean Returns true if the passed element is streamable like normal, false if this element must always be streamed in.
function isElementStreamable() end

--- Note: You can also use the predefined variable localPlayer <br>
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetLocalPlayer)
]]
---@type fun(): player Returns the local player element.
function getLocalPlayer() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/IsElementCollidableWith)
Note <time datetime="2023-12-23">2023-12-23</time>: You can only use this function with the element types listed below.
* Player
* Ped
* Vehicle
* Object
* Weapon
]]
---@type fun(theElement: element, withElement: element): boolean Returns true if the elements collide with each other
function isElementCollidableWith() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetSearchLightEndPosition)
]]
---@type fun(theSearchLight: searchlight): x: number, y: number, z: number This function will return three float values, which are the three coordinates of searchlight's end position
function getSearchLightEndPosition() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetAnalogControlState)
]]
---@type fun(control: controlName, state?: number, forceOverrideNextFrame?: boolean): boolean Returns true if the control state was successfully set
function setAnalogControlState() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetSearchLightEndRadius)
]]
---@type fun(theSearchLight: searchlight): radius: number
function getSearchLightEndRadius() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetProjectileTarget)
    Returns the element which is the projectile's target if the projectile is valid and can have a target (like a heat-seeking rocket), false otherwise.
    If the projectile is a satchel charge, returns the element at which it is glued to (or nil if it isn't glued to any).
]]
---@type fun(theProjectile: projectile): target: element
function getProjectileTarget() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/TriggerLatentServerEvent)
]]
---@type (fun(event: string, theElement: element,  arg1?: unknownSyncAble, arg2?: unknownSyncAble, arg3?: unknownSyncAble, arg4?: unknownSyncAble, arg5?: unknownSyncAble, arg6?: unknownSyncAble, arg7?: unknownSyncAble, arg8?: unknownSyncAble, arg9?: unknownSyncAble, arg10?: unknownSyncAble, ...): boolean) | (fun(event: string, bandwidth: integer, persist: boolean, theElement: element, arg1?: unknownSyncAble, arg2?: unknownSyncAble, arg3?: unknownSyncAble, arg4?: unknownSyncAble, arg5?: unknownSyncAble, arg6?: unknownSyncAble, arg7?: unknownSyncAble, arg8?: unknownSyncAble, arg9?: unknownSyncAble, arg10?: unknownSyncAble, ...): boolean) Returns true if the event trigger has been sent
function triggerLatentServerEvent() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetElementStreamable)
]]
---@type fun(theElement: element, streamable: boolean): boolean Returns whether the element could be set to be streamable.
function setElementStreamable() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetObjectMass)
]]
---@type fun(theObject: object, mass: number): boolean Returns true if the new mass value has been.
function setObjectMass() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/IsElementOnScreen)
]]
---@type fun(theElement: element): boolean Returns true if element is on screen
function isElementOnScreen() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetSearchLightStartPosition)
]]
---@type fun(theSearchLight: searchlight, startX: number, startY: number, startZ: number): true If every argument is correct, this function returns true.
function setSearchLightStartPosition() end

---@see projectile for definitions
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetProjectileType)
]]
---@type fun(theProjectile: projectile): projectileId Returns an integer over the type of the projectile.
function getProjectileType() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/IsPlayerHudComponentVisible)
]]
---@type fun(component: hudComponent): boolean Returns true if the component is visible
function isPlayerHudComponentVisible() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetInteriorFurnitureEnabled)
]]
---@type fun(roomId: roomTypeId): boolean Returns true if interior furniture is enabled
function getInteriorFurnitureEnabled() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetLightDirection)
]]
---@type fun(theLight: light, x: number, y: number, z: number): boolean Returns true if the function was successful
function setLightDirection() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetBirdsEnabled)
]]
---@type fun(): boolean Returns true if the birds are enabled
function getBirdsEnabled() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetInteriorSoundsEnabled)
]]
---@type fun(): boolean Returns true if music is playing
function getInteriorSoundsEnabled() end

---@see garageId for definitions
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetGaragePosition)
]]
---@type fun(garageId: garageId): x: number, y: number, z: number Returns three floats indicating the position of the garage, x, y and z respectively
function getGaragePosition() end

---@see chatBoxLayout for definitions
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetChatboxLayout)
Returns
* 4 numbers if the CVar contains "color"
* 2 numbers if chat_scale was entered
* boolean if CVar is "chat_use_cegui"
* 1 number if any other CVar was specified
* a table of all CVar values, if CVar was not specified
* false if an invalid CVar was specified
]]
---@type (fun(): chatBoxLayoutAsTable) | (fun(CVar: chatBoxLayoutScale): x: integer, y: integer) | (fun(CVar: chatBoxLayoutColor): r: integer, g: integer, b: integer, a: integer) | (fun(CVar: chatBoxLayoutOther): number)  | (fun(CVar: chatBoxLayoutCEGUI): boolean)
function getChatboxLayout() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/CreateSWATRope)
]]
---@type fun(x: number, y: number, z: number, duration: integer): boolean Returns true if the function was successful.
function createSWATRope() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetGarageSize)
]]
---@type fun(garageId: garageId): x: number, y: number, z: number Returns three floats indicating the size of the garage
function getGarageSize() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetBoundKeys)
]]
---@type fun(commandControl: string | controlName): {[keyName]: "down" | "up"} | false If one or more keys are bound to the specified control or console command, a table is returned indexed by the names of the keys and containing key states as values. If no keys are bound or an invalid name was passed, returns false.
function getBoundKeys() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetKeyState)
]]
---@type fun(keyName: keyName): boolean Returns true if the specified key is pressed
function getKeyState() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetLightColor)
]]
---@type fun(theLight: light, r: number, g: number, b: number): boolean Returns true if the function was successful.
function setLightColor() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/CreateLight)
]]
---@type fun(lightType: lightType, posX: number, posY: number, posZ: number, radius?: number, r?: integer, g?: integer, b?: integer, dirX?: number, dirY?: number, dirZ?: number, createsShadow?: boolean): light Returns the light element if creation was successful
function createLight() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/IsChatBoxInputActive)
]]
---@type fun(): boolean Returns true if the chatbox is receiving input
function isChatBoxInputActive() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetProjectileCreator)
]]
---@type fun(theProjectile: projectile): element Returns the element which created the projectile if successful
function getProjectileCreator() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetDebugViewActive)
]]
---@type fun(enabled: boolean): true
function setDebugViewActive() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetLightType)
]]
---@type fun(theLight: light): lightType Returns an integer containing the type of the specified light.
function getLightType() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetLightDirection)
]]
---@type fun(theLight: light): x: number, y: number, z: number Returns three ints corresponding to the x, y and z coordinates (respectively) of the light direction
function getLightDirection() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetLightRadius)
]]
---@type fun(theLight: light): radius: number Returns a float containing the radius of the specified light.
function getLightRadius() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetLightColor)
]]
---@type fun(theLight: light): r: integer, g: integer, b: integer Returns three ints corresponding to the amount of red, green and blue (respectively) of the light
function getLightColor() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/IsMTAWindowActive)
Returns true if the focus is on any the MTA window

This includes:
* Chatbox input
* Console window
* Main menu
* Transferbox
]]
---@type fun(): boolean
function isMTAWindowActive() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetSearchLightEndPosition)
]]
---@type fun(theSearchLight: searchlight, endX: number, endY: number, endZ: number): boolean If every argument is correct, this function returns true.
function setSearchLightEndPosition() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetSearchLightStartRadius)
]]
---@type fun(theSearchLight: searchlight): radius: number This function will return one float, which is the searchlight's start radius.
function getSearchLightStartRadius() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetSearchLightStartRadius)
]]
---@type fun(theSearchlight: searchlight, startRadius: number): boolean If every argument is correct, this function returns true.
function setSearchLightStartRadius() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/IsConsoleActive)
]]
---@type fun(): boolean Returns true if the console is visible
function isConsoleActive() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/IsMainMenuActive)
]]
---@type fun(): boolean Returns true if the mainmenu is visible
function isMainMenuActive() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/CreateSearchLight)
]]
---@type fun(startX: number, startY: number, startZ: number, endX: number, endY: number, endZ: number, startRadius: number, endRadius: number, renderSpot?: boolean): searchlight If every argument is correct and the limit of 1000 searchlights has not been reached, this function returns a searchlight element.
function createSearchLight() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/IsDebugViewActive)
]]
---@type fun(): boolean Returns true if the debug view is visible
function isDebugViewActive() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetSearchLightEndRadius)
]]
---@type fun(theSearchlight: searchlight, endRadius: number): boolean If every argument is correct, this function returns true.
function setSearchLightEndRadius() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetProjectileCounter)
Returns the the time in milliseconds to detonation which depending on the projectile type will do different things:

* Grenades will explode when it hits 0
* Teargas may be a duration timer
* Both types of rockets will explode when it hits 0
* Satchels unknown
]]
---@type fun(projectile: projectile): integer
function getProjectileCounter() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetProjectileForce)
]]
---@type fun(theProjectile: projectile): number This function returns the force of the specified projectile.
function getProjectileForce() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetSearchLightStartPosition)
]]
---@type fun(theSearchLight: searchlight): x: number, y: number, z: number Return three float values, which are the three coordinates of searchlight's start position.
function getSearchLightStartPosition() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/IsTransferBoxActive)
]]
---@type fun(): boolean Returns true if the file transfer box is visible
function isTransferBoxActive() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/IsBrowserDomainBlocked)
]]
---@type fun(address: string, isURL?: boolean): boolean Returns false if the URL is able to be loaded, true if it is blocked
function isBrowserDomainBlocked() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/IsBrowserFocused)
]]
---@type fun(webBrowser: browser): boolean Returns true if the browser is focused
function isBrowserFocused() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/IsBrowserLoading)
]]
---@type fun(webBrowser: browser): boolean Returns true if the browser is loading a website
function isBrowserLoading() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetBrowserProperty)
]]
---@type fun(theBrowser: browser, key: "mobile"): boolean Returns the value if the property was successfully found
function getBrowserProperty() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetBrowserSettings)
Returns a table having the following keys:
* RemoteEnabled: true if remote websites are enabled, false otherwise
* RemoteJavascript: true if Javascript is enabled on remote websites, false otherwise
* PluginsEnabled: true if plugins such as Flash, Silverlight (but not Java) are enabled, false otherwise. This setting is false by default.
]]
---@type fun(): {RemoteEnabled: boolean, RemoteJavascript: boolean, PluginsEnabled: boolean}
function getBrowserSettings() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetBrowserTitle)
]]
---@type fun(webBrowser: browser): string Returns the title as a string
function getBrowserTitle() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetBrowserURL)
]]
---@type fun(webBrowser: browser): string Returns the web browser URL.
function getBrowserURL() end

--- See for doubleClick: https://github.com/multitheftauto/mtasa-blue/blob/81c939a4e047378d166da28dfce7dfa85bdc368d/Client/mods/deathmatch/logic/luadefs/CLuaBrowserDefs.cpp#L318C87-L318C98
---@type fun(webBrowser: browser, mouseButton: mouseButton, doubleClick?: boolean): boolean Returns true if the click was successfully injected
function injectBrowserMouseDown() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/InjectBrowserMouseMove)
]]
---@type fun(webBrowser: browser, posX: integer, posY: integer): boolean Returns true if the movement was injected successfully
function injectBrowserMouseMove() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/InjectBrowserMouseUp)
]]
---@type fun(webBrowser: browser, mouseButton: mouseButton): boolean Returns true if the click was successfully injected
function injectBrowserMouseUp() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/InjectBrowserMouseWheel)
]]
---@type fun(webBrowser: browser, verticalScroll: integer, horizontalScroll: integer): boolean Returns true if the mouse action was successfully injected
function injectBrowserMouseWheel() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/LoadBrowserURL)
]]
---@type fun(webBrowser: browser, url: string, postData?: string, urlEncoded?: boolean): boolean Returns true if the URL was successfully loaded.
function loadBrowserURL() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/CanBrowserNavigateForward)
]]
---@type fun(webBrowser: browser): boolean Returns true if the browser can go to the next page
function canBrowserNavigateForward() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetBrowserProperty)
]]
---@type fun(theBrowser: browser, key: "mobile", value: "0" | "1"): boolean Returns true if the property was successfully set
function setBrowserProperty() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetBrowserRenderingPaused)
]]
---@type fun(webBrowser: browser, paused: boolean): boolean
function setBrowserRenderingPaused() end

--- `volume`: A floating point number representing the desired volume level. Range is from 0.0 to 1.0
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetBrowserVolume)
]]
---@type (fun(webBrowser: browser, volume: number): boolean) | (fun( volume: number): boolean)
function setBrowserVolume() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/RequestBrowserDomains)
]]
---@type fun(pages: string[], parseAsURL?: boolean, callback?: fun (wasAccepted: boolean, newDomains: string[]) ): boolean Returns true, if the string was successfully read
function requestBrowserDomains() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetBrowserAjaxHandler)
]]
---@type fun(webBrowser: browser, url: string, handler?: fun (get: {[string]: unknown}, post:  {[string]: unknown}): string? ): boolean Returns true if the ajax handler could be created/removed.
function setBrowserAjaxHandler() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetBrowserSource)
]]
---@type fun(webBrowser: browser, callback: fun( code: string ) ): boolean Returns true if valid arguments have been passed
function getBrowserSource() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/ToggleBrowserDevTools)
]]
---@type fun(webBrowser: browser, visible: boolean): boolean Returns true if the visibility was successfully toggled
function toggleBrowserDevTools() end

-----------------
-- Camera / Cursor / Controls --
-----------------

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetCameraClip)
Returns
* `objects`: if you want the camera to clip on objects.
* `vehicles`: if you want the camera to clip on vehicles.
]]
---@type fun(): objects: boolean, vehicles: boolean
function getCameraClip() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetCameraGoggleEffect)
]]
---@type fun(): goggleEffect Returns a string indicating the current camera goggle effect.
function getCameraGoggleEffect() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetCameraViewMode)
### `vehicleCameraMode`
0. Bumper
1. Close external
2. Middle external
3. Far external
4. Low external
5. Cinematic

<hr>

### `pedCameraMode`
1. Close
2. Middle
3. Far
]]
---@type fun(): vehicleCameraMode:vehicleCameraMode, pedCameraMode:pedCameraMode
function getCameraViewMode() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetCameraFieldOfView)
]]
---@type fun(cameraMode: cameraMode): number Returns one float - the field of view angle
function getCameraFieldOfView() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetCameraDrunkLevel)
]]
---@type fun(): integer Returns an integer representing the camera drunk level, from 0 (no drunk effect) to 255 (maximum drunk effect). By default, the camera has no drunk effect
function getCameraDrunkLevel() end

---@deprecated Please use getCameraDrunkLevel instead. Deprecated as of 1.6.0 r21795.
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetCameraShakeLevel)
]]
---@type fun(): integer Returns an integer representing the camera shake level, from 0 (no shaking effect) to 255 (maximum shaking effect). By default, the camera has no shaking effect.
function getCameraShakeLevel() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetCameraClip)
* `objects`: Sets if you want the camera to clip on objects.
* `vehicles`: Sets if you want the camera to clip on vehicles.
]]
---@type fun(objects?: boolean, vehicles?: boolean): true Always returns true.
function setCameraClip() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetCameraViewMode)
### `vehicleCameraMode`
0. Bumper
1. Close external
2. Middle external
3. Far external
4. Low external
5. Cinematic

<hr>

### `pedCameraMode`
1. Close
2. Middle
3. Far
]]
---@type fun(vehicleCameraMode: vehicleCameraMode, pedCameraMode?: pedCameraMode): boolean Returns true if the view(s) were set correctly
function setCameraViewMode() end

--- `fieldOfView`: The field of view angle, 0 to 179.
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetCameraFieldOfView)

`fieldOfView`: 0 to 179. `cameraMode`: `"player"`, `"vehicle"`, or `"vehicle_max"`.
]]
---@type fun(cameraMode: cameraMode, fieldOfView: number, instant?: boolean): boolean Returns true if the arguments are valid
function setCameraFieldOfView() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetCameraDrunkLevel)
]]
---@type fun(shakeLevel: integer): boolean Returns true if the camera drunk level was changed
function setCameraDrunkLevel() end

---@deprecated Use setCameraShakeLevel instead. Deprecated as of 1.6.0 r21795.
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetCameraShakeLevel)
]]
---@type fun(shakeLevel: integer): boolean Returns true if the camera shake level was changed.
function setCameraShakeLevel() end

--- The `alpha` value can be 0-255, where 255 is fully opaque and 0 is fully transparent.
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetCursorAlpha)
]]
---@type fun(alpha: integer): boolean Returns true if the new alpha value was set.
function setCursorAlpha() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetCursorAlpha)
]]
---@type fun(): integer Returns a int between 0 and 255, where 255 is fully opaque and 0 is fully transparent.
function getCursorAlpha() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetCommandsBoundToKey)
]]
---@type fun(theKey: keyName, keyState: keyState): { [string]?: controlName } Returns a table of the commands bound on that key.
function getCommandsBoundToKey() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetKeyBoundToCommand)
]]
---@type fun(command: string): keyName | false Returns a string of first key binded to current command.
function getKeyBoundToCommand() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetAnalogControlState)
]]
---@type fun(control: controlName, rawValue?: boolean): number Returns a float between 0 and 1 indicating the amount the control is pressed.
function getAnalogControlState() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/IsChatVisible)
]]
---@type fun(): boolean Returns true if the chat is visible
function isChatVisible() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetResourceGUIElement)
]]
---@type fun(theResource?: resource): element Returns the root GUI element that contains all the other GUI elements.
function getResourceGUIElement() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetLocalization)
]]
---@type fun(): { code: string, name: string} Returns a table
function getLocalization() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetClipboard)
]]
---@type fun(theText: string | number): boolean Returns true if the text in the clip board was set correctly.
function setClipboard() end

-----------------
-- Water / Weapons --
-----------------

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetWaterLevel)
]]
---@type (fun(posX: number, posY: number, posZ: number, ignoreDistanceToWaterThreshold: false): waterLevel: number | false) | (fun(posX: number, posY: number, posZ: number, ignoreDistanceToWaterThreshold: true): waterLevel: number) | (fun(waterElement: water): waterLevel: number) Returns an integer of the water level if the localPlayer/position is near the water (-3 to 20 on the Z coordinate) else false if there's no water near the localPlayer/position.
function getWaterLevel() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/IsWaterDrawnLast)
]]
---@type fun(): boolean Returns true if water is drawn last in the rendering order
function isWaterDrawnLast() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetWaterDrawnLast)
]]
---@type fun(bEnabled: boolean): boolean Returns true if the rendering order was changed successfully
function setWaterDrawnLast() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/CreateWeapon)
]]
---@type fun(theType: weaponCreateType, x: number, y: number, z: number): weapon Returns a custom weapon element
function createWeapon() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/FireWeapon)
]]
---@type fun(theWeapon: weapon): boolean Returns true if the shot weapon is valid and therefore the shot was fired
function fireWeapon() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetWeaponState)
]]
---@type fun(theWeapon: weapon): weaponState A string if the weapon is valid, indicating the weapon state
function getWeaponState() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetWeaponTarget)
]]
---@type (fun(theWeapon: weapon): target: nil | element) | (fun(theWeapon: weapon): x: number, y: number, z: number) Returns the target of the custom weapon, which can be: `nil` if the weapon is in rotation based targeting. `3 floats` if the weapon is firing at a fixed point. An `element` if the weapon is firing an entity.
function getWeaponTarget() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetWeaponOwner)
]]
---@type fun(theWeapon: weapon): boolean This function was intended to return the player which owns the custom weapon
function getWeaponOwner() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetWeaponFlags)
]]
---@type (fun(theWeapon: weapon, theFlag: weaponFlag_): enabled: boolean) | (fun(theWeapon: weapon, theFlag: "flags"):  checkBuildings: boolean, checkCarTires: boolean, checkDummies: boolean, checkObjects: boolean, checkPeds: boolean, checkVehicles: boolean, checkSeeThroughStuff: boolean, checkShootThroughStuff: boolean) Returns the true or false on success (flags flag returns 8 values) if the flag is enabled or not.
function getWeaponFlags() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetWeaponFiringRate)
]]
---@type fun(theWeapon: weapon): integer Returns an integer with the firing rate of the custom weapon
function getWeaponFiringRate() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetWeaponAmmo)
]]
---@type fun(theWeapon: weapon): integer Returns an integer containing how many ammo left has the weapon
function getWeaponAmmo() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetWeaponClipAmmo)
]]
---@type fun(theWeapon: weapon): integer Returns the amount of ammo in the custom weapon's clip
function getWeaponClipAmmo() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/ResetWeaponFiringRate)
]]
---@type fun(theWeapon: weapon): boolean Returns true on success
function resetWeaponFiringRate() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetWeaponState)
]]
---@type fun(theWeapon: weapon, theState: weaponState): boolean Returns true on success
function setWeaponState() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetWeaponTarget)
]]
---@type (fun(theWeapon: weapon, theTarget: element, theComponent?: boneId | wheelId | 255): boolean) | (fun(theWeapon: weapon, targetX: number, targetY: number, targetZ: number): boolean) | (fun(theWeapon: weapon, reset: nil): boolean) Returns true on success
function setWeaponTarget() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetWeaponFlags)
]]
---@type (fun(theWeapon: weapon, theFlag: weaponFlag_, enable: boolean): boolean) |  (fun(theWeapon: weapon, theFlag: "flags", checkBuildings: boolean, checkCarTires: boolean, checkDummies: boolean, checkObjects: boolean, checkPeds: boolean, checkVehicles: boolean, checkSeeThroughStuff: boolean, checkShootThroughStuff: boolean ): boolean) Returns true if all arguments are valid and the flags where changed
function setWeaponFlags() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetWeaponFiringRate)
]]
---@type fun(theWeapon: weapon, firingRate: integer): boolean Returns true on success
function setWeaponFiringRate() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetWeaponClipAmmo)
]]
---@type fun(theWeapon: weapon, clipAmmo: integer): boolean This function returns true if the arguments are valid and the weapon clip ammo could be changed
function setWeaponClipAmmo() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetNearClipDistance)
]]
---@type fun(): number This function returns a float containing the actual near clip distance.
function getNearClipDistance() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetScreenFromWorldPosition)
]]
---@type (fun(x: number, y: number, z: number, edgeTolerance?: number, relative?: boolean): number|false, number?, number?) Returns two x, y floats indicating the screen position and float distance between screen and given position if successful
function getScreenFromWorldPosition() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetWorldFromScreenPosition)
]]
---@type fun(x: number, y: number, depth: number): number, number, number Returns three x, y, z floats indicating the world position if successful
function getWorldFromScreenPosition() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/IsAmbientSoundEnabled)
]]
---@type fun(theType: ambientSoundType): boolean Returns true if the ambient sound is enabled
function isAmbientSoundEnabled() end

-----------------
-- World / LOS / Ambient sound --
-----------------

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/IsLineOfSightClear)
]]
---@type fun(startX: number, startY: number, startZ: number, endX: number, endY: number, endZ: number, checkBuildings?: boolean, checkVehicles?: boolean, checkPeds?: boolean, checkObjects?: boolean, checkDummies?: boolean, seeThroughStuff?: boolean, ignoreSomeObjectsForCamera?: boolean, ignoredElement?: element): boolean Returns true if the line between the specified points is clear
function isLineOfSightClear() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/IsWorldSoundEnabled)
]]
---@type fun(group: worldSoundGroup, index: integer): boolean Returns true if the world sounds are enabled
function isWorldSoundEnabled() end

--- Some values are only returned if the correct arguments are passed.
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/ProcessLineOfSight)
]]
---@type fun(startX: number, startY: number, startZ: number, endX: number, endY: number, endZ: number, checkBuildings?: boolean, checkVehicles?: boolean, checkPlayers?: boolean, checkObjects?: boolean, checkDummies?: boolean, seeThroughStuff?: boolean, ignoreSomeObjectsForCamera?: boolean, shootThroughStuff?: boolean, ignoredElement?: element, includeWorldModelInformation?: boolean, bIncludeCarTyres?: boolean, bIncludeExtraMateriaInfo?: boolean): hit: boolean, x: number, y: number, z: number, element, nx: number, ny: number, nz: number, mat: integer, lighting: number, piece: integer, worldModel: integer, x: number, y: number, z: number, rx: number, ry: number, rz: number, worldLOD: integer, uvX: number, uvY: number, textureName: string, frameName: string, modelHitX: number, modelHitY: number, modelHitZ: number
function processLineOfSight() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/ResetAmbientSounds)
]]
---@type fun(): boolean Returns true if the ambient sounds were reset
function resetAmbientSounds() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/ResetWorldSounds)
]]
---@type fun(): boolean Returns true if the world sounds were reset
function resetWorldSounds() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetAmbientSoundEnabled)
]]
---@type fun(theType: ambientSoundType, enable: boolean): boolean Returns true if the ambient sound was set correctly
function setAmbientSoundEnabled() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetBirdsEnabled)
]]
---@type fun(enable: boolean): boolean Returns true if the birds state was changed successfully
function setBirdsEnabled() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetInteriorFurnitureEnabled)
###  `roomId`: The room type which you want disable or enable the furniture in:
0. shop
1. office
2. lounge
3. bedroom
4. kitchen
]]
---@type fun(roomId: roomTypeId, enabled: boolean): boolean Returns true if successful.
function setInteriorFurnitureEnabled() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetNearClipDistance)
    `distance` must be between 0.1 and 20 for the function to do any effect. Default value is 0.3.
]]
---@type fun(distance: number): boolean This function returns true if the argument is valid.
function setNearClipDistance() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/TestLineAgainstWater)
]]
---@type fun(startX: number, startY: number, startZ: number, endX: number, endY: number, endZ: number): boolean, x: number, y: number, z: number Returns true and the position of the intersection point of the line and the water surface if there is a collision
function testLineAgainstWater() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/ExtinguishFire)
]]
---@type (fun(): boolean) |  (fun(x: number, y: number, z: number, radius?: number): boolean) Returns true if successful
function extinguishFire() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetWorldSoundEnabled)
]]
---@type (fun(group: worldSoundGroup, enable: boolean, immediate? : boolean) : boolean) | (fun(group: worldSoundGroup, index: integer, enable: boolean, immediate? : boolean) : boolean) Returns true if the world sound was correctly enabled/disabled
function setWorldSoundEnabled() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetCameraGoggleEffect)
]]
---@type fun(goggleEffect: goggleEffect, noiseEnabled?: boolean): boolean Returns true if the effect was set correctly.
function setCameraGoggleEffect() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetSoundBufferLength)
]]
---@type fun(theSound: sound): number | false Returns a float value indicating the buffer playback length of the sound in seconds or false if the sound is not a stream.
function getSoundBufferLength() end

---@alias getObjectProperty_all (fun(theObject: object, property: 'all' ): {mass: number, turn_mass: number, air_resistance: number, elasticity: number, center_of_mass: Vector3, buoyancy: number})
---@alias getObjectProperty_centerOfMass (fun(theObject: object, property: 'center_of_mass' ): x: number, y: number, z: number)
---@alias getObjectProperty_floats (fun(theObject: object, property: "mass" | "turn_mass" | "air_resistance" | "elasticity" | "buoyancy" ): number)
--- Returns on success: table for all, 3 floats for center_of_mass or float for other properties
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetObjectProperty)
]]
---@type getObjectProperty_all | getObjectProperty_centerOfMass | getObjectProperty_floats
function getObjectProperty() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetObjectProperty)
]]
---@type (fun(theObject: object, property: "mass" | "turn_mass" | "air_resistance" | "elasticity" | "buoyancy", value: number): boolean) | (fun(theObject: object, property: "center_of_mass", x: number, y: number, z: number): boolean) Returns true if the property was set successfully
function setObjectProperty() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/DownloadFile)
]]
---@type fun(fileName: string): boolean Returns true if file download has been queued
function downloadFile() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetKeyboardLayout)
]]
---@type fun(): {["readingLayout"]: "ltr" | "rtl" | "ttb-rtl-ltr" | "ttb-ltr"} Returns a table with keyboard layout
function getKeyboardLayout() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/ResetNearClipDistance)
]]
---@type fun(): true Returns always true.
function resetNearClipDistance() end

--- Player element has to be provided on serverside.
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetBlurLevel)
]]
---@type (fun(): integer) | (fun(player: player): integer) Returns the blur level.
function getBlurLevel() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/ResetBlurLevel)
]]
---@type fun(): boolean Default blur level is 36. Returns true if the blur level was reset successfully
function resetBlurLevel() end

--- Player element has to be provided on serverside. Level between 0-255.
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetBlurLevel)
]]
---@type (fun(level: integer): boolean) | (fun(player: player, level: integer): boolean) Returns true if the function was successful
function setBlurLevel() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetColorFilter)
]]
---@type fun(aRed: integer, aGreen: integer, aBlue: integer, aAlpha: integer, bRed: integer, bGreen: integer, bBlue: integer, bAlpha: integer): boolean Values between 0-255. Returns true if the color filter was set
function setColorFilter() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetColorFilter)
]]
---@type fun(original: boolean): aRed: integer, aGreen: integer, aBlue: integer, aAlpha: integer, bRed: integer, bGreen: integer, bBlue: integer, bAlpha: integer Returns 8 integers, of which the first 4 indicate the color (R,G,B,A) of color filter A, and the last 4 indicate the color (R,G,B,A) of color filter B.
function getColorFilter() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/ResetColorFilter)
]]
---@type fun(): boolean Returns true if the color filtering was reset
function resetColorFilter() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetElementBoneMatrix)
]]
---@type fun(theElement: element, bone: boneId): matrixAsTable Returns a multi-dimensional array (which can be transformed into a proper matrix class using Matrix.create method) containing a 4x4 matrix.
function getElementBoneMatrix() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetElementBonePosition)
]]
---@type fun(theElement: element, bone: boneId): x: number, y: number, z: number Returns 3 floats, representing the X, Y, Z world position of the bone.
function getElementBonePosition() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetElementBoneRotation)
]]
---@type fun(theElement: element, bone: boneId): yaw: number, pitch: number, roll: number Returns 3 floats, representing the yaw, pitch, roll rotation values.
function getElementBoneRotation() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetElementBoneMatrix)
]]
---@type fun(theElement: element, bone: boneId, matrix: Matrix): boolean Returns true if the function was successful
function setElementBoneMatrix() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetElementBonePosition)
]]
---@type fun(theElement: element, bone: boneId, x: number, y: number, z: number): boolean Returns true if the function was successful
function setElementBonePosition() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetElementBoneRotation)
]]
---@type fun(theElement: element, bone: boneId, yaw: number, pitch: number, roll: number): boolean Returns true if the function was successful
function setElementBoneRotation() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/UpdateElementRpHAnim)
]]
---@type fun(theElement: element): boolean Returns true if successful
function updateElementRpHAnim() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetRoofPosition)
]]
---@type fun(x: number, y: number, z: number): number|false Returns a float with the lowest roof-level Z coord if parameters are valid, false if the point you tried to test is outside the loaded world map.
function getRoofPosition() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetSoundLooped)
]]
---@type fun(theSound: sound, loop: boolean): boolean Returns true if the sound element loop state was successfully changed
function setSoundLooped() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/IsSoundLooped)
]]
---@type fun(theSound: sound): boolean Returns true if the sound element is looped
function isSoundLooped() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/IsBrowserRenderingPaused)
]]
---@type fun(webBrowser: browser): boolean Returns true if the browser rendering is paused
function isBrowserRenderingPaused() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetSoundEffectParameter)
]]
---@type fun(sound: sound, effectName: soundEffectName, effectParam: string, paramValue: integer|number|boolean): boolean Returns true if effect have been set successfully
function setSoundEffectParameter() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetSoundEffectParameters)
]]
---@type fun(sound: sound, effectName: soundEffectName): {[string]: integer|number|boolean} Returns a table with the parameter names as the keys, and their values.
function getSoundEffectParameters() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/ClearDebugBox)
]]
---@type fun(): true Always returns true.
function clearDebugBox() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/IsChatInputBlocked)
]]
---@type fun(): boolean Returns true if the chat input is blocked, false otherwise.
function isChatInputBlocked() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/IsMTAWindowFocused)
]]
---@type fun(): boolean Returns true if the focus is on the MTA window, false if not.
function isMTAWindowFocused() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/IsCapsLockEnabled)
]]
---@type fun(): boolean Returns true if caps lock is toggled (on), false otherwise.
function isCapsLockEnabled() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetPlayerMapOpacity)
]]
---@type fun(): integer Returns an integer with a value from 0 to 255, where 0 is fully transparent and 255 is fully opaque.
function getPlayerMapOpacity() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/IsShowCollisionsEnabled)
]]
---@type fun(): boolean Returns true if the collision previews are enabled.  (This function only works in development mode.)
function isShowCollisionsEnabled() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/IsShowSoundEnabled)
]]
---@type fun(): boolean Returns true if world sound IDs should be printed in the debug window.  (This function only works in development mode.)
function isShowSoundEnabled() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/ShowSound)
]]
---@type fun(state: boolean): boolean Returns true if the function is successful. (This function only works in development mode.)
function showSound() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/ShowCol)
]]
---@type fun(state: boolean): boolean Returns true if the function is successful. (This function only works in development mode.)
function showCol() end

-----------------
-- SVG --
-----------------

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SvgCreate)
]]
---@type (fun( width: integer,  height: integer, pathOrRawdata?: string, callback?: fun(svgElement: svg)): svgElement:svg) Returns an svg if created successfully
function svgCreate() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SvgGetDocumentXML)
]]
---@type fun(svgElement: svg): xmlnode Returns an xmlnode if successful
function svgGetDocumentXML() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SvgGetSize)
]]
---@type fun(svgElement: svg): width: integer, height: integer Returns two ints, representing width and height
function svgGetSize() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SvgSetDocumentXML)
]]
---@type fun(svgElement: svg, xmlDocument: xmlnode, callBack?: fun(svg: svg) ): boolean Returns true if successful
function svgSetDocumentXML() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SvgSetSize)
]]
---@type fun(svgElement: svg, width: integer, height: integer, callBack?: fun(svgElement: svg) ): boolean Returns true if successful
function svgSetSize() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/IsTransferBoxAlwaysVisible)
]]
---@type fun(): boolean
function isTransferBoxAlwaysVisible() end

-- See status for implementation of this function: https://github.com/multitheftauto/mtasa-blue/pull/2595
---@type fun(svgElement: svg): function
function svgGetUpdateCallback() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SvgSetUpdateCallback)
]]
---@type fun(svgElement: svg, callback: function | boolean): boolean Returns true if successful
function svgSetUpdateCallback() end

-----------------
-- Discord Rich Presence --
-----------------

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/IsDiscordRichPresenceConnected)
]]
---@type fun(): boolean Returns true if Discord Rich Presence is enabled on the client
function isDiscordRichPresenceConnected() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/ResetDiscordRichPresenceData)
]]
---@type fun(): boolean Returns true if function succeeds
function resetDiscordRichPresenceData() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetDiscordApplicationID)
]]
---@type fun(applicationId: string): boolean Returns true if function succeeds
function setDiscordApplicationID() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetDiscordRichPresenceAsset)
]]
---@type fun(assetImage: string, text: string): boolean Returns true if function succeeds
function setDiscordRichPresenceAsset() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetDiscordRichPresenceButton)
]]
---@type fun(index: 1 | 2, text: string, url: string): boolean Returns true if function succeeds
function setDiscordRichPresenceButton() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetDiscordRichPresenceDetails)
]]
---@type fun(details: string): boolean Returns true if function succeeds
function setDiscordRichPresenceDetails() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetDiscordRichPresenceSmallAsset)
]]
---@type fun(assetImage: string, text: string): boolean Returns true if function succeeds
function setDiscordRichPresenceSmallAsset() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetDiscordRichPresenceState)
]]
---@type fun(state: string): boolean Returns true if function succeeds
function setDiscordRichPresenceState() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetDiscordRichPresencePartySize)
    If both values are 0, the party size will not be displayed
]]
---@type fun(size: integer, max: integer): boolean Returns true if function succeeds
function setDiscordRichPresencePartySize() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetDiscordRichPresenceStartTime)
]]
---@type fun(seconds: integer): boolean Returns true if function succeeds
function setDiscordRichPresenceStartTime() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetDiscordRichPresenceEndTime)
]]
---@type fun(seconds: integer): boolean Returns true if function succeeds
function setDiscordRichPresenceEndTime() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetDiscordRichPresenceUserID)
]]
---@type fun(): presenceUserId: string It will return an empty string ("") if the user has not given consent or has disabled the Rich Presence synchronization option. Otherwise, it will return the userid as a string.
function getDiscordRichPresenceUserID() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/EngineFreeTXD)
]]
---@type fun(txdId: integer): boolean Returns true if the TXD was successfully freed
function engineFreeTXD() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/EngineRequestTXD)
]]
---@type fun(name: string): id: integer | false Returns an integer of the TXD ID that was available to be assigned to game models, false if no free TXD ID available. Do not rely on the id numbers returned being consistent across multiple clients or multiple runs of resources.
function engineRequestTXD() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/EngineResetModelTXDID)
]]
---@type fun(modelId: integer): boolean Returns true if this function succeeds
function engineResetModelTXDID() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/EngineSetModelTXDID)
]]
---@type fun(modelId: integer, txdId: integer): boolean Returns true if this function succeeds
function engineSetModelTXDID() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/FileGetContents)
]]
---@type fun(theFile: file, verifyContents?: boolean): string | nil Returns the bytes that were read from the file, but only if verification was disabled or if the checksum comparison succeeded.
function fileGetContents() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/ProcessLineAgainstMesh)
Returns
* hit: true if there is a collision with the given element's mesh, false otherwise [in which case all other values are nil]
* texU, texV: the U, V coordinates on the hit geometry's texture
* textureName: name of the hit geometry's texture
* frameName: hit frame's name
* worldX, worldY, worldZ: collision position in world space
]]
--- Hit
---@alias processLineAgainstMesh_hit  fun(toTest: element, startX: number, startY: number, startZ: number, endX: number, endY: number, endZ: number): hit: true, texU: number, texV: number, textureName: string, frameName: string, worldX: number, worldY: number, worldZ: number
--- No hit
---@alias processLineAgainstMesh_noHit  fun(toTest: element, startX: number, startY: number, startZ: number, endX: number, endY: number, endZ: number): hit: false
---@type processLineAgainstMesh_hit | processLineAgainstMesh_noHit
function processLineAgainstMesh() end

--[[BUILD: 1.6.0 r22837<br>]]
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/TestSphereAgainstWorld)
]]
-- Hit with element
---@alias testSphereAgainstWorld_hitElement  fun(startX: number, startY: number, startZ: number, radius: number, ignoredElement?: element|nil, checkBuildings?: boolean, checkVehicles?: boolean, checkPeds?: boolean, checkObjects?: boolean, checkDummies?: boolean, ignoreSomeObjectsForCamera?: boolean): hit: true, hitElement: element|nil, worldX: number, worldY: number, worldZ: number, worldRotX: number, worldRotY: number, worldRotZ: number, modelId: integer, lodId: integer, entityType: "building"|"vehicle"|"ped"|"object"|"dummy"|string
-- Hit without element
---@alias testSphereAgainstWorld_hitWithoutElement  fun(startX: number, startY: number, startZ: number, radius: number, ignoredElement?: element|nil, checkBuildings?: boolean, checkVehicles?: boolean, checkPeds?: boolean, checkObjects?: boolean, checkDummies?: boolean, ignoreSomeObjectsForCamera?: boolean): hit: true, hitElement: nil, worldX: nil, worldY: nil, worldZ: nil, worldRotX: nil, worldRotY: nil, worldRotZ: nil, modelId: nil, lodId: 0, entityType: nil
-- No hit
---@alias testSphereAgainstWorld_noHit  fun(startX: number, startY: number, startZ: number, radius: number, ignoredElement?: element|nil, checkBuildings?: boolean, checkVehicles?: boolean, checkPeds?: boolean, checkObjects?: boolean, checkDummies?: boolean, ignoreSomeObjectsForCamera?: boolean): hit: false, hitElement: nil, worldX: nil, worldY: nil, worldZ: nil, worldRotX: nil, worldRotY: nil, worldRotZ: nil, modelId: nil, lodId: 0, entityType: nil
---@type testSphereAgainstWorld_hitElement | testSphereAgainstWorld_hitWithoutElement | testSphereAgainstWorld_noHit
function testSphereAgainstWorld() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetGrainLevel)
`level`: The amount of grain (0-255).
]]
---@type fun(level: integer) Returns true if the grain level was set
function setGrainLevel() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetGrainMultiplier)
]]
---@type fun(modifierName: grainModifierName | "all", multiplier: number) Returns true if the grain multiplier was set
function setGrainMultiplier() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetChatboxCharacterLimit)
]]
---@type fun(charLimit: integer): boolean
function setChatboxCharacterLimit() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetChatboxCharacterLimit)
]]
---@type fun(): charLimit: integer
function getChatboxCharacterLimit() end

---Syntax reference: https://github.com/search?q=repo%3Amultitheftauto/mtasa-blue%20CLuaBuildingDefs%3A%3ARemoveAllGameBuildings&type=code
---@deprecated
---@type fun(): nil
function removeAllGameBuildings() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/RemoveGameWorld)
]]
---@type fun(): nil
function removeGameWorld() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/RestoreGameWorld)
]]
---@type fun(): nil
function restoreGameWorld() end

---Syntax reference: https://github.com/search?q=repo%3Amultitheftauto/mtasa-blue%20CLuaBuildingDefs%3A%3ARestoreGameBuildings&type=code
---@deprecated
---@type fun(): nil
function restoreAllGameBuildings() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetVehicleWheelsRotation)
]]
---@type fun(theVehicle: vehicle, rotation: number ): boolean Returns true if successful
function setVehicleWheelsRotation() end

---@see worldPropertyType
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetWorldProperty)
]]
---@type ((fun(worldProperty: worldPropertyTypeRGB, r: integer, g: integer, b: integer):  boolean) | (fun(worldProperty: worldPropertyTypeFloat, value: number):  boolean) | (fun(worldProperty: worldPropertyTypeInteger, value: integer):  boolean) )
function setWorldProperty() end

---@see worldPropertyType
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetWorldProperty)
]]
---@type ((fun(worldProperty: worldPropertyTypeRGB): r: integer, g: integer, b: integer) | (fun(worldProperty: worldPropertyTypeFloat):  number) | (fun(worldProperty: worldPropertyTypeInteger):  integer) )
function getWorldProperty() end

---@see worldPropertyType
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/ResetWorldProperty)
]]
---@type fun(worldProperty: worldPropertyType): boolean
function resetWorldProperty() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetCoronaReflectionEnabled)
]]
---@type fun(theMarker: marker, enabled: boolean): boolean Returns true if successful.
function setCoronaReflectionEnabled() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/IsCoronaReflectionEnabled)
]]
---@type fun(theMarker: marker): boolean Returns true if corona reflection is enabled on the marker.
function isCoronaReflectionEnabled() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetCoronaReflectionsEnabled)

- 0: disabled
- 1: enabled (will be visible during rain)
- 2: force enabled (will be visible even if there is no rain)
]]
---@type fun(enabled: 0|1|2): boolean Returns true if successful.
function setCoronaReflectionsEnabled() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetCoronaReflectionsEnabled)
]]
---@type fun(): enabled: 0|1|2 Returns the corona reflections state.
function getCoronaReflectionsEnabled() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/ResetCoronaReflectionsEnabled)
]]
---@type fun(): true
function resetCoronaReflectionsEnabled() end

-----------------
-- PostFX --
-----------------

--[[BUILD: 1.6.0 r23644]]
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetPostFXValue)
]]
---@see postFXType
---@type fun(fxType: postFXType): number Returns the current float value of the selected PostFX parameter.
function getPostFXValue() end

--[[BUILD: 1.6.0 r23644]]
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetPostFXMode)
]]
---@see postFXModeId
---@type fun(): postFXModeId Returns the current PostFX mode.
function getPostFXMode() end

--[[BUILD: 1.6.0 r23644]]
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/IsPostFXEnabled)
]]
---@see postFXType
---@type fun(fxType: postFXType): boolean Returns true if the selected PostFX type is enabled, otherwise false.
function isPostFXEnabled() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/ShakeCamera)
]]
---@type fun(force: number, x?: number, y?: number, z?: number): true
function shakeCamera() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/ResetShakeCamera)
]]
---@type fun(): true
function resetShakeCamera() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetVehicleEntryPoints)
* Returns false if the vehicle has no entry points.
* Returns the following data when the vehicle is streamed out:  { { 0, 0, 0 }, { 0, 0, 0 }, { 0, 0, 0 }, { 0, 0, 0 } }
]]
---@type fun(theVehicle: vehicle): {[1]: {[1]: number, [2]: number, [3]: number}, [2]:  {[1]: number, [2]: number, [3]: number}, [3]: {[1]: number, [2]: number, [3]: number}, [4]: {[1]: number, [2]: number, [3]: number}} | false
function getVehicleEntryPoints() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetTimeFrozen)
]]
---@type fun(state: boolean): true
function setTimeFrozen() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/IsTimeFrozen)
]]
---@type fun(): boolean
function isTimeFrozen() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/ResetTimeFrozen)
]]
---@type fun(): true
function resetTimeFrozen() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetVolumetricShadowsEnabled)
]]
---@type fun(state: boolean): true
function setVolumetricShadowsEnabled() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/IsVolumetricShadowsEnabled)
]]
---@type fun(): boolean Returns true if enabled
function isVolumetricShadowsEnabled() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/ResetVolumetricShadows)
]]
---@type fun(): true
function resetVolumetricShadows() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetElementBoneQuaternion)
]]
---@type fun(thePed: ped | player, boneId: boneId, x: number, y: number, z: number, w: number): boolean Returns true if successful.
function setElementBoneQuaternion() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetElementBoneQuaternion)
]]
---@type fun(thePed: ped | player, boneId: boneId): x: number, y: number, z: number, w: number Returns the bone quaternion components.
function getElementBoneQuaternion() end

--- Clientside
---@alias resetWorldProperties_client fun(resetSpecialProperties?: boolean, resetWorldProperties?: boolean, resetWeatherProperties?: boolean, resetLODs?: boolean, resetSounds?: boolean): nil
--- Serverside
---@alias resetWorldProperties_server fun(resetSpecialProperties?: boolean, resetWorldProperties?: boolean, resetWeatherProperties?: boolean, resetLODs?: boolean, resetSounds?: boolean, resetGlitches?: boolean, resetJetpackWeapons?: boolean): nil
--- https://github.com/multitheftauto/mtasa-blue/pull/3692
---@type resetWorldProperties_client | resetWorldProperties_server
function resetWorldProperties() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetElementLighting)
]]
---@type fun(theElement: element, lighting: number): boolean
function setElementLighting() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetElementLighting)
]]
---@type fun(theElement: element ): lighting: number | false
function getElementLighting() end

--- Note: This function always returns true for spraycan and fire extinguisher.<br>
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/IsPlayerCrosshairVisible)
]]
---@type fun(): visible: boolean Returns true if the player has the crosshair visible
function isPlayerCrosshairVisible() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/IsBrowserGPUEnabled)
]]
---@type fun(): boolean
function isBrowserGPUEnabled() end

-----------------
-- HUD components --
-----------------

--[[BUILD: 1.6.0 r22868]]
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetPlayerHudComponentProperty)

See [HUD Components](https://wiki.multitheftauto.com/wiki/HUD_Components) and [HUD Properties](https://wiki.multitheftauto.com/wiki/HUD_Properties).
]]
---@alias setPlayerHudComponentProperty_position fun(component: hudComponent, property: hudComponentProperty_position, x: number, y: number): boolean
---@alias setPlayerHudComponentProperty_size fun(component: hudComponent, property: hudComponentProperty_size, width: number, height: number): boolean
---@alias setPlayerHudComponentProperty_fillColor fun(component: hudComponent, property: hudComponentProperty_fillColor, color: color): boolean
---@alias setPlayerHudComponentProperty_fillColorSecondary fun(component: hudComponent_money, property: hudComponentProperty_fillColorSecondary, color: color): boolean
---@alias setPlayerHudComponentProperty_useCustomAlpha fun(component: hudComponent, property: hudComponentProperty_useCustomAlpha, useCustomAlpha: boolean): boolean
---@alias setPlayerHudComponentProperty_drawBlackBorder fun(component: hudComponent, property: hudComponentProperty_drawBlackBorder, drawBlackBorder: boolean): boolean
---@alias setPlayerHudComponentProperty_drawPercentage fun(component: hudComponent, property: hudComponentProperty_drawPercentage, drawPercentage: boolean): boolean
---@alias setPlayerHudComponentProperty_blinkingValue fun(component: hudComponent, property: hudComponentProperty_blinkingValue, blinkingValue: number): boolean
---@alias setPlayerHudComponentProperty_dropColor fun(component: hudComponent, property: hudComponentProperty_dropColor, dropColor: color): boolean
---@alias setPlayerHudComponentProperty_fontOutline fun(component: hudComponent, property: hudComponentProperty_fontOutline, fontOutline: number): boolean
---@alias setPlayerHudComponentProperty_fontShadow fun(component: hudComponent, property: hudComponentProperty_fontShadow, fontShadow: number): boolean
---@alias setPlayerHudComponentProperty_fontStyle fun(component: hudComponent, property: hudComponentProperty_fontStyle, fontStyle: "menu" | "subtitles" | "pricedown" | "gothic"): boolean
---@alias setPlayerHudComponentProperty_fontAlignment fun(component: hudComponent, property: hudComponentProperty_fontAlignment, fontAlignment: "left" | "center" | "right"): boolean
---@alias setPlayerHudComponentProperty_proportional fun(component: hudComponent, property: hudComponentProperty_proportional, proportional: boolean): boolean
---@alias setPlayerHudComponentProperty_textSize fun(component: hudComponent, property: hudComponentProperty_textSize, width: number, height: number): boolean
---@type setPlayerHudComponentProperty_position | setPlayerHudComponentProperty_size | setPlayerHudComponentProperty_fillColor | setPlayerHudComponentProperty_fillColorSecondary | setPlayerHudComponentProperty_useCustomAlpha | setPlayerHudComponentProperty_drawBlackBorder | setPlayerHudComponentProperty_drawPercentage | setPlayerHudComponentProperty_blinkingValue | setPlayerHudComponentProperty_dropColor | setPlayerHudComponentProperty_fontOutline | setPlayerHudComponentProperty_fontShadow | setPlayerHudComponentProperty_fontStyle | setPlayerHudComponentProperty_fontAlignment | setPlayerHudComponentProperty_proportional | setPlayerHudComponentProperty_textSize Returns true if the property was set successfully
function setPlayerHudComponentProperty() end

--[[BUILD: 1.6.0 r22868]]
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetPlayerHudComponentProperty)
]]
---@alias getPlayerHudComponentProperty_position fun(component: hudComponent, property: hudComponentProperty_position): x: number, y: number
---@alias getPlayerHudComponentProperty_size fun(component: hudComponent, property: hudComponentProperty_size): width: number, height: number
---@alias getPlayerHudComponentProperty_fillColor fun(component: hudComponent, property: hudComponentProperty_fillColor): r: number, g: number, b: number, a: number
---@alias getPlayerHudComponentProperty_fillColorSecondary fun(component: hudComponent, property: hudComponentProperty_fillColorSecondary): r: number, g: number, b: number, a: number
---@alias getPlayerHudComponentProperty_useCustomAlpha fun(component: hudComponent, property: hudComponentProperty_useCustomAlpha): useCustomAlpha: boolean
---@alias getPlayerHudComponentProperty_drawBlackBorder fun(component: hudComponent, property: hudComponentProperty_drawBlackBorder): drawBlackBorder: boolean
---@alias getPlayerHudComponentProperty_drawPercentage fun(component: hudComponent, property: hudComponentProperty_drawPercentage): drawPercentage: boolean
---@alias getPlayerHudComponentProperty_blinkingValue fun(component: hudComponent, property: hudComponentProperty_blinkingValue): blinkingValue: number
---@alias getPlayerHudComponentProperty_dropColor fun(component: hudComponent, property: hudComponentProperty_dropColor): dropColor: color
---@alias getPlayerHudComponentProperty_fontOutline fun(component: hudComponent, property: hudComponentProperty_fontOutline): fontOutline: number
---@alias getPlayerHudComponentProperty_fontShadow fun(component: hudComponent, property: hudComponentProperty_fontShadow): fontShadow: number
---@alias getPlayerHudComponentProperty_fontStyle fun(component: hudComponent, property: hudComponentProperty_fontStyle): fontStyle: "menu" | "subtitles" | "pricedown" | "gothic"
---@alias getPlayerHudComponentProperty_fontAlignment fun(component: hudComponent, property: hudComponentProperty_fontAlignment): fontAlignment: "left" | "center" | "right"
---@alias getPlayerHudComponentProperty_proportional fun(component: hudComponent, property: hudComponentProperty_proportional): proportional: boolean
---@alias getPlayerHudComponentProperty_textSize fun(component: hudComponent, property: hudComponentProperty_textSize): width: number, height: number
---@type getPlayerHudComponentProperty_position | getPlayerHudComponentProperty_size | getPlayerHudComponentProperty_fillColor | getPlayerHudComponentProperty_fillColorSecondary | getPlayerHudComponentProperty_useCustomAlpha | getPlayerHudComponentProperty_drawBlackBorder | getPlayerHudComponentProperty_drawPercentage | getPlayerHudComponentProperty_blinkingValue | getPlayerHudComponentProperty_dropColor | getPlayerHudComponentProperty_fontOutline | getPlayerHudComponentProperty_fontShadow | getPlayerHudComponentProperty_fontStyle | getPlayerHudComponentProperty_fontAlignment | getPlayerHudComponentProperty_proportional | getPlayerHudComponentProperty_textSize
function getPlayerHudComponentProperty() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/ResetPlayerHudComponentProperty)
]]
---@type fun(component: hudComponent, property: hudComponentProperty): boolean
function resetPlayerHudComponentProperty() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetWeaponRenderEnabled)
]]
---@type fun(state: boolean): true
function setWeaponRenderEnabled() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/IsWeaponRenderEnabled)
]]
---@type fun(): state: boolean
function isWeaponRenderEnabled() end

--- Primary
---@alias killPedTask_primary fun(thePed: ped, taskName: pedPrimaryTasks, taskNumber: pedPrimaryTaskSlots, gracefully?: boolean): boolean
--- Secondary
---@alias killPedTask_secondary fun(thePed: ped, taskName: pedSecondaryTasks, taskNumber: pedSecondaryTaskSlots, gracefully?: boolean): boolean
--- Gracefully: If set to true the animation will be cut in a smooth transition, false otherwise.
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/KillPedTask)
]]
---@type killPedTask_primary | killPedTask_secondary
function killPedTask() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetServerIp)
]]
---@type fun(includePort?: boolean): ip: string
function getServerIp() end

--[[
See [AddClothingModel](https://wiki.multitheftauto.com/wiki/AddClothingModel) — no dedicated wiki page for removeClothingModel yet.
]]
---@type fun(texture: string, modelName: string, clothingType: clothesType): boolean Returns true if successful.
function removeClothingModel() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/AddClothingModel)
]]
---@type fun(modelName: string): boolean
function addClothingModel() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/EngineAddClothingModel)
]]
---@type fun(dff: dff, modelName: string): boolean
function engineAddClothingModel() end

