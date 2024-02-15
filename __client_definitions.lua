---@meta clientConfigs
---@diagnostic disable: missing-return
---@diagnostic disable: lowercase-global

--[[
    Credits to the community for all the available syntax and descriptions
]]

---@type fun(shouldFlash: boolean, count?: integer): boolean Default count: 10 Returns false if the window is already in focus or the client has disabled this feature.
function setWindowFlashing () end

---@type fun(webBrowser: browser): boolean Returns true if the browser can navigate back
function canBrowserNavigateBack () end

---@type fun(webBrowser: browser): boolean Returns true if the browser has returned to the previous page
function navigateBrowserBack () end

---@type fun(webBrowser: browser): boolean Returns true if the browser has gone to the next page
function navigateBrowserForward () end

---@type fun(webBrowser: browser, ignoreCache?: boolean): boolean Returns true if the browser has reloaded
function reloadBrowserPage () end

---@type fun(webBrowser: browser, width: number, height: number): boolean Returns true if the browser is resized successfully
function resizeBrowser () end

---@type fun(notificationText: string, iconType?: trayNotificationIconType , useSound?: boolean): boolean Returns true if the notification is correctly created
function createTrayNotification () end

---@type fun(): boolean Returns true if the tray notifications are enabled in the settings
function isTrayNotificationEnabled () end

---@type fun(propertyName: worldSpecialProperty, enabled: boolean): boolean Returns true if successful
function setWorldSpecialPropertyEnabled () end

---@type fun(sound: sound): table
function getSoundEffects () end

---@see radioChannelId for definitions
---@type fun(): radioChannelId
function getRadioChannel () end

---@type (fun(theSound: element): false) | (fun(theSound: element): leftData: integer, rightData: integer) Returns a two integers in range from 0 to 32768. 
function getSoundLevelData () end

---@type fun(): boolean Returns true if the player has the map visible
function isPlayerMapVisible () end

---@alias getSoundMetaTags_syntax_1 (fun(sound: sound): {[soundMetaTags]?: string} | false)
---@alias getSoundMetaTags_syntax_2 (fun(sound: sound, format: soundMetaTags): string | false)
---@type getSoundMetaTags_syntax_1 | getSoundMetaTags_syntax_2 Returns a table, but only a string if format is given, with all data available (keys are listed below) for the sound if successful, false otherwise. If any data is unavailable then the associated key is not written to the table. 
function getSoundMetaTags () end

---@type fun(creator: element, weaponType: projectileId, posX?: number, posY?: number, posZ?: number, force?: number, target?: element, rotX?: number, rotY?: number, rotZ?: number, velX?: number, velY?: number, velZ?: number, model?: integer): projectile | false Returns a projectile element if projectile creation was successful. Returns false if unable to create a projectile (wrong weapon ID or projectiles limit was reached).
function createProjectile () end

---@type fun(sound: sound, iSamples: 256 | 512 | 1024 | 2048 | 4096 | 8192 | 16384, iBands?: integer): waveData:{[integer]: number} | false Returns a table of iSamples/2 (or iBands if iBands is used) floats representing the current audio frame. Returns false if the sound is not playing yet or hasn't buffered in the case of streams.
function getSoundFFTData () end

---@type fun(sound: sound): beatsPerMinute: integer Returns the beats per minute of the given sound.
function getSoundBPM () end

---@type fun(sound: sound): integer Returns an integer of the max distance
function getSoundMaxDistance () end

---@type (fun(): false) | (fun(): cursorX: number, cursorY: number, worldX: number, worldY: number, worldZ: number) Returns 5 values: cursorX, cursorY, worldX, worldY, worldZ. The first two values are the 2D relative screen coordinates of the cursor. The 3 values that follow are the 3D world map coordinates that the cursor points at. If the cursor isn't showing, returns false as the first value. 
function getCursorPosition () end

---@type fun(theSound: sound): number Returns an float value indicating the playback length of the sound element in seconds.
function getSoundLength () end

---@type fun(audioContainer: specialEffectContainerName): boolean Returns true if the sound container is available
function getSFXStatus () end

---@type fun(id: radioChannelId): radioChannelName Returns a string containing the station name if successful
function getRadioChannelName () end

---@type fun(sound: sound, iSamples: 256 | 512 | 1024 | 2048 | 4096 | 8192 | 16384): waveData:{[integer]: number} | false Returns a table of iSamples floats representing the current audio frame waveform, starting from index 0. Returns false if the sound is not playing yet or hasn't buffered in the case of streams. 
function getSoundWaveData () end

---@type fun(theSound: sound): number Returns an float value indicating the playback speed of the sound element. Default sound playback speed is 1.0. 
function getSoundSpeed () end

---@type fun(theSound: sound): boolean Returns true if the sound element is paused, false if unpaused or invalid arguments were passed. 
function isSoundPaused () end

---@type fun(theSound: sound): number Returns a float representing the volume level of the sound element
function getSoundVolume () end

---@alias playSound_syntax_1 fun(soundPath: string, looped?: boolean): sound | false
---@alias playSound_syntax_2 fun(soundURL: string, looped?: boolean, throttled?: boolean): sound | false
---@type playSound_syntax_1 | playSound_syntax_2 Returns a sound element if the sound was successfully created
function playSound () end

---@type fun(theSound: element): panLevel:number Returns float value with range from -1.0 (left) to 1.0 (right)
function getSoundPan () end

---@type fun(webBrowser: browser, jsCode: string): boolean Returns true if executing Javascript is allowed in the current context
function executeBrowserJavascript () end

---@type fun(sound: sound): sampleRate: number, tempo: number, pitch: number, reversed: boolean
function getSoundProperties () end

--[[
`webBrowser`: The web browser to be focused - if this is nil, it will unfocus all browsers.
]]
---@type fun(webBrowser?: browser): boolean Returns true if the browser was focused or if nil was passed
function focusBrowser () end

---@type fun(): camera Returns an element that corresponds to the game camera 
function getCamera () end

---@type fun(theElement: element): distance:number Returns a float with the distance
function getElementDistanceFromCentreOfMassToBaseOfModel () end

---@type fun(): boolean Returns true if the health target markers are enabled
function isPedTargetingMarkerEnabled () end

---@type fun(theSound: element, speed: number): boolean Returns true if the sound element playback speed was successfully changed
function setSoundSpeed () end

---@alias playSound3D_syntax_1 fun(soundPath: string, x: number, y: number, z: number, looped?: boolean): sound | false
---@alias playSound3D_syntax_2 fun(soundURL: string, x: number, y: number, z: number, looped?: boolean, throttled?: boolean): sound | false
---@type playSound3D_syntax_1 | playSound3D_syntax_2 Returns a sound element if the sound was successfully created
function playSound3D () end

---@type fun(theSound: sound): boolean Returns true if the sound is valid and it has panning enabled
function isSoundPanningEnabled () end

--[[
`distance`: the default value for this is 20
]]
---@type fun(sound: sound, distance: integer): boolean Returns a true if the max distance was set
function setSoundMaxDistance () end

---@type fun(sound: sound): integer Returns an integer of the minimum distance
function getSoundMinDistance () end

---@alias playSFX_syntax_1 (fun(audioContainer: specialEffectContainerName, bankId: integer, soundId: integer, looped?: boolean): sound | false)
---@alias playSFX_syntax_2 (fun(audioContainer: "radio", radioStation: radioStationName, trackId: integer, looped?: boolean): sound | false)
---@type playSFX_syntax_1 | playSFX_syntax_2 Returns a sound element if the sound was successfully created. It can fail if the original files are missing.
function playSFX () end

---@type fun(theSound: element): number Returns a float value indicating the seek position of the sound element in seconds.
function getSoundPosition () end

---@alias playSFX3D_syntax_1 (fun(audioContainer: specialEffectContainerName, bankId: integer, soundId: integer, x: number, y: number, z: number, looped?: boolean): sound | false)
---@alias playSFX3D_syntax_2 (fun(audioContainer: "radio", radioStation: radioStationName, trackId: integer, x: number, y: number, z: number, looped?: boolean): sound | false)
---@type playSFX3D_syntax_1 | playSFX3D_syntax_2 Returns a sound element if the sound was successfully created. It can fail if the original files are missing.
function playSFX3D () end

---@type fun(sound: sound, enable: boolean): boolean  Returns true if the sound is valid and good arguments were passed
function setSoundPanningEnabled () end

--[[
    `position`: a float value representing the new seek position of the sound element in seconds.
]]
---@type fun(theSound: sound, position: number): boolean Returns true if the sound element's seek position was successfully changed
function setSoundPosition () end

---@type fun(theSound: sound, paused: boolean): boolean Returns true if the sound element was successfully paused
function setSoundPaused () end

---@type fun(theSound: sound): boolean Returns true if the sound was successfully stopped
function stopSound () end

---@type fun(sound: sound, distance: integer): boolean Returns a true if the minimum distance was set
function setSoundMinDistance () end

---@type fun(theSound: sound, pan: number): boolean Returns true if the sound element pan was successfully changed
function setSoundPan () end

---@type fun(posX: number, posY: number, posZ: number, dirX: number, dirY: number, dirZ: number, smokeSize?: integer, sparkCount?: integer, smokeIntensity?: number): boolean Returns a true if the operation was successful
function fxAddBulletImpact () end

---@type fun(soundOrPlayer: sound | player, effectName: soundEffectName, bEnable: boolean): boolean Returns true if the effect was set successfully
function setSoundEffectEnabled () end

---@type fun(posX: number, posY: number, posZ: number, colorR?: integer, colorG?: integer, colorB?: integer, colorA?: integer, scale?: number, count?: integer): boolean Returns a true if the operation was successful
function fxAddDebris () end

--[[
`volume`: A floating point number representing the desired volume level. Range is from 0.0 to 1.0. This can go above 1.0 for amplification.
]]
---@type fun(theSound: element, volume: number): boolean Returns true if the sound element volume was successfully changed
function setSoundVolume () end

---@type fun(posX: number, posY: number, posZ: number, dirX: number, dirY: number, dirZ: number): boolean Returns a true if the operation was successful
function fxAddTankFire () end

---@type fun(posX: number, posY: number, posZ: number): boolean Returns a true if the operation was successful
function fxAddFootSplash () end

---@type fun(posX: number, posY: number, posZ: number): boolean Returns a true if the operation was successful
function fxAddBulletSplash () end

---@type fun(sound: element, fSampleRate: number, fTempo: number, fPitch: number, bReverse?: boolean): boolean Returns true if the properties sucessfully set
function setSoundProperties () end

--[[
* `force`: speed factor: the higher this value, the faster and further the sparks fly.
* `count`: the number of effects to create.
* `acrossLineX`, `acrossLineY`, `acrossLineZ`: a vector starting at the pos coordinates. If specified, the sparks will be created along a line going from pos to pos - acrossLine. If not specified, all sparks originate from the point at pos.
* `blur`: if false, creates standard bullet impact-like sparks. If true, adds motion blur to the sparks.
* `spread`: determines how strongly the particles deviate from each other. With low values the particles will stay quite close together, high values will make them fly in all directions. Also affects their speed.
* `life`: the higher this value, the longer the sparks survive before they disappear.
]]
---@type fun(posX: number, posY: number, posZ: number, dirX: number, dirY: number, dirZ: number, force?: number, count?: integer, acrossLineX?: number, acrossLineY?: number, acrossLineZ?: number, blur?: boolean, spread?: number, life?: number): boolean Returns a true if the operation was successful
function fxAddSparks () end

--[[
If the player's map is showing, it returns four integers: minX, minY, maxX, maxY. These are absolute position coordinates of where the player's map is drawn on the screen.
* `min_x`, `min_y` represent the world coordinates -3000, 3000 (upper-left corner of the world map).
* `max_x`, `max_y` represent the world coordinates 3000, -3000 (lower-right corner of the world map).
Negative values may be returned if these coordinates are off screen.  
]]
--[[
    If the map is not showing, a false boolean value is returned.
]]
---@type (fun(): min_x: integer, min_y: integer, max_x: integer, max_y: integer) | (fun(): false)
function getPlayerMapBoundingBox () end

---@type fun(theElement: element): boolean Returns true if the passed element is local
function isElementLocal () end

--[[
    Accepted elements are peds and vehicles.
]]
---@type fun(theElement: element): boolean Returns true if the passed element is synced by the local player
function isElementSyncer () end

---@type fun(posX: number, posY: number, posZ: number, dirX: number, dirY: number, dirZ: number): boolean Returns a true if the operation was successful
function fxAddTyreBurst () end

---@type fun(cursorX: integer, cursorY: integer): boolean Returns true if the position has been successfully set
function setCursorPosition () end

---@type fun(posX: number, posY: number, posZ: number): boolean Returns a true if the operation was successful
function fxAddWaterHydrant () end

---@type fun(theEffect: effect): density:number Return the density of an effect
function getEffectDensity () end

---@type fun(posX: number, posY: number, posZ: number, colorR?: integer, colorG?: integer, colorB?: integer, colorA?: integer, scale?: number, count?: integer): boolean Returns a true if the operation was successful
function fxAddGlass () end

---@type (fun(theElement: element): false) | (fun(theElement: element): min_x: number, min_y: number, min_z: number, max_x: number, max_y: number, max_z: number) Returns min x, min y, min z, max x, max y, max z if the passed element is valid and streamed in, false otherwise.
function getElementBoundingBox () end

---@type fun(width: integer, height: integer, isLocal: boolean, transparent?: boolean): browser | false Returns a texture of the browser if it was created successfully, false otherwise. Returns also false, if the user disabled remote pages and isLocal was set to false. 
function createBrowser () end

--[[
* `count`: the number of flying droplets to create.
* `brightness`: the brightness. Ranges from 0 (almost black) to 1 (normal color).
]]
---@type fun(posX: number, posY: number, posZ: number, dirX: number, dirY: number, dirZ: number, count?: integer, brightness?: number): boolean Returns a true if the operation was successful
function fxAddWood () end

---@type fun(posX: number, posY: number, posZ: number, dirX: number, dirY: number, dirZ: number, includeSparks?: boolean): boolean Returns a true if the operation was successful
function fxAddGunshot () end

--[[
* `count`: the number of flying droplets to create.
* `brightness`: the brightness. Ranges from 0 (almost black) to 1 (normal color).
]]
---@type fun(posX: number, posY: number, posZ: number, dirX: number, dirY: number, dirZ: number, count?: integer, brightness?: number): boolean
function fxAddBlood () end

---@type fun(posX: number, posY: number, posZ: number): boolean Returns a true if the operation was successful
function fxAddWaterSplash () end

---@type fun(x: number, y: number, z: number, size?: number): boolean Returns true if successful, false if bad arguments were passed or the limit of active fires was reached. There can be a maximum of 60 active fires. 
function createFire () end

---@type fun(posX: number, posY: number, posZ: number, dirX: number, dirY: number, dirZ: number): boolean Returns a true if the operation was successful
function fxAddPunchImpact () end

---@type fun(theEffect: effect, speed: number): boolean Returns true if the effect speed was succesfuly changed
function setEffectSpeed () end

--[[
    `drawDistance`: A floating point number between 1 and 8191 which represents the draw distance of the effect, or 0 to use the default draw distance.
]]
---@see effectName for definitions
---@type fun(name: effectName, x: number, y: number, z: number, rX?: number, rY?: number, rZ?: number, drawDistance?: number, soundEnabled?: boolean): effect
function createEffect () end

---@type fun(theObject: object): number Returns A float representing the mass of the object. -1 if object was never streamed in.
function getObjectMass () end

---@type fun(x: number, y: number, z: number): z:number Returns a float with the highest ground-level Z coord if parameters are valid, 0 if the point you tried to test is outside the loaded world map
function getGroundPosition () end

--[[
* Rockets and Grenades will explode when it hits 0
* Teargas may be a duration timer
* Satchels unknown
* Molotov will explode with search ground level when it hits 0
]]
---@type fun(projectile: projectile, timeToDetonate: integer): boolean Returns true on success
function setProjectileCounter () end

---@type fun(garageId: garageId): western_x_position:number, eastern_x_position:number, southern_y_position:number, northern_y_position: number
function getGarageBoundingBox () end

--[[
Note <time datetime="2023-12-23">2023-12-23</time>: You can only use this function with the element types listed below.
* Player
* Ped
* Vehicle
* Object
* Weapon
]]
---@type fun(theElement: element, withElement: element, enabled: boolean): boolean Returns true if the collisions were set succesfully
function setElementCollidableWith () end

---@type fun(theElement: element): radius:number Returns a float containing the radius if the element is valid
function getElementRadius () end

---@type fun(thePlayer: element, enabled: boolean): boolean Returns true if changing the ped's bloody feet status worked. 
function setPedFootBloodEnabled () end

---@type fun(theElement: element): boolean Returns true if the passed element is currently streamed in, false if it is virtualized
function isElementStreamedIn () end

---@type fun(theEffect: effect, density: number): boolean Returns true if the density was succesfully changed
function setEffectDensity () end

---@type fun(theEffect: effect): speed:number Returns float containing the effect's speed
function getEffectSpeed () end

---@type fun(theElement: element): boolean Returns true if the specified element is frozen waiting for collisions of custom map objects to load. Returns false if it's not or if the specified element is invalid. 
function isElementWaitingForGroundToLoad () end

---@type fun(event: string, theElement: element, ...:any): boolean Returns true if the event trigger has been sent, false if invalid arguments were specified or a client side element was a parameter. 
function triggerServerEvent () end

---@type fun(theLight: light, radius: number): boolean Returns true if the function was successful
function setLightRadius () end

---@type fun(theElement: element): boolean Returns true if the passed element is streamable like normal, false if this element must always be streamed in. 
function isElementStreamable () end

--- Note: You can also use the predefined variable localPlayer <br>
---@type fun(): player Returns the local player element. 
function getLocalPlayer () end

--[[
Note <time datetime="2023-12-23">2023-12-23</time>: You can only use this function with the element types listed below.
* Player
* Ped
* Vehicle
* Object
* Weapon
]]
---@type fun(theElement: element, withElement: element): boolean Returns true if the elements collide with each other
function isElementCollidableWith () end

---@type fun(theSearchLight: searchlight): x:number, y:number, z:number This function will return three float values, which are the three coordinates of searchlight's end position
function getSearchLightEndPosition () end

---@type fun(control: controlName, state?: number, forceOverrideNextFrame?: boolean): boolean Returns true if the control state was successfully set
function setAnalogControlState () end

---@type fun(theSearchLight: searchlight): radius:number
function getSearchLightEndRadius () end

--[[
    Returns the element which is the projectile's target if the projectile is valid and can have a target (like a heat-seeking rocket), false otherwise.
    If the projectile is a satchel charge, returns the element at which it is glued to (or nil if it isn't glued to any). 
]]
---@type fun(theProjectile: projectile): target: element
function getProjectileTarget () end

---@type fun(theObject: object, respawn: boolean): boolean Returns true when the it was changed successfully.
function toggleObjectRespawn () end

---@type (fun(event: string, arguments...): boolean) | (fun(event: string, bandwidth: integer, persist: boolean, arguments...): boolean) Returns true if the event trigger has been sent
function triggerLatentServerEvent () end

---@type fun(theElement: element, streamable: boolean): boolean Returns whether the element could be set to be streamable.
function setElementStreamable () end

---@type fun(theObject: object, mass: number): boolean Returns true if the new mass value has been.
function setObjectMass () end

---@type fun(theElement: element): boolean Returns true if element is on screen
function isElementOnScreen () end

---@type fun(theSearchLight: searchlight, startX: number, startY: number, startZ: number): true If every argument is correct, this function returns true.
function setSearchLightStartPosition () end

---@see projectile for definitions
---@type fun(theProjectile: projectile): projectileId Returns an integer over the type of the projectile.
function getProjectileType () end

---@type fun(component: hudComponent): boolean Returns true if the component is visable
function isPlayerHudComponentVisible () end

---@type fun(roomId: roomTypeId): boolean Returns true if interior furniture is enabled
function getInteriorFurnitureEnabled () end

---@type fun(theLight: light, x: number, y: number, z: number): boolean Returns true if the function was successful
function setLightDirection () end

---@type fun(): boolean Returns true if the birds are enabled
function getBirdsEnabled () end

---@type fun(): boolean Returns true if music is playing
function getInteriorSoundsEnabled () end

---@see garageId for definitions
---@type fun(garageId: garageId): x:number, y:number, z:number Returns three floats indicating the position of the garage, x, y and z respectively
function getGaragePosition () end

---@see chatBoxLayout for definitions
--[[
Returns
* 4 numbers if the CVar contains "color"
* 2 numbers if chat_scale was entered
* boolean if CVar is "chat_use_cegui"
* 1 number if any other CVar was specified
* a table of all CVar values, if CVar was not specified
* false if an invalid CVar was specified
]]
---@type (fun(): chatBoxLayoutAsTable) | (fun(CVar: chatBoxLayoutScale): x:integer, y:integer) | (fun(CVar: chatBoxLayoutColor): r:integer, g:integer, b:integer, a:integer) | (fun(CVar: chatBoxLayoutOther): number)  | (fun(CVar: chatBoxLayoutCEGUI): boolean) 
function getChatboxLayout () end

---@type fun(x: number, y: number, z: number, duration: integer): boolean Returns true if the function was successful.
function createSWATRope () end

---@type fun(garageId: garageId): x:number, y:number, z:number Returns three floats indicating the size of the garage
function getGarageSize () end

---@type fun(commandControl: string | controlName): {[keyName]: "down" | "up"} | false If one or more keys are bound to the specified control or console command, a table is returned indexed by the names of the keys and containing key states as values. If no keys are bound or an invalid name was passed, returns false. 
function getBoundKeys () end

---@type fun(keyName: keyName): boolean Returns true if the specified key is pressed
function getKeyState () end

---@type fun(theLight: light, r: number, g: number, b: number): boolean Returns true if the function was successful.
function setLightColor () end

---@type fun(lightType: lightType, posX: number, posY: number, posZ: number, radius?: number, r?: integer, g?: integer, b?: integer, dirX?: number, dirY?: number, dirZ?: number, createsShadow?: boolean): light Returns the light element if creation was successful
function createLight () end

---@type fun(): boolean Returns true if the chatbox is receiving input
function isChatBoxInputActive () end

---@type fun(theProjectile: projectile): element Returns the element which created the projectile if successful
function getProjectileCreator () end

---@type fun(enabled: boolean): true
function setDebugViewActive () end

---@type fun(theLight: light): lightType Returns an integer containing the type of the specified light.
function getLightType () end

---@type fun(theLight: light): x:number, y:number, z:number Returns three ints corresponding to the x, y and z coordinates (respectively) of the light direction
function getLightDirection () end

---@type fun(theLight: light): radius:number Returns a float containing the radius of the specified light.
function getLightRadius () end

---@type fun(theLight: light): r:integer, g:integer, b:integer Returns three ints corresponding to the amount of red, green and blue (respectively) of the light
function getLightColor () end

--[[
Returns true if the focus is on any the MTA window

This includes:
* Chatbox input
* Console window
* Main menu
* Transferbox
]]
---@type fun(): boolean 
function isMTAWindowActive () end

---@type fun(theSearchLight: searchlight, endX: number, endY: number, endZ: number): boolean If every argument is correct, this function returns true.
function setSearchLightEndPosition () end

---@type fun(theSearchLight: searchlight): radius:number This function will return one float, which is the searchlight's start radius.
function getSearchLightStartRadius () end

---@type fun(theSearchlight: searchlight, startRadius: number): boolean If every argument is correct, this function returns true.
function setSearchLightStartRadius () end

---@type fun(): boolean Returns true if the console is visible
function isConsoleActive () end

---@type fun(): boolean Returns true if the mainmenu is visible
function isMainMenuActive () end

---@type fun(startX: number, startY: number, startZ: number, endX: number, endY: number, endZ: number, startRadius: number, endRadius: number, renderSpot?: boolean): searchlight If every argument is correct and the limit of 1000 searchlights has not been reached, this function returns a searchlight element.
function createSearchLight () end

---@type fun(): boolean Returns true if the debug view is visible
function isDebugViewActive () end

---@type fun(theSearchlight: searchlight, endRadius: number): boolean If every argument is correct, this function returns true.
function setSearchLightEndRadius () end

--[[
Returns the the time in milliseconds to detonation which depending on the projectile type will do different things:

* Grenades will explode when it hits 0
* Teargas may be a duration timer
* Both types of rockets will explode when it hits 0
* Satchels unknown
]]
---@type fun(projectile: projectile): integer
function getProjectileCounter () end

---@type fun(theProjectile: projectile): number This function returns the force of the specified projectile. 
function getProjectileForce () end

---@type fun(theSearchLight: searchlight): x:number, y: number, z:number Return three float values, which are the three coordinates of searchlight's start position.
function getSearchLightStartPosition () end

---@type fun(): boolean Returns true if the file transfer box is visible
function isTransferBoxActive () end

--[[
Returns
* true if the object was successfully broken.
* false if the object is not breakable, or a wrong object was given.
]]
---@type fun(theObject: object): boolean
function breakObject () end

---@type fun(theObject: object): boolean Returns true if the object is breakable.
function isObjectBreakable () end

---@type fun(theObject: object): boolean Returns true if the object was sucessfully respawned.
function respawnObject () end

---@type fun(address: string, isURL?: boolean): boolean Returns false if the URL is able to be loaded, true if it is blocked
function isBrowserDomainBlocked () end

---@type fun(webBrowser: browser): boolean Returns true if the browser is focused
function isBrowserFocused () end

---@type fun(webBrowser: browser): boolean Returns true if the browser is loading a website
function isBrowserLoading () end

---@type fun(theBrowser: browser, key: "mobile"): boolean Returns the value if the property was successfully found
function getBrowserProperty () end

--[[
Returns a table having the following keys:
* RemoteEnabled: true if remote websites are enabled, false otherwise
* RemoteJavascript: true if Javascript is enabled on remote websites, false otherwise
* PluginsEnabled: true if plugins such as Flash, Silverlight (but not Java) are enabled, false otherwise. This setting is false by default.
]]
---@type fun(): {RemoteEnabled: boolean, RemoteJavascript: boolean, PluginsEnabled: boolean}
function getBrowserSettings () end

---@type fun(webBrowser: browser): string Returns the title as a string
function getBrowserTitle () end

---@type fun(webBrowser: browser): string Returns the web browser URL. 
function getBrowserURL () end

---@type fun(webBrowser: browser, mouseButton: mouseButton): boolean Returns true if the click was successfully injected
function injectBrowserMouseDown () end

---@type fun(webBrowser: browser, posX: integer, posY: integer): boolean Returns true if the movement was injected successfully
function injectBrowserMouseMove () end

---@type fun(webBrowser: browser, mouseButton: mouseButton): boolean Returns true if the click was successfully injected
function injectBrowserMouseUp () end

---@type fun(webBrowser: browser, verticalScroll: integer, horizontalScroll: integer): boolean Returns true if the mouse action was successfully injected
function injectBrowserMouseWheel () end

---@type fun(webBrowser: browser, url: string, postData?: string, urlEncoded?: boolean): boolean Returns true if the URL was successfully loaded. 
function loadBrowserURL () end

---@type fun(webBrowser: browser): boolean Returns true if the browser can go to the next page
function canBrowserNavigateForward () end

---@type fun(theBrowser: browser, key: "mobile", value: "0" | "1"): boolean Returns true if the property was successfully set
function setBrowserProperty () end

---@type fun(webBrowser: browser, paused: boolean): boolean
function setBrowserRenderingPaused () end

--- `volume`: A floating point number representing the desired volume level. Range is from 0.0 to 1.0
---@type (fun(webBrowser: browser, volume: number): boolean) | (fun( volume: number): boolean)
function setBrowserVolume () end

---@type fun(pages: {[integer] : string}, parseAsURL?: boolean, callback?: fun (wasAccepted: boolean, newDomains: {[integer] : string}) ): boolean Returns true, if the string was successfully read
function requestBrowserDomains () end

---@type fun(webBrowser: browser, url: string, handler?: fun (get: {[string]: unknown}, post:  {[string]: unknown}): string? ): boolean Returns true if the ajax handler could be created/removed.
function setBrowserAjaxHandler () end

---@type fun(webBrowser: browser, callback: fun( code: string ) ): boolean Returns true if valid arguments have been passed
function getBrowserSource () end

---@type fun(webBrowser: browser, visible: boolean): boolean Returns true if the visibility was successfully toggled
function toggleBrowserDevTools () end

--[[
Returns
* `objects`: if you want the camera to clip on objects.
* `vehicles`: if you want the camera to clip on vehicles.
]]
---@type fun(): objects:boolean, vehicles:boolean
function getCameraClip () end

---@type fun(): goggleEffect Returns a string indicating the current camera goggle effect. 
function getCameraGoggleEffect () end

--[[
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
function getCameraViewMode () end

---@type fun(cameraMode: cameraMode): number Returns one float - the field of view angle 
function getCameraFieldOfView () end

---@type fun(): integer Returns an integer representing the camera drunk level, from 0 (no drunk effect) to 255 (maximum drunk effect). By default, the camera has no drunk effect
function getCameraDrunkLevel () end

---@deprecated Please use getCameraDrunkLevel instead. Deprecated as of 1.6.0 r21795. 
---@type fun(): integer Returns an integer representing the camera shake level, from 0 (no shaking effect) to 255 (maximum shaking effect). By default, the camera has no shaking effect. 
function getCameraShakeLevel () end

--[[
* `objects`: Sets if you want the camera to clip on objects.
* `vehicles`: Sets if you want the camera to clip on vehicles.
]]
---@type fun(objects?: boolean, vehicles?: boolean): true Always returns true.
function setCameraClip () end

--[[
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
---@type fun(vehicleCameraMode: vehicleCameraMode, pedCameraMode?: pedCameraMode): boolean eturns true if the view(s) were set correctly
function setCameraViewMode () end

--- `fieldOfView`: The field of view angle, 0 to 179.
---@type fun(cameraMode: cameraMode, fieldOfView: number): boolean Returns true if the arguments are valid
function setCameraFieldOfView () end

---@type fun(shakeLevel: integer): boolean Returns true if the camera drunk level was changed
function setCameraDrunkLevel () end

---@deprecated Use setCameraShakeLevel instead. Deprecated as of 1.6.0 r21795. 
---@type fun(shakeLevel: integer): boolean Returns true if the camera shake level was changed.
function setCameraShakeLevel () end

--- The `alpha` value can be 0-255, where 255 is fully opaque and 0 is fully transparent.
---@type fun(alpha: integer): boolean Returns true if the new alpha value was set.
function setCursorAlpha () end

---@type fun(): integer Returns a int between 0 and 255, where 255 is fully opaque and 0 is fully transparent. 
function getCursorAlpha () end

---@type fun(theKey: keyName, keyState: keyState): { [string]?: controlName } Returns a table of the commands bound on that key. 
function getCommandsBoundToKey () end

---@type fun(command: string): keyName | false Returns a string of first key binded to current command. 
function getKeyBoundToCommand () end

---@type fun(control: controlName, rawValue?: boolean): number Returns a float between 0 and 1 indicating the amount the control is pressed. 
function getAnalogControlState () end

---@type fun(): boolean Returns true if the chat is visible
function isChatVisible () end

---@type fun(theResource?: resource): element Returns the root GUI element that contains all the other GUI elements. 
function getResourceGUIElement () end

---@type fun(): { code: string, name: string} Returns a table
function getLocalization () end

---@type fun(theText: string | number): boolean Returns true if the text in the clip board was set correctly. 
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
###  `roomId`: The room type which you want disable or enable the furniture in:
0. shop
1. office
2. lounge
3. bedroom
4. kitchen
]]
---@type fun(roomId: roomTypeId, enabled: boolean): boolean Returns true if successful.
function setInteriorFurnitureEnabled () end

--[[
    `distance` must be between 0.1 and 20 for the function to do any effect. Default value is 0.3.
]]
---@type fun(distance: number): boolean This function returns true if the argument is valid.
function setNearClipDistance () end

---@type fun(startX: number, startY: number, startZ: number, endX: number, endY: number, endZ: number): boolean, x:number, y:number, z:number Returns true and the position of the intersection point of the line and the water surface if there is a collision
function testLineAgainstWater () end

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

---@type fun(original: boolean): aRed: integer, aGreen: integer, aBlue: integer, aAlpha: integer, bRed: integer, bGreen: integer, bBlue: integer, bAlpha: integer Returns 8 integers, of which the first 4 indicate the color (R,G,B,A) of color filter A, and the last 4 indicate the color (R,G,B,A) of color filter B. 
function getColorFilter () end

---@type fun(): boolean Returns true if the color filtering was reset
function resetColorFilter () end

---@type fun(theElement: element, bone: boneId): table Returns a multi-dimensional array (which can be transformed into a proper matrix class using Matrix.create method) containing a 4x4 matrix.
function getElementBoneMatrix () end

---@type fun(theElement: element, bone: boneId): x:number, y:number, z:number Returns 3 floats, representing the X, Y, Z world position of the bone. 
function getElementBonePosition () end

---@type fun(theElement: element, bone: boneId): yaw:number, pitch:number, roll:number Returns 3 floats, representing the yaw, pitch, roll rotation values. 
function getElementBoneRotation () end

---@type fun(theElement: element, bone: boneId, matrix: Matrix): boolean Returns true if the function was successful
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

---@deprecated Function has been disabled. Reason/Note: Feature temporarily removed in 22272 due to feedback - Bugtracker Issue: [#3212](https://github.com/multitheftauto/mtasa-blue/issues/3212)
---@type fun(modelId: integer, positionX: number, positionY: number, positionZ: number, rotationX: number, rotationY: number, rotationZ: number, scaleX?: number, scaleY?: number, scaleZ: number) Returns true if the operation was successful
function dxDrawModel3D () end

---@type fun(): boolean Returns true if Discord Rich Presence is enabled on the client
function isDiscordRichPresenceConnected () end

---@type fun(): boolean Returns true if function succeeds
function resetDiscordRichPresenceData () end

---@type fun(applicationId: string): boolean Returns true if function succeeds
function setDiscordApplicationID () end

---@type fun(assetImage: string, text: string): boolean Returns true if function succeeds
function setDiscordRichPresenceAsset () end

---@type fun(index: 1 | 2, text: string, url: string): boolean Returns true if function succeeds
function setDiscordRichPresenceButton () end

---@type fun(details: string): boolean Returns true if function succeeds
function setDiscordRichPresenceDetails () end

---@type fun(assetImage: string, text: string): boolean Returns true if function succeeds
function setDiscordRichPresenceSmallAsset () end

---@type fun(state: string): boolean Returns true if function succeeds
function setDiscordRichPresenceState () end

--[[
    If both values are 0, the party size will not be displayed
]]
---@type fun(size: integer, max: integer): boolean Returns true if function succeeds
function setDiscordRichPresencePartySize () end

---@type fun(seconds: integer): boolean Returns true if function succeeds
function setDiscordRichPresenceStartTime () end

---@type fun(seconds: integer): boolean Returns true if function succeeds
function setDiscordRichPresenceEndTime () end

---@type fun(): presenceUserId: string It will return an empty string ("") if the user has not given consent or has disabled the Rich Presence synchronization option. Otherwise, it will return the userid as a string. 
function getDiscordRichPresenceUserID () end

---@type fun(txdId: integer): boolean Returns true if the TXD was successfully freed
function engineFreeTXD () end

---@type fun(name: string): id: integer | false Returns an integer of the TXD ID that was available to be assigned to game models, false if no free TXD ID available. Do not rely on the id numbers returned being consistent across multiple clients or multiple runs of resources.
function engineRequestTXD () end

---@type fun(modelId: integer): boolean Returns true if this function succeeds
function engineResetModelTXDID () end

---@type fun(modelId: integer, txdId: integer): boolean Returns true if this function succeeds
function engineSetModelTXDID () end

---@type fun(theFile: file, verifyContents?: boolean): string | nil Returns the bytes that were read from the file, but only if verification was disabled or if the checksum comparison succeeded. 
function fileGetContents () end

---@type fun(ped: ped | player): boolean Returns true when the voice was successfully reset
function resetPedVoice () end

---@type fun(theVehicle: vehicle): boolean Returns the rotor speed if successful. This is 0 when the helicopter or plane is stationary, and about 0.2 when it is fully spun up. It can be negative if the rotor rotates counter-clockwise. Returns false in case of failure (an invalid element or a vehicle element that is not a helicopter or plane was passed). 
function getVehicleRotorSpeed() end

---@type  fun(theVehicle: vehicle, speed: number) Returns true if successful
function setVehicleRotorSpeed() end

--[[
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
function processLineAgainstMesh () end

--[[
`level`: The amount of grain (0-255).
]]
---@type fun(level: integer) Returns true if the grain level was set
function setGrainLevel () end

---@type fun(modifierName: grainModifierName | "all", multiplier: number) Returns true if the grain multiplier was set
function setGrainMultiplier () end

---@type fun(charLimit: integer): boolean
function setChatboxCharacterLimit() end