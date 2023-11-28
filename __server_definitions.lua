---@meta serverConfigs
---@diagnostic disable: missing-return

---@type fun(databaseConnection: element, query: string, ...?: string | number): string
function dbPrepareString () end

---@type fun(thePlayer: player): boolean
function resendPlayerACInfo () end

---@type fun(resourceElement: resource): boolean
function isResourceArchived () end

---@type fun(theAccount: account, fromAccount: account): boolean
function copyAccountData () end

---@type fun(theAccount: account): player
function getAccountPlayer () end

---@type fun(theAccount: account, key: string): string
function getAccountData () end

---@type fun(): table
function getLoadedModules () end

---@type fun(moduleName: string): table
function getModuleInfo () end

---@type fun(theTextitem: textitem)
function textDestroyTextItem () end

---@type fun(key: string): boolean
function removeRuleValue () end

---@type fun(key: string): string
function getRuleValue () end

---@type fun(name: string, pass?: string, allowCaseVariations?: boolean): account
function addAccount () end

---@type fun(theAccount: account): string
function getAccountSerial () end

---@type fun(): table
function getAccounts () end

---@type fun(theAccount: account): string
function getAccountName () end

---@type fun(serial: string): table
function getAccountsBySerial () end

---@type fun(username: string, password?: string, caseSensitive?: boolean): account
function getAccount () end

---@type fun(theAccount: account): table
function getAllAccountData () end

---@type fun(theAccount: account): boolean
function removeAccount () end

---@type fun(theAccount: account, password: string, passwordType?: string): boolean
function setAccountPassword () end

---@type fun(thePlayer: player): boolean
function logOut () end

---@type fun(thePlayer: player): account
function getPlayerAccount () end

---@type fun(): boolean
function aclReload () end

---@type fun(theAccount: account, key: string, value: string): boolean
function setAccountData () end

---@type fun(): table
function aclList () end

---@type fun(theAccount: account): boolean
function isGuestAccount () end

---@type fun(thePlayer: player, theAccount: account, thePassword: string): boolean
function logIn () end

---@type fun(theBan: ban): string
function getBanReason () end

---@type fun(): table
function getBans () end

---@type fun(IP?: string, Username?: string, Serial?: string, responsibleElement?: player, reason?: string, seconds?: integer): ban
function addBan () end

---@type fun(): boolean
function aclSave () end

---@type fun(theBan: ban): string
function getBanAdmin () end

---@type fun(theBan: ban): string
function getBanSerial () end

---@type fun(theBan: ban): integer
function getBanTime () end

---@type fun(theBan: ban, theReason: string): boolean
function setBanReason () end

---@type fun(theBan: ban, theNick: string): boolean
function setBanNick () end

---@type fun(theBan: ban): string
function getBanNick () end

---@type fun(theBan: ban): boolean
function isBan () end

---@type fun(): boolean
function reloadBans () end

---@type fun(theBan: ban): integer
function getUnbanTime () end

---@type fun(theBan: ban): string
function getBanIP () end

---@type fun(): string
function getGameType () end

---@type fun(gameType: string): boolean
function setGameType () end

---@type fun(theBan: ban, theTime: integer): boolean
function setUnbanTime () end

---@type fun(theBan: ban, theAdmin: string): boolean
function setBanAdmin () end

---@type (fun(kickedPlayer: player): boolean) | (fun(kickedPlayer: player, reason: string): boolean) | (fun(kickedPlayer: player, responsiblePlayer: player | string, reason: string): boolean)
function kickPlayer () end

---@type fun(theBan: ban, responsibleElement?: player): boolean
function removeBan () end

---@type fun(): string
function getMapName () end

---@type fun(theVehicle: vehicle): boolean
function resetVehicleIdleTime () end

---@type fun(theElement: element, visibleTo: element, visible: boolean): boolean
function setElementVisibleTo () end

---@type fun(bannedPlayer: player, IP?: boolean, Username?: boolean, Serial?: boolean, responsiblePlayer?: player | string, reason?: string, seconds?: integer): ban
function banPlayer () end

---@type fun(theVehicle: vehicle, x: number, y: number, z: number, rx?: number, ry?: number, rz?: number): boolean
function spawnVehicle () end

---@type fun(key: string, value: string): boolean
function setRuleValue () end

---@type fun(mapName: string): boolean
function setMapName () end

---@type fun(query: string, ...?: string | number): table
function executeSQLQuery () end

---@type fun(settingName: string): unknown
function get () end

---@type fun(): integer
function getServerPort () end

---@type fun(settingName: string, value: unknown): boolean
function set () end

---@type fun(): integer
function getServerHttpPort () end

---@type fun(): string
function getServerName () end

---@type fun(theElement: element, visibleTo: element): boolean
function isElementVisibleTo () end

---@type fun(theElement: element, key: string): boolean
function removeElementData () end

---@type fun(): string
function getServerPassword () end

---@type fun(theElement: element): boolean
function clearElementVisibleTo () end

---@type fun(theElement: element, numberxPos, yPos?: number, zPos?: number, cloneChildren?: boolean): element
function cloneElement () end

---@type fun(theElement: element, thePlayer: player): boolean
function setElementSyncer () end

---@type fun(theTextitem: textitem): number
function textItemGetScale () end

---@type fun(resourceName: string, organizationalDir?: string): resource
function createResource () end

---@type fun(theResource: resource): integer
function getResourceLastStartTime () end

---@type fun(filePath: string, filetype?: string): xmlnode
function addResourceConfig () end

---@type fun(theResource: resource, attribute: string): string
function getResourceInfo () end

---@type fun(res: resource): integer
function getResourceLoadTime () end

---@type fun(teamName: string, colorR?: integer, colorG?: integer, colorB?: integer): team
function createTeam () end

---@type fun(theTextItem: textitem): number, number
function textItemGetPosition () end

---@type fun(theTeam: team, friendlyFire: boolean): boolean
function setTeamFriendlyFire () end

---@type fun(thePlayer: player, theTeam: team): boolean
function setPlayerTeam () end

---@type fun(theTextitem: textitem): string
function textItemGetText () end

---@type fun(theTeam: team, newName: string): boolean
function setTeamName () end

---@type fun(theTextItem: textitem): integer, integer, integer, integer
function textItemGetColor () end

---@type fun(theElement: element): table
function getAllElementData () end

---@type fun(theType: string, index: integer): element
function getElementByIndex () end

---@type fun(text: string, x: number, y: number, priority?: string, red?: integer, green?: integer, blue?: integer, alpha?: integer, scale?: number, alignX?: string, alignY?: string, shadowAlpha?: integer): textitem
function textCreateTextItem () end

---@type fun(textitemToCheck: textitem): integer
function textItemGetPriority () end

---@type fun(theTextItem: textitem, r: integer, g: integer, b: integer, a: integer): boolean
function textItemSetColor () end

---@type fun(theTextItem: textitem, priority: string)
function textItemSetPriority () end

---@type fun(theTextItem: textitem, x: number, y: number): boolean
function textItemSetPosition () end

---@type fun(theElement: element): element
function getElementSyncer () end

---@type fun(theVehicle: vehicle): boolean
function respawnVehicle () end

---@type fun(theElement: element, citiesonly?: boolean): string
function getElementZoneName () end

---@type fun(): integer
function getMaxPlayers () end

---@type fun(theResource: resource): string
function getResourceLoadFailureReason () end

---@type fun(theResource: resource): string
function getResourceOrganizationalPath () end

---@type fun(theTextitem: textitem, text: string)
function textItemSetText () end

---@type fun(theTextitem: textitem, scale: number): boolean
function textItemSetScale () end

---@type fun(node: xmlnode, baseElement: element, childrenOnly?: boolean): boolean
function saveMapData () end

---@type fun(theResource: resource, mapName: string): element
function getResourceMapRootElement () end

---@type fun(thePlayer: player, key: string, keyState?: string, handler?: function): boolean
function isKeyBound () end

---@type fun(thePlayer: ped, weapon: integer, ammo?: integer, setAsCurrent?: boolean): boolean
function giveWeapon () end

---@type fun(thePed: ped, choking: boolean): boolean
function setPedChoking () end

---@type fun(filePath: string, integerdimension): xmlnode
function addResourceMap () end

---@type fun(thePed: ped): boolean
function reloadPedWeapon () end

---@type fun(theResource: resource, newResourceName: string, organizationalDir?: string): resource
function copyResource () end

---@type fun(theTeam: team, colorR: integer, colorG: integer, colorB: integer): boolean
function setTeamColor () end

---@type fun(theVehicle: vehicle, sirenCount: integer, sirenType: integer, flag360?: boolean, checkLosFlag?: boolean, useRandomiser?: boolean, silentFlag?: boolean): boolean
function addVehicleSirens () end

---@type fun(thePlayer: player, weaponId: integer, ammo?: integer): boolean
function takeWeapon () end

---@type fun(theVehicle: vehicle): boolean
function removeVehicleSirens () end

---@type fun(theVehicle: vehicle): boolean
function resetVehicleExplosionTime () end

---@type fun(name: string, value: string, bSave?: boolean): boolean
function setServerConfigSetting () end

---@type fun(name: string): string
function getServerConfigSetting () end

---@type fun(node: xmlnode, parent: element): element
function loadMapData () end

---@type fun(thePed: ped): number
function getPedGravity () end

---@type fun(thePed: ped, gravity: number): boolean
function setPedGravity () end

---@type fun(thePlayer: element, key: string): string
function getPlayerAnnounceValue () end

---@type fun(thePed: ped): boolean
function takeAllWeapons () end

---@type fun(theVehicle: vehicle, Respawn: boolean): boolean
function toggleVehicleRespawn () end

---@type fun(weapon: string, enabled: boolean): boolean
function setJetpackWeaponEnabled () end

---@type fun(weapon: string): boolean
function getJetpackWeaponEnabled () end

---@type fun(): integer
function getPlayerCount () end

---@type fun(thePlayer: player): string
function getPlayerIP () end

---@type fun(thePlayer: player): integer
function getPlayerIdleTime () end

---@type fun(): table
function getDeadPlayers () end

---@type fun(): table
function getResources () end

---@type fun(thePlayer: player): string
function getPlayerSerial () end

---@type fun(thePlayer: player): string
function getPlayerVersion () end

---@type fun(): table
function getAlivePlayers () end

---@type fun(resourceName: string): boolean
function deleteResource () end

---@type fun(thePlayer: player): boolean
function isPlayerMuted () end

---@type fun(): player | false
function getRandomPlayer () end

---@type fun(theResource: resource): table
function getResourceACLRequests () end

---@type fun(host: string, queueName?: string, connectionAttempts: integer, connectTimeout: integer, resourceName: string, functionName: string, callbackFunction: function, ...?: any): boolean
function callRemote () end

---@type fun(thePlayer: player, serverIP: string, serverPort: integer, serverPassword?: string): boolean
function redirectPlayer () end

---@type fun(aclName: string): acl
function aclGet () end

---@type fun(aclName: string): acl
function aclCreate () end

---@type fun(theACL: acl): boolean
function aclDestroy () end

---@type fun(theAcl: acl): string
function aclGetName () end

---@type fun(theAcl: acl, rightName: string): boolean
function aclGetRight () end

---@type fun(theAcl: acl, rightName: string, hasAccess: boolean): boolean
function aclSetRight () end

---@type fun(theACL: acl, allowedType: string): table
function aclListRights () end

---@type fun(theAcl: acl, rightName: string): boolean
function aclRemoveRight () end

---@type fun(groupName: string): aclgroup
function aclGetGroup () end

---@type fun(groupName: string): aclgroup
function aclCreateGroup () end

---@type fun(aclGroup: aclgroup): boolean
function aclDestroyGroup () end

---@type fun(): table
function aclGroupList () end

---@type fun(theGroup: aclgroup, theACL: acl): boolean
function aclGroupAddACL () end

---@type fun(theGroup: aclgroup, theObjectName: string): boolean
function aclGroupAddObject () end

---@type fun(aclGroup: aclgroup): string
function aclGroupGetName () end

---@type fun(theGroup: aclgroup): table
function aclGroupListACL () end

---@type fun(theGroup: aclgroup): table
function aclGroupListObjects () end

---@type fun(theGroup: aclgroup, theACL: acl): boolean
function aclGroupRemoveACL () end

---@type fun(theGroup: aclgroup, theObjectString: string): boolean
function aclGroupRemoveObject () end

---@type fun(theObject: string | element, theAction: string, defaultPermission?: boolean): boolean
function hasObjectPermissionTo () end

---@type fun(theObject: string, theGrou: aclgroup): boolean
function isObjectInACLGroup () end

---@type fun(): string
function getCancelReason () end

---@type (fun( name: string, sourceElement: element, ...?: any): boolean) | (fun(sendTo: table | element, name: string, sourceElement: element, ...?: any): boolean)
function triggerClientEvent () end

---@type (fun(name: string, bandwidth?: integer, persist?: boolean, theElement: element, ...?: any): boolean) | (fun(sendTo: table | element, name: string, bandwidth?: integer, persist?: boolean, theElement: element, ...?: any): boolean)
function triggerLatentClientEvent () end

---@type fun(thePlayer?: player): boolean
function resetMapInfo () end

---@type fun(thePickup: pickup): integer
function getPickupRespawnInterval () end

---@type fun(thePickup: pickup): boolean
function isPickupSpawned () end

---@type fun(thePickup: pickup, ms: integer): boolean
function setPickupRespawnInterval () end

---@type fun(thePlayer: player): boolean
function resendPlayerModInfo () end

---@type fun(thePlayer: player, key: string, value: string): boolean
function setPlayerAnnounceValue () end

---@type fun(thePlayer: player, state: boolean): boolean
function setPlayerMuted () end

---@type fun(thePlayer: player, newName: string): boolean
function setPlayerName () end

---@type fun(thePlayer: player, broadcastTo: any): boolean
function setPlayerVoiceBroadcastTo () end

---@type fun(thePlayer: player, ignoreFrom: any): boolean
function setPlayerVoiceIgnoreFrom () end

---@type fun(thePlayer: player, stars: integer): boolean
function setPlayerWantedLevel () end

---@type fun(thePlayer: player, x: number, y: number, z: number, rotation?:integer, skinID?: integer, interior?: integer, dimension?: integer, theTeam?: team): boolean
function spawnPlayer () end

---@type fun(thePlayer: player, width: integer, height: integer, tag?: string, quality?: integer, maxBandwith?: integer): boolean
function takePlayerScreenShot () end

---@type fun(refreshAll?: boolean, targetResource?: resource): boolean
function refreshResources () end

---@type fun(theResource: resource, fileName: string): boolean
function removeResourceFile () end

---@type fun(resourceName: string, newResourceName: string, organizationalPath?: string): boolean
function renameResource () end

---@type fun(theResource: resource, persistent?: boolean, configs?: boolean, maps?: boolean, scripts?: boolean, html?: boolean, clientConfigs?: boolean, clientScripts?: boolean, clientFiles?: boolean): boolean
function restartResource () end

---@type fun(theResource: resource, attribute: string, value: string)
function setResourceInfo () end

---@type fun(theResource: resource, persistent?: boolean, startIncludedResources?: boolean, loadServerConfigs?: boolean, loadMaps?: boolean, loadServerScripts?: boolean, loadHTML?: boolean, loadClientConfigs?: boolean, loadClientScripts?: boolean, loadFiles?: boolean): boolean
function startResource () end

---@type fun(theResource: resource): boolean
function stopResource () end

---@type fun(theResource: resource, rightName: string, access: boolean, byWho?: string): boolean
function updateResourceACLRequest () end

---@type fun(glitchName: string): boolean
function isGlitchEnabled () end

---@type fun(glitchName: string, enable: boolean): boolean
function setGlitchEnabled () end

---@type fun(text: string): boolean
function outputServerLog () end

---@type fun(slots: integer): boolean
function setMaxPlayers () end

---@type fun(password: string): boolean
function setServerPassword () end

---@type fun(reason?: string, exitCode?: number): boolean
function shutdown () end

---@type fun(databaseType: string, host: string, username?: string, password?: string, options?: string): databaseConnection
function dbConnect () end

---@type fun(databaseConnection: databaseConnection, query: string, ...?: string | number): boolean
function dbExec () end

---@type (fun(databaseConnection: databaseConnection, query?: string, ...?: string | number): handle) | (fun(callbackFunction: function, databaseConnection: databaseConnection, query?: string, ...?: string | number): handle) | (fun(callbackFunction: function, callbackArguments: table, databaseConnection: databaseConnection, query?: string, ...?: string | number): handle)
function dbQuery () end

---@type fun(queryHandle: handle, timeout: integer, multipleResults?: boolean): table
function dbPoll () end

---@type fun(queryHandle: handle): boolean
function dbFree () end

---@type fun(): textdisplay
function textCreateDisplay () end

---@type fun(display: textdisplay): boolean
function textDestroyDisplay () end

---@type fun(display: textdisplay, playerToAdd: player)
function textDisplayAddObserver () end

---@type fun(displayToAddTo: textdisplay, itemToAdd: textitem)
function textDisplayAddText () end

---@type fun(display: textdisplay, playerToRemove: player): boolean
function textDisplayRemoveObserver () end

---@type fun(displayToRemoveFrom: textdisplay, itemToRemove: textitem)
function textDisplayRemoveText () end

---@type fun(theDisplay: textdisplay): table
function textDisplayGetObservers () end

---@type fun(display: textdisplay, thePlayer: player): boolean
function textDisplayIsObserver () end

---@type fun(model: integer): table
function getVehiclesOfType () end

---@type fun(model: integer): table
function getModelHandling () end

---@type fun(modelId: integer, property: string, value: any): boolean
function setModelHandling () end

---@type fun(theVehicle: vehicle, timeDelay: integer): boolean
function setVehicleIdleRespawnDelay () end

---@type fun(theVehicle: vehicle, timeDelay: integer): boolean
function setVehicleRespawnDelay () end

---@type fun(theVehicle: vehicle, x: number, y: number, z: number, rx?: number, ry?: number, rz?: number): boolean
function setVehicleRespawnPosition () end

---@type fun(): boolean
function httpClear () end

---@type fun(): boolean
function httpRequestLogin () end

---@type fun(code: integer): boolean
function httpSetResponseCode () end

---@type fun(cookieName: string, cookieValue: string): boolean
function httpSetResponseCookie () end

---@type fun(headerName: string, headerValue: string): boolean
function httpSetResponseHeader () end

---@type fun(data: string, length?: integer): boolean
function httpWrite () end

---@type fun(thePlayer: player, theFunction: function): string
function getKeyBoundToFunction () end

---@type fun(clearFor?: element): boolean
function clearChatBox () end

---@type fun(text: string, visibleTo?: element, r?: integer, g?: integer, b?: integer, colorCoded?: boolean)
function outputChatBox () end

---@type fun(thePed: ped, state: boolean): boolean
function setPedWearingJetpack () end

---@type fun(theAccount: account): string
function getAccountIP () end

---@type fun(id: integer): account
function getAccountByID () end

---@type fun(theAccount: account): integer
function getAccountID () end

---@type fun(theAccount: account, name: string, allowCaseVariations?: boolean): boolean
function setAccountName () end

---@type fun(dataName: string, value: string): table
function getAccountsByData () end

---@type fun(ip: string): table
function getAccountsByIP () end

---@type fun(theVehicle: element): number, number, number
function getVehicleRespawnPosition () end

---@type fun(theVehicle: element): number, number, number
function getVehicleRespawnRotation () end

---@type fun(theElement: element, key: string, thePlayer: player): boolean
function addElementDataSubscriber () end

---@type fun(theElement: element, key: string, thePlayer: player): boolean
function hasElementDataSubscriber () end

---@type fun(theElement: element, key: string, thePlayer: player): boolean
function removeElementDataSubscriber () end

---@type fun(thePlayer: player, control: string, state: boolean): boolean
function setControlState () end

---@type fun(thePlayer: player, controlName: string): boolean
function getControlState () end

---@type fun(thePlayer: player): integer
function getPlayerBlurLevel () end

---@type fun(thePlayer: player): integer
function getPlayerScriptDebugLevel () end

---@type fun(thePlayer: player, level: integer): boolean
function setPlayerBlurLevel () end

---@type fun(thePlayer: player, level: integer): boolean
function setPlayerScriptDebugLevel () end

---@type fun(theResource: resource): boolean
function isResourceProtected () end

---@type fun(theVehicle: vehicle, rx: number, ry: number, rz: number): boolean
function setVehicleRespawnRotation () end
