---@meta serverConfigs
---@diagnostic disable: missing-return
---@diagnostic disable: lowercase-global

--[[
    Credits to the community for all the available syntax and descriptions
]]

---@type fun(databaseConnection: element, query: string, ...: string | number): string
function dbPrepareString() end

---@type fun(thePlayer: player): boolean Returns true if the AC info will be resent, false otherwise.
function resendPlayerACInfo() end

---@type fun(resourceElement: resource): boolean | nil Returns true if the selected resource is archived, false if it is not archived, and nil if some kind of problem occurred.
function isResourceArchived() end

---@type fun(theAccount: account, fromAccount: account): boolean Returns a true if the accounts were valid, false otherwise.
function copyAccountData() end

---@type fun(theAccount: account): player | false Returns a player element if the account is currently in use, false otherwise.
function getAccountPlayer() end

---@type fun(theAccount: account, key: string): string | false Returns a string containing the stored data or false if no data was stored under that key.
function getAccountData() end

---@type fun(): string[]
function getLoadedModules() end

---@type fun(moduleName: string): {version: string, name: string, author: string} | false if invalid name for module is passed, it will return false.
function getModuleInfo() end

---@type fun(theTextitem: textitem)
function textDestroyTextItem() end

---@type fun(key: string): boolean Returns true if the rule value was removed, false if it failed.
function removeRuleValue() end

---@type fun(key: string): string Returns a string containing the value set for the specified key, false if invalid arguments were specified.
function getRuleValue() end

---@type fun(name: string, pass?: string, allowCaseVariations?: boolean): account | false Returns an account or false if the account already exists or an error occured.
function addAccount() end

---@type fun(theAccount: account): string Returns string containing the serial, the string is empty if the account was never used.
function getAccountSerial() end

---@type fun(): account[] A table over the accounts that exist in the server internal.db file. This table might be empty.
function getAccounts() end

---@type fun(theAccount: account): string Returns a string containing the account's name
function getAccountName() end

---@type fun(serial: string): account[] Returns table containing the accounts associated with specified serial.
function getAccountsBySerial() end

---@type fun(username: string, password?: string, caseSensitive?: boolean): account | false Returns an account or false if an account matching the username specified (and password, if specified) could not be found.
function getAccount() end

---@type fun(theAccount: account): {[string]: unknownSyncAble} A table containing all the user data.
function getAllAccountData() end

---@type fun(theAccount: account): boolean Returns true if account was successfully removed, false if the account does not exist.
function removeAccount() end

---@type fun(theAccount: account, password: string, passwordType?: string): boolean Returns true if the password was set correctly, false otherwise.
function setAccountPassword() end

---@type fun(thePlayer: player): boolean Returns true if the player was successfully logged out, false or nil if it failed for some reason, ie. the player was never logged in.
function logOut() end

---@type fun(thePlayer: player): account Returns the player's account object.
function getPlayerAccount() end

---@type fun(): boolean | nil Returns true if the XML was successfully reloaded from the file, false or nil if the XML was invalid, didn't exist or could not be loaded for some other reason.
function aclReload() end

---@type fun(theAccount: account, key: string, value: string | number | boolean | integer): boolean Returns a true if the account data was set, false if an invalid argument was specified.
function setAccountData() end

---@type fun(): acl[] Returns a table of all the ACLs. This table can be empty if no ACLs exist.
function aclList() end

---@type fun(theAccount: account): boolean Returns true if the account is a guest account, false otherwise.
function isGuestAccount() end

---@type fun(thePlayer: player, theAccount: account, thePassword: string): boolean | nil Returns true if the player was successfully logged into the given account. Returns false or nil if the log in failed for some reason, ie. the player was already logged in to some account (use logOut first), if the account was already in use or if it failed for some other reason.
function logIn() end

---@type fun(theBan: ban): string | false Returns a string of the reason if everything was successful, false if invalid arguments are specified if there was no reason specified for the ban.
function getBanReason() end

---@type fun(): ban[] Returns a table containing all the bans.
function getBans() end

---@type fun(IP?: string, Username?: string, Serial?: string, responsibleElement?: player, reason?: string, seconds?: integer): ban | false Returns the new ban if the IP/username/serial was banned successfully, false if invalid arguments are specified.
function addBan() end

---@type fun(): boolean | nil Returns true if the ACL was successfully changed, false or nil if it could not be saved for some reason, ie. file in use.
function aclSave() end

---@type fun(theBan: ban): string | false Returns a string of the admin if everything was successful, false if invalid arguments are specified if there was no admin specified for the ban.
function getBanAdmin() end

---@type fun(theBan: ban): string | false Returns a string of the serial if everything was successful, false if invalid arguments are specified or if there was no serial specified for the ban.
function getBanSerial() end

---@type fun(theBan: ban): integer|false Returns an integer of the banning time in the format of seconds from the year 1970. Use in conjunction with getRealTime in order to retrieve detailed information. Returns false if invalid arguments were specified or if there was no banning time specified for the ban.
function getBanTime() end

---@type fun(theBan: ban, theReason: string): boolean Returns true if the new reason was set successfully, false otherwise.
function setBanReason() end

---@type fun(theBan: ban, theNick: string): boolean Returns true if changed, false otherwise.
function setBanNick() end

---@type fun(theBan: ban): string | false Returns a string of the nickname if everything was successfull, false if invalid arguments are specified if there was no nickname specified for the ban element.
function getBanNick() end

---@type fun(theBan: ban): boolean Returns true if the value is a ban, false otherwise.
function isBan() end

---@type fun(): boolean Returns true if the ban list was reloaded successfully, false otherwise.
function reloadBans() end

---@type fun(theBan: ban): integer | false Returns an integer of the unbanning time in the format of seconds from the year 1970. Use in conjunction with getRealTime in order to retrieve detailed information. Returns false if invalid arguments are specified or if there was no unbanning time specified for the ban.
function getUnbanTime() end

---@type fun(theBan: ban): string | false Returns a string of the IP if everything was successful, false if invalid arguments are specified if there was no IP specified for the ban.
function getBanIP() end

---@type fun(): string | nil Returns the gametype as a string. If no gametype is set it returns nil.
function getGameType() end

---@type fun(gameType: string | false): boolean Returns true if the game type was set, false if an invalid argument was passed to the function.
function setGameType() end

---@type fun(theBan: ban, theTime: integer): boolean Returns true if changed successfully, false otherwise.
function setUnbanTime() end

---@type fun(theBan: ban, theAdmin: string): boolean Returns true if changed, false otherwise.
function setBanAdmin() end

---@type (fun(kickedPlayer: player): boolean) | (fun(kickedPlayer: player, reason: string): boolean) | (fun(kickedPlayer: player, responsiblePlayer?: player | string, reason: string): boolean) Returns true if the player was kicked succesfully, false if invalid arguments are specified.
function kickPlayer() end

---@type fun(theBan: ban, responsibleElement?: player): boolean Returns true if the ban was removed succesfully, false if invalid arguments are specified.
function removeBan() end

---@type fun(): string | nil Returns the mapname as a string. If no mapname is set it returns nil.
function getMapName() end

---@type fun(theVehicle: vehicle): boolean Returns true if the vehicle idle time has been reset, false if it failed to reset the idle time.
function resetVehicleIdleTime() end

---@type fun(theElement: element, visibleTo: element, visible: boolean): boolean Returns true if the element's visibility was changed successfully, false otherwise, for example if you are trying to change the visibility of a vehicle, player or object.
function setElementVisibleTo() end

---@type fun(bannedPlayer: player, IP?: boolean, Username?: boolean, Serial?: boolean, responsiblePlayer?: player | string, reason?: string, seconds?: integer): ban | false Returns a ban object if banned successfully, or false if unsuccessful.
function banPlayer() end

---@type fun(theVehicle: vehicle, x: number, y: number, z: number, rx?: number, ry?: number, rz?: number): boolean Returns true if the vehicle spawned successfully, false if the passed argument does not exist or is not a vehicle.
function spawnVehicle() end

---@type fun(key: string, value: string): boolean Returns true if the rule value was set, false if invalid arguments were specified.
function setRuleValue() end

---@type fun(mapName: string): boolean Returns true if map name was set successfully, false otherwise.
function setMapName() end

---@type fun(query: string, ...: string | number): table Returns a table with the result of the query if it was a SELECT query, or false if otherwise. In case of a SELECT query the result table may be empty (if there are no result rows).
function executeSQLQuery() end

---@type fun(settingName: string): unknownResourceSettings Returns the value of the setting if a single setting was specified and found, or a table (in associative-array form). It returns false if the specified setting or settings group doesn't exist, or if the settings group you are trying to retrieve doesn't have any public or protected settings.
function get() end

---@type fun(): integer An integer corresponding to the server's port.
function getServerPort() end

---@type fun(settingName: string, value: unknownResourceSettings): boolean Returns true if the setting has been set, false if you do not have access to the setting or invalid arguments were passed.
function set() end

---@type fun(): integer An integer corresponding to the server's HTTP port.
function getServerHttpPort() end

---@type fun(): string A string containing the server's name.
function getServerName() end

---@type fun(theElement: element, visibleTo: element): boolean Returns true if element is visible to the specified player, false if not or an invalid argument was passed to the function.
function isElementVisibleTo() end

---@type fun(theElement: element, key: string): boolean Returns true if the data was removed succesfully, false if the given key does not exist in the element or the element is invalid.
function removeElementData() end

---@type fun(): string | nil Returns the current server password as a string if it has a password, if not it returns nil.
function getServerPassword() end

---@type fun(theElement: element): boolean Returns true if the operation was successful, false otherwise.
function clearElementVisibleTo() end

---@type fun(theElement: element, numberxPos, yPos?: number, zPos?: number, cloneChildren?: boolean): element Returns the handle of the new cloned element of the parent.
function cloneElement() end

---@type fun(theElement: ped | vehicle, thePlayer: player, persist?: boolean): boolean Returns true if the syncer was changed successfully, false if the element passed was not a ped or vehicle.
function setElementSyncer() end

---@type fun(theTextitem: textitem): number Returns a floating point of the scale of the text. 1.0 is around 12pt.
function textItemGetScale() end

---@type fun(resourceName: string, organizationalDir?: string): resource | false Returns the resource element of the new resource if successful, false otherwise. This could fail if the resource name already is in use, if a directory already exists with the name you've specified (but this isn't a valid resource) or if the name you specify isn't valid. It could also fail if the disk was full or for other similar reasons.
function createResource() end

---@type fun(theResource: resource): integer | false If successful, returns the UNIX timestamp when the resource was last started, or the string "never" if the resource has not been started yet, otherwise false. Use in conjunction with getRealTime in order to retrieve detailed information.
function getResourceLastStartTime() end

---@type fun(filePath: string, filetype?: string): xmlnode | false Returns the new config's root xmlnode if the config was added successfully, false otherwise.
function addResourceConfig() end

---@type fun(theResource: resource, attribute: string): string | false Returns a string with the attribute value if it exists, false otherwise.
function getResourceInfo() end

---@type fun(res: resource): integer | false If successful, returns the UNIX timestamp when the resource was loaded, otherwise false. Use in conjunction with getRealTime in order to retrieve detailed information.
function getResourceLoadTime() end

---@type fun(teamName: string, colorR?: integer, colorG?: integer, colorB?: integer): team | false Returns a team element if it was successfully created, false if invalid arguments are passed or a team with that name already exists.
function createTeam() end

---@type fun(theTextItem: textitem): number, number Returns two floats of the x and y position on the screen, where the maximum value is 1.0.
function textItemGetPosition() end

---@type fun(theTeam: team, friendlyFire: boolean): boolean Returns true if the friendly fire value is set for the specified team, false if the friendly fire value can't be set for the specified team or if invalid arguments are specified.
function setTeamFriendlyFire() end

---@type fun(thePlayer: player, theTeam?: team): boolean Returns true if the player was successfully added to the specified team or removed from his previous one, false otherwise.
function setPlayerTeam() end

---@type fun(theTextitem: textitem): string Returns a string containing the text if the function was successful.
function textItemGetText() end

---@type fun(theTeam: team, newName: string): boolean Returns true if the team was valid and the name was changed, false otherwise.
function setTeamName() end

---@type fun(theTextItem: textitem): integer, integer, integer, integer Returns four integers in RGBA format, with a maximum value of 255 for each. The values are, in order, red, green, blue, and alpha. Alpha decides transparency where 255 is opaque and 0 is transparent.
function textItemGetColor() end

---@type fun(theType: string, index: integer): element | false Returns the requested element, or false if it doesn't exist.
function getElementByIndex() end

---@type fun(text: string, x: number, y: number, priority?: "low" | "medium" | "high" | 0 | 1 | 2, red?: integer, green?: integer, blue?: integer, alpha?: integer, scale?: number, alignX?: alignX, alignY?: alignY, shadowAlpha?: integer): textitem Returns a textitem object.
function textCreateTextItem() end

---@type fun(textitemToCheck: textitem): 0 | 1 | 2 Returns a integer of the priority of a text item, 0 = low, 1 = medium, 2 = high.
function textItemGetPriority() end

---@type fun(theTextItem: textitem, r: integer, g: integer, b: integer, a: integer): boolean Returns true if the color was successfully set, false otherwise.
function textItemSetColor() end

---@type fun(theTextItem: textitem, priority: string)
function textItemSetPriority() end

---@type fun(theTextItem: textitem, x: number, y: number): boolean Returns true if the position was successfully set, false otherwise.
function textItemSetPosition() end

---@type fun(theElement: element): element | false Returns the element that is the syncer of theElement or false if the element does not have a syncer.
function getElementSyncer() end

---@type fun(theVehicle: vehicle): boolean Returns true if the vehicle respawned successfully, false if the passed argument does not exist or is not a vehicle.
function respawnVehicle() end

---@type fun(theElement: element, citiesonly?: boolean): string Returns the string of the elements zone name.
function getElementZoneName() end

---@type fun(): integer Returns the maximum number of players allowed on the server.
function getMaxPlayers() end

---@type fun(theResource: resource): string If the resource failed to load, returns a string with the failure reason in it. If it loaded successfully, returns an empty string.
function getResourceLoadFailureReason() end

---@type fun(theResource: resource): string Returns the organizational folder name of the resource. It returns empty string if the resource is on root resources folder.
function getResourceOrganizationalPath() end

---@type fun(theTextitem: textitem, text: string)
function textItemSetText() end

---@type fun(theTextitem: textitem, scale: number): boolean Returns true if the scale was successfully set, false otherwise.
function textItemSetScale() end

---@type fun(node: xmlnode, baseElement: element, childrenOnly?: boolean): boolean Returns success status
function saveMapData() end

---@type fun(theResource: resource, mapName: string): element | false Returns an the resource's map root element if the map exists and resource specified was valid and active (currently running), false otherwise.
function getResourceMapRootElement() end

---@type fun(thePlayer: player, key: string, keyState?: string, handler?: function): boolean Returns true if the key is bound, false otherwise.
function isKeyBound() end

---@type fun(thePlayer: ped, weapon: integer, ammo?: integer, setAsCurrent?: boolean): boolean Returns true if weapon was successfully acquired, false otherwise.
function giveWeapon() end

---@type fun(thePed: ped, choking: boolean): boolean Returns true if successful, false otherwise (e.g. player handle is invalid)
function setPedChoking() end

---@type fun(filePath: string, dimension?: integer): xmlnode | false Returns the new map's root xmlnode if the map was added successfully, false otherwise.
function addResourceMap() end

---@type fun(thePed: ped): boolean Returns true if the pedestrian was made to reload, or false if invalid arguments were passed or that pedestrian has a weapon which cannot be reloaded. See wiki for other fail reasons: https://wiki.multitheftauto.com/wiki/ReloadPedWeapon
function reloadPedWeapon() end

---@type fun(theResource: resource, newResourceName: string, organizationalDir?: string): resource | false Returns the resource element of the copy.
function copyResource() end

---@type fun(theTeam: team, colorR: integer, colorG: integer, colorB: integer): boolean Returns true if the team is valid and the color is different, otherwise false.
function setTeamColor() end

---@type fun(theVehicle: vehicle, sirenCount: 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8, sirenType: sirenTypeId, flag360?: boolean, checkLosFlag?: boolean, useRandomiser?: boolean, silentFlag?: boolean): boolean Returns true if sirens were successfully added to the vehicle, false otherwise.
function addVehicleSirens() end

---@type fun(thePlayer: player, weaponId: weaponId, ammo?: integer): boolean Returns a true if the weapon/ammo was removed successfully, false otherwise.
function takeWeapon() end

---@type fun(theVehicle: vehicle): boolean Returns true if sirens were successfully removed from the vehicle, false otherwise.
function removeVehicleSirens() end

---@type fun(theVehicle: vehicle): boolean Returns true if the vehicle explosion time has been reset, false if it failed to reset the explosion time.
function resetVehicleExplosionTime() end

--[[ [Wiki server config](https://wiki.multitheftauto.com/wiki/Server_mtaserver.conf)
]]
---@type fun(name: changeAbleServerConfigSetting | string, value: string, bSave?: boolean): boolean Returns true if the setting was successfully set, or false otherwise.
function setServerConfigSetting() end

--[[ [Wiki server config](https://wiki.multitheftauto.com/wiki/Server_mtaserver.conf)
]]
---@type fun(name: serverConfigSetting | string): string | table | false Returns a string containing the current value for the named setting, table if name is module or false if the setting does not exist. If the setting name is serverip, may return the string "auto" on local servers.
function getServerConfigSetting() end

---@type fun(node: xmlnode, parent: element): element | false Returns an element object that corresponds to the root of the new data added, i.e. an element that represents the node xmlnode passed to the function. Returns false if the arguments are invalid.
function loadMapData() end

---@type fun(thePed: ped): number Returns a float indicating the ped's gravity. Default value is 0.008.
function getPedGravity() end

---@type fun(thePed: ped, gravity: number): boolean Returns true if the gravity was successfully set, false otherwise
function setPedGravity() end

---@type fun(thePlayer: element, key: string): string | false This function returns a string containing the requested value if a valid key was specified or false otherwise.
function getPlayerAnnounceValue() end

---@type fun(thePed: ped): boolean Returns true if the function succeeded, false otherwise.
function takeAllWeapons() end

---@type fun(theVehicle: vehicle, Respawn: boolean): boolean Returns true if the vehicle was found and edited.
function toggleVehicleRespawn() end

---@type fun(weapon: string, enabled: boolean): boolean Returns true, else false if invalid arguments are passed.
function setJetpackWeaponEnabled() end

---@type fun(weapon: string): boolean Returns true if the weapon is enabled, else false if the weapon isn't or invalid arguments are passed.
function getJetpackWeaponEnabled() end

---@type fun(): integer Returns the number of players connected to the server as an int.
function getPlayerCount() end

---@type fun(thePlayer: player): string Returns a string containing the requested players's IP.
function getPlayerIP() end

---@type fun(thePlayer: player): integer Returns the amount of time in milliseconds that a player has been idle.
function getPlayerIdleTime() end

---@type fun(): player[] Returns a table of all the dead players.
function getDeadPlayers() end

---@type fun(): resource[] Returns a table of resources.
function getResources() end

--- Serverside
---@alias getPlayerSerial_server fun(thePlayer: player): string
--- Clientside
---@alias getPlayerSerial_client fun(): string
---@type getPlayerSerial_server | getPlayerSerial_client Returns the serial as a string if it was found.
function getPlayerSerial() end

---@type fun(thePlayer: player): string Returns a string containing the client version.
function getPlayerVersion() end

---@type fun(): player[] Returns a table of all the alive players.
function getAlivePlayers() end

---@type fun(resourceName: string): boolean Returns true if the resource has been deleted successfully, false otherwise.
function deleteResource() end

---@type fun(thePlayer: player): boolean Returns true if the player is muted and false otherwise.
function isPlayerMuted() end

---@type fun(): player | false Returns `false` if there are no players in the server
function getRandomPlayer() end

---@type fun(theResource: resource): { access: boolean, date: string, name: string, pending: boolean, who: string}[] Returns a table with the ACL requests for the given resource.
function getResourceACLRequests() end

---@type fun(host: string, queueName?: string, connectionAttempts: integer, connectTimeout: integer, resourceName: string, functionName: string, callbackFunction: function, ...: any): boolean Returns true if the function has been called, false otherwise.
function callRemote() end

---@type fun(thePlayer: player, serverIP: string, serverPort: integer, serverPassword?: string): boolean Returns true if the player was redirected successfully, false if bad arguments were passed.
function redirectPlayer() end

---@type fun(aclName: string): acl | false | nil Returns `false` | `nil` if the ACL does not exist or it fails for some other reason.
function aclGet() end

---@type fun(aclName: string): acl | false Returns the created ACL object if successful. Returns false if an ACL of the given name could not be created.
function aclCreate() end

---@type fun(theACL: acl): boolean Returns true if successfully destroyed and false if it could not be deleted (ie. it's not valid).
function aclDestroy() end

---@type fun(theAcl: acl): string Returns the name of the given ACL as a string if successful.
function aclGetName() end

---@type fun(theAcl: acl, rightName: string): boolean | nil Returns true or false if the ACL gives access or not to the given function. Returns nil if it failed for some reason, e.g. an invalid ACL was specified or the right specified does not exist in the ACL.
function aclGetRight() end

---@type fun(theAcl: acl, rightName: string, hasAccess: boolean): boolean | nil Returns true if the access was successfully changed, false or nil if it failed for some reason, ie. invalid ACL or the rightname is invalid.
function aclSetRight() end

---@type fun(theACL: acl, allowedType: string): string[] Returns a table over the rights as strings in the given ACL.
function aclListRights() end

---@type fun(theAcl: acl, rightName: string): boolean | nil Returns true if the given right was successfully removed from the given ACL, false or nil if it could not be removed for some reason, ie. it didn't exist in the ACL.
function aclRemoveRight() end

---@type fun(groupName: string): aclgroup | false | nil Returns the ACL group if it could be found. Returns false/nil if it did not exist or failed for some reason.
function aclGetGroup() end

---@type fun(groupName: string): aclgroup | false Returns the pointer to the created aclgroup if successful. Returns false if failed.
function aclCreateGroup() end

---@type fun(aclGroup: aclgroup): boolean Returns true if the ACL group was successfully deleted, false if it could not be deleted for some reason (ie. invalid argument).
function aclDestroyGroup() end

---@type fun(): aclgroup[] Returns a table of all the ACL groups if successful.
function aclGroupList() end

---@type fun(theGroup: aclgroup, theACL: acl): boolean Returns true if the ACL could be successfully added to the ACL group
function aclGroupAddACL() end

---@type fun(theGroup: aclgroup, theObjectName: string): boolean Returns true if the object was successfully added to the ACL, false if it already existed in the list.
function aclGroupAddObject() end

---@type fun(aclGroup: aclgroup): string Returns the name of the given ACL group as a string.
function aclGroupGetName() end

---@type fun(theGroup: aclgroup): acl[] Returns a table of the ACL elements in the given ACL group.
function aclGroupListACL() end

---@type fun(theGroup: aclgroup): string[] Returns a table of strings in the given ACL group.
function aclGroupListObjects() end

---@type fun(theGroup: aclgroup, theACL: acl): boolean | nil Returns true if the ACL was successfully removed from the ACL group, false/nil if it could not be removed for some reason, ie. either of the elements were invalid.
function aclGroupRemoveACL() end

---@type fun(theGroup: aclgroup, theObjectString: string): boolean Returns true if the object existed in the ACL and could be removed, false if it could not be removed for some reason, ie. it did not exist in the given ACL group.
function aclGroupRemoveObject() end

---@type fun(theObject: string | element, theAction: string, defaultPermission?: boolean): boolean Returns true if the given object has permission to perform the given action, false otherwise.
function hasObjectPermissionTo() end

---@type fun(theObject: string, theGrou: aclgroup): boolean Returns true if the object is in the specified group, false otherwise.
function isObjectInACLGroup() end

---@type fun(): string Returns the reason that was given with cancelEvent
function getCancelReason() end

---@type (fun( name: string, sourceElement: element,  arg1?: unknownSyncAble, arg2?: unknownSyncAble, arg3?: unknownSyncAble, arg4?: unknownSyncAble, arg5?: unknownSyncAble, arg6?: unknownSyncAble, arg7?: unknownSyncAble, arg8?: unknownSyncAble, arg9?: unknownSyncAble, arg10?: unknownSyncAble, ...): boolean) | (fun(sendTo: player[] | element, name: string, sourceElement: element,  arg1?: unknownSyncAble, arg2?: unknownSyncAble, arg3?: unknownSyncAble, arg4?: unknownSyncAble, arg5?: unknownSyncAble, arg6?: unknownSyncAble, arg7?: unknownSyncAble, arg8?: unknownSyncAble, arg9?: unknownSyncAble, arg10?: unknownSyncAble, ...): boolean) Returns true if the event trigger has been sent, false if invalid arguments were specified.
function triggerClientEvent() end

---@type (fun(name: string, bandwidth?: integer, persist?: boolean, theElement: element,  arg1?: unknownSyncAble, arg2?: unknownSyncAble, arg3?: unknownSyncAble, arg4?: unknownSyncAble, arg5?: unknownSyncAble, arg6?: unknownSyncAble, arg7?: unknownSyncAble, arg8?: unknownSyncAble, arg9?: unknownSyncAble, arg10?: unknownSyncAble, ...): boolean) | (fun(sendTo: player[] | element, name: string, bandwidth?: integer, persist?: boolean, theElement: element, arg1?: unknownSyncAble, arg2?: unknownSyncAble, arg3?: unknownSyncAble, arg4?: unknownSyncAble, arg5?: unknownSyncAble, arg6?: unknownSyncAble, arg7?: unknownSyncAble, arg8?: unknownSyncAble, arg9?: unknownSyncAble, arg10?: unknownSyncAble, ...): boolean) Returns true if the event trigger has been sent, false if invalid arguments were specified.
function triggerLatentClientEvent() end

---@type fun(thePlayer?: player): boolean Returns true if the map info was reset successfully, otherwise false.
function resetMapInfo() end

---@type fun(thePickup: pickup): integer Returns the respawn time of the pickup if successful.
function getPickupRespawnInterval() end

---@type fun(thePickup: pickup): boolean Returns true if the pickup is spawned, false if it's not spawned or an invalid pickup was specified.
function isPickupSpawned() end

---@type fun(thePickup: pickup, ms: integer): boolean Returns true if the new respawn time was set successfully, false otherwise.
function setPickupRespawnInterval() end

---@type fun(thePlayer: player): boolean Returns true if the mod info will be resent, false otherwise.
function resendPlayerModInfo() end

---@type fun(thePlayer: player, key: string, value: string): boolean Returns true if the value was set succesfully, false otherwise.
function setPlayerAnnounceValue() end

---@type fun(thePlayer: player, state: boolean): boolean Returns true if the player was successfully muted or unmuted, false otherwise.
function setPlayerMuted() end

---@type fun(thePlayer: player, newName: string): boolean Returns true if the player was successfully muted or unmuted, false otherwise.
function setPlayerName() end

---@type fun(thePlayer: player, broadcastTo: player|player[]): boolean Returns true if the value was set successfully, false otherwise.
function setPlayerVoiceBroadcastTo() end

---@type fun(thePlayer: player, ignoreFrom?: nil|player|player[]): boolean Returns true if the value was set successfully, false otherwise.
function setPlayerVoiceIgnoreFrom() end

---@type fun(thePlayer: player, stars: playerWantedLevel): boolean Returns true if the wanted level was set successfully, false if any of the arguments were invalid.
function setPlayerWantedLevel() end

---@type fun(thePlayer: player, x: number, y: number, z: number, rotation?: integer, skinId?: pedId, interior?: integer, dimension?: integer, theTeam?: team): boolean Returns true if the player was spawned successfully, false otherwise.
function spawnPlayer() end

---@type fun(thePlayer: player, width: integer, height: integer, tag?: string, quality?: integer, maxBandwith?: integer, maxPacketSize?: integer): boolean Returns true if the function was successfully, false if invalid arguments are specified.
function takePlayerScreenShot() end

---@type fun(refreshAll?: boolean, targetResource?: resource): boolean Returns true if refresh was successful, false otherwise.
function refreshResources() end

---@type fun(theResource: resource, fileName: string): boolean Returns true if file was deleted, otherwise false if the resource is in use or the file doesn't exist.
function removeResourceFile() end

---@type fun(resourceName: string, newResourceName: string, organizationalPath?: string): boolean Returns true if the resource has been renamed successfully, false otherwise.
function renameResource() end

---@type fun(theResource: resource, persistent?: boolean, configs?: boolean, maps?: boolean, scripts?: boolean, html?: boolean, clientConfigs?: boolean, clientScripts?: boolean, clientFiles?: boolean): boolean Returns true if the resource was restarted, false if the resource wasn't running, or an invalid resource was passed.
function restartResource() end

---@type fun(theResource: resource, attribute: string, value: string) Returns true if the info was successfully set, false otherwise
function setResourceInfo() end

---@type fun(theResource: resource, persistent?: boolean, startIncludedResources?: boolean, loadServerConfigs?: boolean, loadMaps?: boolean, loadServerScripts?: boolean, loadHTML?: boolean, loadClientConfigs?: boolean, loadClientScripts?: boolean, loadFiles?: boolean): boolean Returns true if the resource has been started successfully, false otherwise.
function startResource() end

---@type fun(theResource: resource): boolean Returns true if the resource was stopped, false if the stopping failed, or an invalid resource was passed.
function stopResource() end

---@type fun(theResource: resource, rightName: string, access: boolean, byWho?: string): boolean Returns true if the setting was changed, or false if no change was required or there was a problem with the arguments.
function updateResourceACLRequest() end

---@type fun(glitchName: glitchNames): boolean Returns true if if the glitch was enabled, or false if it is disabled.
function isGlitchEnabled() end

---@type fun(glitchName: glitchNames, enable: boolean): boolean Returns true if successful, false otherwise.
function setGlitchEnabled() end

---@type fun(text: string): boolean Returns true if successful, false otherwise.
function outputServerLog() end

---@type fun(slots: integer): boolean | nil Returns true if number of player slots was successfully changed, false or nil otherwise.
function setMaxPlayers() end

---@type fun(password: string): boolean | nil Returns true if the password was successfully changed or removed, false or nil otherwise.
function setServerPassword() end

---@type fun(reason?: string, exitCode?: number): boolean Returns false if it was not possible to shut down the server.
function shutdown() end

---@type fun(databaseType: string, host: string, username?: string, password?: string, options?: string): databaseConnection | false Returns a database connection element unless there are problems, in which case it return false.
function dbConnect() end

---@type fun(databaseConnection: databaseConnection, query: string, ...: string | number): boolean Returns true unless the connection is incorrect, in which case it returns false.
function dbExec() end

---@type (fun(databaseConnection: databaseConnection, query?: string, ...: string | number): handle) | (fun(callbackFunction: function, databaseConnection: databaseConnection, query?: string, ...: string | number): handle) | (fun(callbackFunction: function, callbackArguments: table, databaseConnection: databaseConnection, query?: string, ...: string | number): handle) Returns a query handle unless the connection is incorrect.
function dbQuery() end

--- MultipleResults returns { [1]: result, [2]: numAffectedRows, [3]: lastInsertId }
---@alias dbPoll_multipleResults fun(queryHandle: handle, timeout: integer, multipleResults: true): {[1]: table, [2]: integer, [3]: integer}[] | nil | false
---@alias dbPoll_notMultipleResults fun(queryHandle: handle, timeout: integer, multipleResults?: false): table[] | nil | false
--More info: https://wiki.multitheftauto.com/wiki/DbPoll
---@type dbPoll_multipleResults|dbPoll_notMultipleResults
function dbPoll() end

---@type fun(queryHandle: handle): boolean Returns true if the handle was successfully freed, false otherwise.
function dbFree() end

---@type fun(): textdisplay
function textCreateDisplay() end

---@type fun(display: textdisplay): boolean
function textDestroyDisplay() end

---@type fun(display: textdisplay, playerToAdd: player)
function textDisplayAddObserver() end

---@type fun(displayToAddTo: textdisplay, itemToAdd: textitem)
function textDisplayAddText() end

---@type fun(display: textdisplay, playerToRemove: player): boolean
function textDisplayRemoveObserver() end

---@type fun(displayToRemoveFrom: textdisplay, itemToRemove: textitem)
function textDisplayRemoveText() end

---@type fun(theDisplay: textdisplay): player[]
function textDisplayGetObservers() end

---@type fun(display: textdisplay, thePlayer: player): boolean
function textDisplayIsObserver() end

---@type fun(modelId: vehicleId): vehicle[] Returns a table of existing vehicles matching the specified model.
function getVehiclesOfType() end

---@type fun(modelId: vehicleId): table | false Returns a table containing all the handling data, false if an invalid vehicle model is specified.
function getModelHandling() end

---@type fun(modelId: vehicleId, property: vehicleHandlingProperty, value: any): boolean Returns true if the handling was set successfully, false otherwise.
function setModelHandling() end

---@type fun(theVehicle: vehicle, timeDelay: integer): boolean Returns true if the vehicle was found and edited.
function setVehicleIdleRespawnDelay() end

---@type fun(theVehicle: vehicle, timeDelay: integer): boolean Returns true if the vehicle was found and edited.
function setVehicleRespawnDelay() end

---@type fun(theVehicle: vehicle, x: number, y: number, z: number, rx?: number, ry?: number, rz?: number): boolean Returns true if the vehicle was found and edited, false otherwise.
function setVehicleRespawnPosition() end

---@type fun(): boolean Returns true if the output buffer was cleared successfully, false otherwise.
function httpClear() end

---@type fun(): boolean Returns true if the relevant headers and return codes have been set, false otherwise. Essentially, always returns true.
function httpRequestLogin() end

---@type fun(code: integer): boolean Returns true if the code was set successfully, false otherwise.
function httpSetResponseCode() end

---@type fun(cookieName: string, cookieValue: string): boolean Returns true if the cookie value was set successfully, false otherwise.
function httpSetResponseCookie() end

---@type fun(headerName: string, headerValue: string): boolean Returns true if the header value was set successfully, false otherwise.
function httpSetResponseHeader() end

---@type fun(data: string, length?: integer): boolean Returns true if the text was added to the output buffer successfully, false otherwise.
function httpWrite() end

---@type fun(thePed: ped, state: boolean): boolean Returns true if a jetpack was successfully set for the ped, false if setting it failed.
function setPedWearingJetpack() end

---@type fun(theAccount: account): string Returns a string containing the account's IP
function getAccountIP() end

---@type fun(id: integer): account | false Returns account associated with specified ID. Returns false if invalid arguments were specified or there is no account with this ID.
function getAccountByID() end

---@type fun(theAccount: account): integer Returns a int containing the account's ID
function getAccountID() end

---@type fun(theAccount: account, name: string, allowCaseVariations?: boolean): boolean Returns a true if the account name was set, false if an invalid argument was specified.
function setAccountName() end

---@type fun(dataName: string, value: string): account[] Returns table containing the accounts associated with specified value at dataName.
function getAccountsByData() end

---@type fun(ip: string): account[] Returns table containing the accounts associated with specified IP-address.
function getAccountsByIP() end

---@type fun(theVehicle: element): x: number, y: number, z: number Returns three floats indicating the respawn coordinates of the vehicle, x, y and z respectively.
function getVehicleRespawnPosition() end

---@type fun(theVehicle: element): rx: number, ry: number, rz: number Returns three floats indicating the respawn rotation of the vehicle, x, y and z respectively.
function getVehicleRespawnRotation() end

---@type fun(theElement: element, key: string, thePlayer: player): boolean Returns true if the player was subscribed, false otherwise.
function addElementDataSubscriber() end

---@type fun(theElement: element, key: string, thePlayer: player): boolean Returns true if the player is subscribed, false otherwise.
function hasElementDataSubscriber() end

---@type fun(theElement: element, key: string, thePlayer: player): boolean Returns true if the player was unsubscribed, false otherwise.
function removeElementDataSubscriber() end

---@type fun(thePlayer: player, control: controlName, state: boolean): boolean Returns true if the control state was successfully set, false otherwise.
function setControlState() end

---@type fun(thePlayer: player, controlName: controlName): boolean Returns the state of the control, false if the control doesn't exist or if the player is dead.
function getControlState() end

---@type fun(thePlayer: player): debugScriptLevel Returns an int with the player debug script level.
function getPlayerScriptDebugLevel() end

---@type fun(thePlayer: player, level: debugScriptLevel): boolean Returns true if successful, false otherwise.
function setPlayerScriptDebugLevel() end

---@type fun(theResource: resource): boolean Returns true if the resource is 'protected', false otherwise.
function isResourceProtected() end

---@type fun(theVehicle: vehicle, rx: number, ry: number, rz: number): boolean Returns true if the vehicle respawn rotation was set successfully, false otherwise.
function setVehicleRespawnRotation() end

--- (in milliseconds)
---@type fun(theVehicle: vehicle): integer
function getVehicleIdleRespawnDelay() end

--- (in milliseconds)
---@type fun(theVehicle: vehicle): integer
function getVehicleRespawnDelay() end

---@type fun(theVehicle: vehicle): boolean
function isVehicleRespawnable() end

---@type fun(theAccount: account): "player" | "guest" | string
function getAccountType() end
