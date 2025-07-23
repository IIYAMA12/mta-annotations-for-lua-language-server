# MTA:SA Lua API Map

Warning: This is an AI generated document.
This document provides a consolidated map of the MTA:SA Lua API, categorized into server-side, client-side, and shared functions.

## Server-Side Functions

### ACL
- `acl aclCreate(string aclName)` - Creates a new ACL.
- `bool aclCreateGroup(string groupName)` - Creates a new ACL group.
- `bool aclDestroy(acl theACL)` - Destroys an existing ACL.
- `bool aclDestroyGroup(aclgroup aclGroup)` - Destroys an existing ACL group.
- `acl aclGet(string aclName)` - Gets an ACL by name.
- `aclgroup aclGetGroup(string groupName)` - Gets an ACL group by name.
- `bool aclGroupAddObject(aclgroup theGroup, string theObjectName)` - Adds an object to an ACL group.
- `bool aclGroupAddRight(aclgroup theGroup, string rightName, bool hasAccess)` - Adds a right to an ACL group.
- `table aclGroupList()` - Lists all ACL groups.
- `table aclGroupListObjects(aclgroup theGroup)` - Lists all objects in an ACL group.
- `table aclGroupListRights(aclgroup theGroup, string rightType)` - Lists all rights in an ACL group.
- `bool aclGroupRemoveObject(aclgroup theGroup, string theObjectName)` - Removes an object from an ACL group.
- `bool aclGroupRemoveRight(aclgroup theGroup, string rightName)` - Removes a right from an ACL group.
- `table aclList()` - Lists all ACLs.
- `table aclListRights(acl theACL, string rightType)` - Lists all rights in an ACL.
- `bool aclReload()` - Reloads the ACLs from the XML file.
- `bool aclRemoveRight(acl theAcl, string rightName)` - Removes a right from an ACL.
- `bool aclSave()` - Saves the ACLs to the XML file.
- `bool aclSetRight(acl theAcl, string rightName, bool hasAccess)` - Sets a right for an ACL.
- `bool isObjectInACLGroup(string theObject, aclgroup theGroup)` - Checks if an object is in an ACL group.

### Accounts
- `account addAccount(string name, string pass[, bool allowCaseVariations = false])` - Adds an account.
- `bool copyAccountData(account theAccount, account fromAccount)` - Copies data from one account to another.
- `account getAccount(string username, [ string password ])` - Gets an account by username and optionally password.
- `string getAccountData(account theAccount, string key)` - Gets a piece of data from an account.
- `player getAccountPlayer(account theAccount)` - Gets the player associated with an account.
- `table getAccounts()` - Gets a table of all accounts.
- `table getAccountsByData(string dataName, string value)` - Gets accounts by a data value.
- `table getAccountsByIP(string ip)` - Gets accounts by IP address.
- `table getAccountsBySerial(string serial)` - Gets accounts by serial.
- `table getAllAccountData(account theAccount)` - Gets all data from an account.
- `bool logIn(player thePlayer, account theAccount, string thePassword)` - Logs a player into an account.
- `bool logOut(player thePlayer)` - Logs a player out of their account.
- `bool removeAccount(account theAccount)` - Removes an account.
- `bool setAccountData(account theAccount, string key, string value)` - Sets a piece of data for an account.
- `bool setAccountPassword(account theAccount, string password)` - Sets the password for an account.

### Bans
- `ban addBan([string IP, string Username, string Serial, player responsibleElement, string reason, int seconds = 0])` - Adds a ban.
- `string getBanAdmin(ban theBan)` - Gets the admin of a ban.
- `string getBanIP(ban theBan)` - Gets the IP of a ban.
- `string getBanNick(ban theBan)` - Gets the nickname of a banned player.
- `string getBanReason(ban theBan)` - Gets the reason for a ban.
- `table getBans()` - Gets a table of all bans.
- `string getBanSerial(ban theBan)` - Gets the serial of a ban.
- `int getBanTime(ban theBan)` - Gets the time a ban was created.
- `string getBanWhoAdmin(ban theBan)` - Gets the admin who created a ban.
- `bool isBan(ban theBan)` - Checks if a ban is valid.
- `bool reloadBans()` - Reloads the ban list.
- `bool removeBan(ban theBan, [player responsibleElement])` - Removes a ban.
- `bool setUnbanTime(ban theBan, int theTime)` - Sets the unban time for a ban.

### Blips
- `blip createBlip(float x, float y, float z, [int icon=0, int size=2, int r=255, int g=0, int b=0, int a=255, int ordering=0, float visibleDistance=16383, element visibleTo=getRootElement()])` - Creates a blip.
- `blip createBlipAttachedTo(element theElement, [int icon=0, int size=2, int r=255, int g=0, int b=0, int a=255, int ordering=0, float visibleDistance=16383, element visibleTo=getRootElement()])` - Creates a blip attached to an element.
- `int, int, int, int getBlipColor(blip theBlip)` - Gets the color of a blip.
- `int getBlipIcon(blip theBlip)` - Gets the icon of a blip.
- `int getBlipOrdering(blip theBlip)` - Gets the ordering of a blip.
- `int getBlipSize(blip theBlip)` - Gets the size of a blip.
- `float getBlipVisibleDistance(blip theBlip)` - Gets the visible distance of a blip.
- `bool setBlipColor(blip theBlip, int r, int g, int b, int a)` - Sets the color of a blip.
- `bool setBlipIcon(blip theBlip, int icon)` - Sets the icon of a blip.
- `bool setBlipOrdering(blip theBlip, int ordering)` - Sets the ordering of a blip.
- `bool setBlipSize(blip theBlip, int size)` - Sets the size of a blip.
- `bool setBlipVisibleDistance(blip theBlip, float distance)` - Sets the visible distance of a blip.

### Buildings
- `building createBuilding(int modelID, float x, float y, float z)` - Creates a building.

### Camera
- `bool fadeCamera(bool fadeIn, [float timeToFade=1.0, int red=0, int green=0, int blue=0])` - Fades the camera.
- `element getCamera()` - Gets the camera element.
- `bool, bool getCameraClip()` - Gets the camera clip settings.
- `int getCameraDrunkLevel()` - Gets the camera drunk level.
- `float getCameraFieldOfView(string mode)` - Gets the camera field of view.
- `string getCameraGoggleEffect()` - Gets the camera goggle effect.
- `int getCameraInterior()` - Gets the camera interior.
- `float, float, float, float, float, float, float, float getCameraMatrix()` - Gets the camera matrix.
- `element getCameraTarget()` - Gets the camera target.
- `int, int getCameraViewMode()` - Gets the camera view mode.
- `bool resetShakeCamera()` - Resets camera shake.
- `bool setCameraClip([bool objects=true, bool vehicles=true])` - Sets the camera clip settings.
- `bool setCameraDrunkLevel(int level)` - Sets the camera drunk level.
- `bool setCameraFieldOfView(string mode, float fov)` - Sets the camera field of view.
- `bool setCameraGoggleEffect(string mode, [bool noiseEnabled=true])` - Sets the camera goggle effect.
- `bool setCameraInterior(int interior)` - Sets the camera interior.
- `bool setCameraMatrix(float positionX, float positionY, float positionZ, [float lookAtX, float lookAtY, float lookAtZ, float roll=0, float fov=70])` - Sets the camera matrix.
- `bool setCameraTarget(element target)` - Sets the camera target.
- `bool setCameraViewMode([int vehicleViewMode, int pedViewMode])` - Sets the camera view mode.
- `bool shakeCamera(float radius, [float x, float y, float z])` - Shakes the camera.

### ColShapes
- `colshape createColCircle(float fX, float fY, float fRadius)` - Creates a colshape circle.
- `colshape createColCuboid(float fX, float fY, float fZ, float fWidth, float fDepth, float fHeight)` - Creates a colshape cuboid.
- `colshape createColPolygon(float fX, float fY, float fX1, float fY1, float fX2, float fY2, float fX3, float fY3, ...)` - Creates a colshape polygon.
- `colshape createColRectangle(float fX, float fY, float fWidth, float fHeight)` - Creates a colshape rectangle.
- `colshape createColSphere(float fX, float fY, float fZ, float fRadius)` - Creates a colshape sphere.
- `colshape createColTube(float fX, float fY, float fZ, float fRadius, float fHeight)` - Creates a colshape tube.
- `float, float getColPolygonHeight(colshape polygon)` - Gets the height of a polygon colshape.
- `float, float getColPolygonPointPosition(colshape polygon, int index)` - Gets the position of a point in a polygon colshape.
- `table getColPolygonPoints(colshape polygon)` - Gets the points of a polygon colshape.
- `float getColShapeRadius(colshape theColShape)` - Gets the radius of a colshape.
- `float, float, float getColShapeSize(colshape theColShape)` - Gets the size of a colshape.
- `string getColShapeType(colshape theColShape)` - Gets the type of a colshape.
- `bool isInsideColShape(colshape theColShape, float fX, float fY, float fZ)` - Checks if a point is inside a colshape.
- `bool setColPolygonHeight(colshape polygon, float fFloor, float fCeil)` - Sets the height of a polygon colshape.
- `bool setColPolygonPointPosition(colshape polygon, int index, float fX, float fY)` - Sets the position of a point in a polygon colshape.
- `bool setColPolygonPoints(colshape polygon, table points)` - Sets the points of a polygon colshape.
- `bool setColShapeRadius(colshape theColShape, float fRadius)` - Sets the radius of a colshape.
- `bool setColShapeSize(colshape theColShape, float fWidth, float fDepth, float fHeight)` - Sets the size of a colshape.

### Compatibility
- `bool attachElementToElement(element theElement, element theAttachToElement, [float fX, float fY, float fZ, float fRX, float fRY, float fRZ])`
- `bool detachElementFromElement(element theElement, [element theAttachToElement])`
- `float, float, float getObjectRotation(object theObject)`
- `int getPedSkin(ped thePed)`
- `int getPlayerArmor(player thePlayer)`
- `element getPlayerContactElement(player thePlayer)`
- `player getPlayerFromName(string playerName)`
- `string getPlayerIP(player thePlayer)`
- `int getPlayerMoney(player thePlayer)`
- `string getPlayerName(player thePlayer)`
- `int getPlayerPing(player thePlayer)`
- `float, float, float getPlayerRotation(player thePlayer)`
- `int getPlayerScore(player thePlayer)`
- `string getPlayerSerial(player thePlayer)`
- `int getPlayerSkin(player thePlayer)`
- `team getPlayerTeam(player thePlayer)`
- `string getPlayerVersion(player thePlayer)`
- `int getVehicleID(vehicle theVehicle)`
- `int getVehicleIDFromName(string name)`
- `int getVehicleModel(vehicle theVehicle)`
- `string getVehicleNameFromID(int modelID)`
- `float, float, float getVehicleRotation(vehicle theVehicle)`
- `bool isPlayerInVehicle(player thePlayer)`
- `bool isPlayerMuted(player thePlayer)`
- `bool setElementModel(element theElement, int modelID)`
- `bool setObjectRotation(object theObject, float fRX, float fRY, float fRZ)`
- `bool setPedSkin(ped thePed, int skinID)`
- `bool setPlayerMoney(player thePlayer, int money)`
- `bool setPlayerMuted(player thePlayer, bool muted)`
- `bool setPlayerName(player thePlayer, string newName)`
- `bool setPlayerRotation(player thePlayer, float fAngle)`
- `bool setPlayerScore(player thePlayer, int score)`
- `bool setPlayerSkin(player thePlayer, int skinID)`
- `bool setPlayerTeam(player thePlayer, team theTeam)`
- `bool setVehicleID(vehicle theVehicle, int modelID)`
- `bool setVehicleModel(vehicle theVehicle, int modelID)`
- `bool setVehicleRotation(vehicle theVehicle, float fRX, float fRY, float fRZ)`
- `xmlnode xmlCopyFile(xmlnode node, string filePath)`
- `xmlnode xmlCreateChild(xmlnode parentNode, string tagName)`
- `xmlnode xmlCreateFile(string filePath, string rootNodeName)`
- `bool xmlDestroyNode(xmlnode node)`
- `xmlnode xmlFindChild(xmlnode parentNode, string tagName, int index)`
- `xmlnode xmlLoadFile(string filePath, [bool readOnly=false])`
- `string xmlNodeGetAttribute(xmlnode node, string name)`
- `table xmlNodeGetAttributes(xmlnode node)`
- `table xmlNodeGetChildren(xmlnode parentNode, [int index])`
- `string xmlNodeGetName(xmlnode node)`
- `xmlnode xmlNodeGetParent(xmlnode node)`
- `string xmlNodeGetValue(xmlnode node)`
- `bool xmlNodeSetAttribute(xmlnode node, string name, string value)`
- `bool xmlNodeSetName(xmlnode node, string name)`
- `bool xmlNodeSetValue(xmlnode node, string value, [bool cdata=false])`
- `bool xmlSaveFile(xmlnode node)`
- `bool xmlUnloadFile(xmlnode node)` - Unloads an XML file.

### Database
- `element dbConnect(string type, string host, [string username="", string password="", string options=""])` - Connects to a database.
- `bool dbExec(element connection, string query, ...)` - Executes a database query.
- `bool dbFree(handle query)` - Frees a database query result.
- `table dbPoll(handle query, int timeout, [bool multipleResults=false])` - Polls a database query result.
- `string dbPrepareString(element connection, string query, ...)` - Prepares a string for a database query.
- `handle dbQuery([function callbackFunction, [table callbackArguments,]] element connection, string query, ...)` - Executes a database query.
- `bool executeSQLCreateTable(string tableName, string definition)` - Creates a table in the database.
- `bool executeSQLDelete(string tableName, string where)` - Deletes from a table in the database.
- `bool executeSQLDropTable(string tableName)` - Drops a table from the database.
- `bool executeSQLInsert(string tableName, string values, [string columns=""])` - Inserts into a table in the database.
- `table executeSQLQuery(string query, ...)` - Executes a database query.
- `table executeSQLSelect(string tableName, string columns, [string where="", int limit=0])` - Selects from a table in the database.
- `bool executeSQLUpdate(string tableName, string set, [string where=""])` - Updates a table in the database.

### Elements
- `bool addElementDataSubscriber(element theElement, string key, player thePlayer)` - Adds a subscriber to an element's data.
- `bool attachElements(element theElement, element theAttachToElement, [float xPosOffset, float yPosOffset, float zPosOffset, float xRotOffset, float yRotOffset, float zRotOffset])` - Attaches an element to another.
- `bool clearElementVisibleTo(element theElement)` - Clears the visibility of an element.
- `element cloneElement(element theElement, [float xPos=0, float yPos=0, float zPos=0, bool cloneChildren=false])` - Clones an element.
- `element createElement(string elementType, [string elementID])` - Creates an element.
- `bool destroyElement(element elementToDestroy)` - Destroys an element.
- `bool detachElements(element theElement, [element theAttachToElement])` - Detaches an element from another.
- `var getElementData(element theElement, string key, [bool inherit=true])` - Gets a piece of data from an element.
- `element getElementByID(string id, [int index=0])` - Gets an element by its ID.
- `element getElementByIndex(string type, int index)` - Gets an element by its index.
- `table getElementChildren(element parent, [string theType=nil])` - Gets the children of an element.
- `int getElementChildrenCount(element parent)` - Gets the number of children of an element.
- `colshape getElementColShape(element theElement)` - Gets the colshape of an element.
- `int getElementDimension(element theElement)` - Gets the dimension of an element.
- `float getElementHealth(element theElement)` - Gets the health of an element.
- `string getElementID(element theElement)` - Gets the ID of an element.
- `int getElementInterior(element theElement)` - Gets the interior of an element.
- `int getElementModel(element theElement)` - Gets the model of an element.
- `element getElementParent(element theElement)` - Gets the parent of an element.
- `float, float, float getElementPosition(element theElement)` - Gets the position of an element.
- `float, float, float getElementRotation(element theElement, [string rotOrder="default"])` - Gets the rotation of an element.
- `element getElementSyncer(element theElement)` - Gets the syncer of an element.
- `string getElementType(element theElement)` - Gets the type of an element.
- `float, float, float getElementVelocity(element theElement)` - Gets the velocity of an element.
- `string getElementZoneName(element theElement, [bool citiesonly=false])` - Gets the zone name of an element.
- `table getElementsByType(string theType, [element startat=getRootElement()])` - Gets all elements of a certain type.
- `table getElementsWithinColShape(colshape shape, [string elemType])` - Gets all elements within a colshape.
- `bool isElement(var theValue)` - Checks if a value is an element.
- `bool isElementAttached(element theElement)` - Checks if an element is attached.
- `bool isElementDoubleSided(element theElement)` - Checks if an element is double-sided.
- `bool isElementFrozen(element theElement)` - Checks if an element is frozen.
- `bool isElementInWater(element theElement)` - Checks if an element is in water.
- `bool isElementVisibleTo(element theElement, element visibleTo)` - Checks if an element is visible to another element.
- `bool isElementWithinColShape(element theElement, colshape theShape)` - Checks if an element is within a colshape.
- `bool isElementWithinMarker(element theElement, marker theMarker)` - Checks if an element is within a marker.
- `bool removeElementData(element theElement, string key)` - Removes a piece of data from an element.
- `bool removeElementDataSubscriber(element theElement, string key, player thePlayer)` - Removes a subscriber from an element's data.
- `bool setElementAlpha(element theElement, int alpha)` - Sets the alpha of an element.
- `bool setElementAttachedOffsets(element theElement, [float xPosOffset, float yPosOffset, float zPosOffset, float xRotOffset, float yRotOffset, float zRotOffset])` - Sets the attached offsets of an element.
- `bool setElementCollisionsEnabled(element theElement, bool enabled)` - Sets the collisions of an element.
- `bool setElementData(element theElement, string key, var value, [var syncMode=true])` - Sets a piece of data for an element.
- `bool setElementDimension(element theElement, int dimension)` - Sets the dimension of an element.
- `bool setElementDoubleSided(element theElement, bool enable)` - Sets the double-sidedness of an element.
- `bool setElementFrozen(element theElement, bool freezeStatus)` - Sets the frozen status of an element.
- `bool setElementHealth(element theElement, float newHealth)` - Sets the health of an element.
- `bool setElementID(element theElement, string name)` - Sets the ID of an element.
- `bool setElementInterior(element theElement, int interior, [float x, float y, float z])` - Sets the interior of an element.
- `bool setElementModel(element theElement, int model)` - Sets the model of an element.
- `bool setElementParent(element theElement, element parent)` - Sets the parent of an element.
- `bool setElementPosition(element theElement, float x, float y, float z, [bool warp=true])` - Sets the position of an element.
- `bool setElementRotation(element theElement, float rotX, float rotY, float rotZ, [string rotOrder="default", bool fixPedRotation=false])` - Sets the rotation of an element.
- `bool setElementSyncer(element theElement, player thePlayer)` - Sets the syncer of an element.
- `bool setElementVelocity(element theElement, float speedX, float speedY, float speedZ)` - Sets the velocity of an element.
- `bool setElementVisibleTo(element theElement, element visibleTo, bool visible)` - Sets the visibility of an element.

### Events
- `bool addEvent(string eventName, [bool allowRemoteTrigger=false])` - Adds a custom event.
- `bool addEventHandler(string eventName, element attachedTo, function handlerFunction, [bool getPropagated=true, string priority="normal"])` - Adds an event handler.
- `bool cancelEvent([bool cancel=true, string reason=""])` - Cancels an event.
- `bool cancelLatentEvent(element player, int handle)` - Cancels a latent event.
- `string getCancelReason()` - Gets the reason an event was cancelled.
- `table getEventHandlers(string eventName, element attachedTo)` - Gets the handlers for an event.
- `table getLatentEventHandles(element player)` - Gets the latent event handles for a player.
- `table getLatentEventStatus(element player, int handle)` - Gets the status of a latent event.
- `bool removeEventHandler(string eventName, element attachedTo, function functionVar)` - Removes an event handler.
- `bool triggerEvent(string eventName, element baseElement, [var argument1, ...])` - Triggers an event.
- `bool triggerClientEvent([element/table triggerFor,] string name, element theElement, [arguments...])` - Triggers a client event.
- `bool triggerLatentClientEvent([element/table triggerFor,] string name, [int bandwidth=50000,] [bool persist=false,] element theElement, [arguments...])` - Triggers a latent client event.
- `bool wasEventCancelled()` - Checks if an event was cancelled.

### Functions
- `bool addCommandHandler(string commandName, function handlerFunction, [bool restricted=false, bool caseSensitive=true])` - Adds a command handler.
- `bool bindKey(player thePlayer, string key, string keyState, function handlerFunction, [var arguments...])` - Binds a key.
- `var call(resource theResource, string functionName, [var arguments...])` - Calls a function in another resource.
- `bool cancelEvent([bool cancel=true, string reason=""])` - Cancels an event.
- `bool createExplosion(float x, float y, float z, int theType, [element creator])` - Creates an explosion.
- `bool executeCommandHandler(string commandName, player thePlayer, [string args])` - Executes a command handler.
- `string get(string settingName)` - Gets a setting.
- `string getBodyPartName(int bodyPartID)` - Gets the name of a body part.
- `string getCancelReason()` - Gets the reason an event was cancelled.
- `string, string getClothesByTypeIndex(int clothesType, int clothesIndex)` - Gets the clothes for a given type and index.
- `string getClothesTypeName(int clothesType)` - Gets the name of a clothes type.
- `table getCommandHandlers([resource sourceResource])` - Gets the command handlers.
- `bool getDevelopmentMode()` - Gets the development mode status.
- `table getEventHandlers(string eventName, element attachedTo)` - Gets the event handlers for an event.
- `string getGameType()` - Gets the game type.
- `table getLatentEventHandles(element player)` - Gets the latent event handles for a player.
- `table getLatentEventStatus(element player, int handle)` - Gets the status of a latent event.
- `string getMapName()` - Gets the map name.
- `table getModuleInfo(string moduleName)` - Gets information about a module.
- `table getModules()` - Gets a list of loaded modules.
- `table getNetworkStats([element player])` - Gets network statistics.
- `table getNetworkUsageData()` - Gets network usage data.
- `table getPerformanceStats(string category, [string options="", string filter=""])` - Gets performance statistics.
- `table getRegisteredCommands()` - Gets a list of registered commands.
- `element getRootElement()` - Gets the root element.
- `string getRuleValue(string key)` - Gets a server rule value.
- `int getServerPort()` - Gets the server port.
- `int, int getTypeIndexFromClothes(string texture, [string model=""])` - Gets the type and index for a given piece of clothing.
- `table getVersion()` - Gets the server version.
- `string getWeaponIDFromName(string name)` - Gets the ID of a weapon from its name.
- `string getWeaponNameFromID(int weaponID)` - Gets the name of a weapon from its ID.
- `var getWeaponProperty(int weaponID/string weaponName, string weaponSkill, string property)` - Gets a weapon property.
- `bool removeCommandHandler(string commandName, [function handler])` - Removes a command handler.
- `bool removeRuleValue(string key)` - Removes a server rule value.
- `bool resetMapInfo([element mapInfoElement])` - Resets the map info.
- `bool set(string settingName, var value)` - Sets a setting.
- `bool setDevelopmentMode(bool enable)` - Sets the development mode.
- `bool setGameType(string gameType)` - Sets the game type.
- `bool setMapName(string mapName)` - Sets the map name.
- `bool setRuleValue(string key, string value)` - Sets a server rule value.
- `bool setServerConfigSetting(string name, string value, [bool save=false])` - Sets a server config setting.
- `bool setWeaponProperty(int weaponID/string weaponName, string weaponSkill, string property, int/float theValue)` - Sets a weapon property.
- `bool shutdown(string reason, [int exitCode])` - Shuts down the server.
- `bool unbindKey(player thePlayer, string key, [string keyState, function handler])` - Unbinds a key.

### Handling
- `table getModelHandling(int modelId)` - Gets the handling of a vehicle model.
- `table getOriginalHandling(int modelID)` - Gets the original handling of a vehicle model.
- `table getVehicleHandling(element theVehicle, [string property])` - Gets the handling of a vehicle.
- `bool setModelHandling(int modelId, [string property, var value])` - Sets the handling of a vehicle model.
- `bool setVehicleHandling(element theVehicle, string property, var value)` - Sets the handling of a vehicle.

### Markers
- `marker createMarker(float x, float y, float z, [string markerType="checkpoint", float size=4.0, int r=0, int g=0, int b=255, int a=255, element visibleTo=getRootElement()])` - Creates a marker.
- `int getMarkerCount()` - Gets the number of markers.
- `int, int, int, int getMarkerColor(marker theMarker)` - Gets the color of a marker.
- `string getMarkerIcon(marker theMarker)` - Gets the icon of a marker.
- `float getMarkerSize(marker theMarker)` - Gets the size of a marker.
- `float, float, float getMarkerTarget(marker theMarker)` - Gets the target of a marker.
- `string getMarkerType(marker theMarker)` - Gets the type of a marker.
- `bool setMarkerColor(marker theMarker, int r, int g, int b, int a)` - Sets the color of a marker.
- `bool setMarkerIcon(marker theMarker, string icon)` - Sets the icon of a marker.
- `bool setMarkerSize(marker theMarker, float size)` - Sets the size of a marker.
- `bool setMarkerTarget(marker theMarker, float x, float y, float z)` - Sets the target of a marker.
- `bool setMarkerType(marker theMarker, string markerType)` - Sets the type of a marker.

### Network
- `bool abortRemoteRequest(element theRequest)` - Aborts a remote request.
- `element callRemote(string host, [string queueName,] [int connectionAttempts=10, int connectTimeout=10000,] string resourceName, string functionName, function callbackFunction, [arguments...])` - Calls a function on a remote server.
- `element fetchRemote(string URL, [string queueName,] [int connectionAttempts=10, int connectTimeout=10000,] function callbackFunction, [string postData, bool bPostBinary, arguments...])` - Fetches a URL.
- `table getRemoteRequestInfo(element theRequest, [int postDataLength=0, bool includeHeaders=false])` - Gets information about a remote request.
- `table getRemoteRequests([resource theResource=nil])` - Gets a list of remote requests.

### Objects
- `bool breakObject(object theObject)` - Breaks an object.
- `object createObject(int modelid, float x, float y, float z, [float rx, float ry, float rz, bool lowLOD])` - Creates an object.
- `float, float, float getObjectRotation(object theObject)` - Gets the rotation of an object.
- `float, float, float getObjectScale(object theObject)` - Gets the scale of an object.
- `bool moveObject(object theObject, int time, float targetx, float targety, float targetz, [float moverx, float movery, float moverz, string strEasingType, float fEasingPeriod, float fEasingAmplitude, float fEasingOvershoot])` - Moves an object.
- `bool respawnObject(object theObject)` - Respawns an object.
- `bool setObjectRotation(object theObject, float rotX, float rotY, float rotZ)` - Sets the rotation of an object.
- `bool setObjectScale(object theObject, float scale)` - Sets the scale of an object.
- `bool stopObject(object theObject)` - Stops an object from moving.
- `bool toggleObjectRespawn(object theObject, bool respawn)` - Toggles the respawn of an object.

### Peds
- `bool addPedClothes(ped thePed, string clothesTexture, string clothesModel, int clothesType)` - Adds clothes to a ped.
- `ped createPed(int modelid, float x, float y, float z, [float rot=0.0, bool synced=true])` - Creates a ped.
- `bool giveWeapon(ped thePed, int weapon, [int ammo=30, bool setAsCurrent=false])` - Gives a weapon to a ped.
- `bool isPedChoking(ped thePed)` - Checks if a ped is choking.
- `bool isPedDead(ped thePed)` - Checks if a ped is dead.
- `bool isPedDucked(ped thePed)` - Checks if a ped is ducked.
- `bool isPedHeadless(ped thePed)` - Checks if a ped is headless.
- `bool isPedOnFire(ped thePed)` - Checks if a ped is on fire.
- `bool isPedOnGround(ped thePed)` - Checks if a ped is on ground.
- `bool isPedWearingJetpack(ped thePed)` - Checks if a ped is wearing a jetpack.
- `bool killPed(ped thePed, [element killer=nil, int weapon=255, int bodyPart=255, bool stealth=false])` - Kills a ped.
- `bool reloadPedWeapon(ped thePed)` - Reloads a ped's weapon.
- `bool removePedClothes(ped thePed, int clothesType, [string clothesTexture, string clothesModel])` - Removes clothes from a ped.
- `bool removePedFromVehicle(ped thePed)` - Removes a ped from a vehicle.
- `bool setPedAnimation(ped thePed, [string block=nil, string anim=nil, int time=-1, bool loop=true, bool updatePosition=true, bool interruptable=true, bool freezeLastFrame=true, int blendTime=250])` - Sets the animation of a ped.
- `bool setPedOnFire(ped thePed, bool isOnFire)` - Sets a ped on fire.
- `bool setPedWeaponSlot(ped thePed, int weaponSlot)` - Sets the weapon slot of a ped.
- `bool takeAllWeapons(ped thePed)` - Takes all weapons from a ped.
- `bool takeWeapon(ped thePed, int weaponId, [int ammo])` - Takes a weapon from a ped.
- `bool warpPedIntoVehicle(ped thePed, vehicle theVehicle, [int seat=0])` - Warps a ped into a vehicle.

### Pickups
- `pickup createPickup(float x, float y, float z, int theType, int amount/weapon/model, [int respawnTime=30000, int ammo=50])` - Creates a pickup.
- `int getPickupAmmo(pickup thePickup)` - Gets the ammo of a pickup.
- `int getPickupAmount(pickup thePickup)` - Gets the amount of a pickup.
- `int getPickupRespawnInterval(pickup thePickup)` - Gets the respawn interval of a pickup.
- `int getPickupType(pickup thePickup)` - Gets the type of a pickup.
- `int getPickupWeapon(pickup thePickup)` - Gets the weapon of a pickup.
- `bool isPickupSpawned(pickup thePickup)` - Checks if a pickup is spawned.
- `bool setPickupRespawnInterval(pickup thePickup, int ms)` - Sets the respawn interval of a pickup.
- `bool setPickupType(pickup thePickup, int theType, int amount/weapon/model, [int ammo])` - Sets the type of a pickup.
- `bool usePickup(pickup thePickup, player thePlayer)` - Uses a pickup.

### Players
- `ban banPlayer(player bannedPlayer, [bool IP=true, bool Username=false, bool Serial=false, player responsiblePlayer=nil, string reason=nil, int seconds=0])` - Bans a player.
- `bool bindKey(player thePlayer, string key, string keyState, function handlerFunction, [var arguments...])` - Binds a key for a player.
- `bool forcePlayerMap(player thePlayer, bool force)` - Forces the player's map to be visible.
- `table getAlivePlayers()` - Gets a table of all alive players.
- `table getDeadPlayers()` - Gets a table of all dead players.
- `string getPlayerIP(player thePlayer)` - Gets the IP of a player.
- `long getPlayerMoney(player thePlayer)` - Gets the money of a player.
- `string getPlayerName(player thePlayer)` - Gets the name of a player.
- `int getPlayerPing(player thePlayer)` - Gets the ping of a player.
- `string getPlayerSerial(player thePlayer)` - Gets the serial of a player.
- `team getPlayerTeam(player thePlayer)` - Gets the team of a player.
- `int getPlayerWantedLevel(player thePlayer)` - Gets the wanted level of a player.
- `bool givePlayerMoney(player thePlayer, long amount)` - Gives money to a player.
- `bool isPlayerMuted(player thePlayer)` - Checks if a player is muted.
- `bool kickPlayer(player thePlayer, [string reason=""])` - Kicks a player.
- `bool redirectPlayer(player thePlayer, string host, int port, [string password=""])` - Redirects a player to another server.
- `bool setPlayerHudComponentVisible(player thePlayer, string component, bool show)` - Sets the visibility of a HUD component for a player.
- `bool setPlayerMoney(player thePlayer, long amount, [bool instant=false])` - Sets the money of a player.
- `bool setPlayerMuted(player thePlayer, bool muted)` - Mutes or unmutes a player.
- `bool setPlayerName(player thePlayer, string newName)` - Sets the name of a player.
- `bool setPlayerTeam(player thePlayer, team theTeam)` - Sets the team of a player.
- `bool setPlayerWantedLevel(player thePlayer, int level)` - Sets the wanted level of a player.
- `bool spawnPlayer(player thePlayer, float x, float y, float z, [float rotation=0.0, int skinID=0, int interior=0, int dimension=0, team theTeam=nil])` - Spawns a player.
- `bool takePlayerMoney(player thePlayer, long amount)` - Takes money from a player.
- `bool takePlayerScreenShot(player thePlayer, int sizeX, int sizeY, [string tag="", int quality=30, int maxBandwidth=5000, int maxPacketSize=500])` - Takes a screenshot of a player's screen.
- `bool unbindKey(player thePlayer, string key, [string keyState, function handler])` - Unbinds a key for a player.

### RadarAreas
- `radararea createRadarArea(float startPosX, float startPosY, float sizeX, float sizeY, [int r=255, int g=0, int b=0, int a=255, element visibleTo=getRootElement()])` - Creates a radar area.
- `int, int, int, int getRadarAreaColor(radararea theRadararea)` - Gets the color of a radar area.
- `float, float getRadarAreaSize(radararea theRadararea)` - Gets the size of a radar area.
- `bool isInsideRadarArea(radararea theArea, float posX, float posY)` - Checks if a point is inside a radar area.
- `bool isRadarAreaFlashing(radararea theRadararea)` - Checks if a radar area is flashing.
- `bool setRadarAreaColor(radararea theRadarArea, int r, int g, int b, int a)` - Sets the color of a radar area.
- `bool setRadarAreaFlashing(radararea theRadarArea, bool flash)` - Sets the flashing status of a radar area.
- `bool setRadarAreaSize(radararea theRadararea, float x, float y)` - Sets the size of a radar area.

### Resources
- `xmlnode addResourceConfig(string filePath, [string fileType="server"])` - Adds a config file to a resource.
- `xmlnode addResourceMap(string filePath, [int dimension=0])` - Adds a map file to a resource.
- `var call(resource theResource, string functionName, [var arguments...])` - Calls a function in another resource.
- `resource createResource(string resourceName, [string organizationalDir=""])` - Creates a new resource.
- `bool deleteResource(string resourceName)` - Deletes a resource.
- `table getResourceACLRequests(resource theResource)` - Gets the ACL requests for a resource.
- `xmlnode getResourceConfig(string filePath)` - Gets the config file of a resource.
- `element getResourceDynamicElementRoot(resource theResource)` - Gets the dynamic element root of a resource.
- `table getResourceExportedFunctions(resource theResource)` - Gets the exported functions of a resource.
- `string getResourceInfo(resource theResource, string infoKey)` - Gets information about a resource.
- `string getResourceLoadFailureReason(resource theResource)` - Gets the reason a resource failed to load.
- `int getResourceLoadTime(resource theResource)` - Gets the time a resource was loaded.
- `string getResourceName(resource theResource)` - Gets the name of a resource.
- `element getResourceRootElement(resource theResource)` - Gets the root element of a resource.
- `string getResourceState(resource theResource)` - Gets the state of a resource.
- `table getResources()` - Gets a table of all resources.
- `resource getThisResource()` - Gets the current resource.
- `bool isResourceArchived(resource theResource)` - Checks if a resource is archived.
- `bool isResourceProtected(resource theResource)` - Checks if a resource is protected.
- `bool refreshResources([bool refreshAll=false, resource onlyThisResource=nil])` - Refreshes resources.
- `bool removeResourceFile(resource theResource, string fileName)` - Removes a file from a resource.
- `bool restartResource(resource theResource, [bool persistent=false, bool configs=true, bool maps=true, bool scripts=true, bool html=true, bool clientConfigs=true, bool clientScripts=true, bool clientFiles=true])` - Restarts a resource.
- `bool setResourceInfo(resource theResource, string infoKey, string infoValue, [bool save=true])` - Sets information about a resource.
- `bool startResource(resource theResource, [bool persistent=false, bool includedResources=true, bool configs=true, bool maps=true, bool scripts=true, bool html=true, bool clientConfigs=true, bool clientScripts=true, bool clientFiles=true])` - Starts a resource.
- `bool stopResource(resource theResource)` - Stops a resource.
- `bool updateResourceACLRequest(resource theResource, string rightName, bool access, [string byWho=""])` - Updates an ACL request for a resource.

### Teams
- `int countPlayersInTeam(team theTeam)` - Counts the players in a team.
- `team createTeam(string teamName, [int r=255, int g=255, int b=255])` - Creates a team.
- `team getPlayerTeam(player thePlayer)` - Gets the team of a player.
- `table getPlayersInTeam(team theTeam)` - Gets the players in a team.
- `team getTeamFromName(string teamName)` - Gets a team from its name.
- `bool getTeamFriendlyFire(team theTeam)` - Gets the friendly fire status of a team.
- `string getTeamName(team theTeam)` - Gets the name of a team.
- `bool setPlayerTeam(player thePlayer, team theTeam)` - Sets the team of a player.
- `bool setTeamFriendlyFire(team theTeam, bool friendlyFire)` - Sets the friendly fire status of a team.
- `bool setTeamName(team theTeam, string newName)` - Sets the name of a team.

### Text
- `textdisplay textCreateDisplay()` - Creates a text display.
- `textitem textCreateTextItem(string text, [float x=0.5, float y=0.5, string priority="low", int r=255, int g=255, int b=255, int a=255, float scale=1, string alignX="left", string alignY="top", int shadowAlpha=0])` - Creates a text item.
- `bool textDestroyDisplay(textdisplay theDisplay)` - Destroys a text display.
- `bool textDestroyTextItem(textitem theItem)` - Destroys a text item.
- `bool textDisplayAddObserver(textdisplay theDisplay, player thePlayer)` - Adds an observer to a text display.
- `bool textDisplayAddText(textdisplay theDisplay, textitem theItem)` - Adds a text item to a text display.
- `table textDisplayGetObservers(textdisplay theDisplay)` - Gets the observers of a text display.
- `bool textDisplayIsObserver(textdisplay theDisplay, player thePlayer)` - Checks if a player is an observer of a text display.
- `bool textDisplayRemoveObserver(textdisplay theDisplay, player thePlayer)` - Removes an observer from a text display.
- `bool textDisplayRemoveText(textdisplay theDisplay, textitem theItem)` - Removes a text item from a text display.
- `int, int, int, int textItemGetColor(textitem theItem)` - Gets the color of a text item.
- `float, float textItemGetPosition(textitem theItem)` - Gets the position of a text item.
- `int textItemGetPriority(textitem theItem)` - Gets the priority of a text item.
- `float textItemGetScale(textitem theItem)` - Gets the scale of a text item.
- `string textItemGetText(textitem theItem)` - Gets the text of a text item.
- `bool textItemSetColor(textitem theItem, int r, int g, int b, int a)` - Sets the color of a text item.
- `bool textItemSetPosition(textitem theItem, float x, float y)` - Sets the position of a text item.
- `bool textItemSetPriority(textitem theItem, int priority)` - Sets the priority of a text item.
- `bool textItemSetScale(textitem theItem, float scale)` - Sets the scale of a text item.
- `bool textItemSetText(textitem theItem, string text)` - Sets the text of a text item.

### Timers
- `int, int, int getTimerDetails(timer theTimer)` - Gets the details of a timer.
- `table getTimers([int timeLeft=0])` - Gets a list of active timers.
- `bool isTimer(timer theTimer)` - Checks if a timer is valid.
- `bool killTimer(timer theTimer)` - Kills a timer.
- `bool resetTimer(timer theTimer)` - Resets a timer.
- `timer setTimer(function theFunction, int timeInterval, int timesToExecute, [var arguments...])` - Creates a timer.

### Voice
- `bool isVoiceEnabled()` - Checks if voice chat is enabled.
- `bool setPlayerVoiceBroadcastTo(player thePlayer, element broadcastTo)` - Sets the element a player's voice is broadcasted to.
- `bool setPlayerVoiceIgnoreFrom(player thePlayer, element ignoreFrom)` - Sets the element a player's voice is ignored from.

### Water
- `water createWater(float x1, float y1, float z1, float x2, float y2, float z2, float x3, float y3, float z3, [float x4, float y4, float z4, bool bShallow=false])` - Creates a water element.
- `int, int, int, int getWaterColor()` - Gets the color of the water.
- `float, float, float getWaterVertexPosition(water theWater, int vertexIndex)` - Gets the position of a water vertex.
- `bool resetWaterColor()` - Resets the color of the water.
- `bool resetWaterLevel()` - Resets the water level.
- `bool setWaterColor(int r, int g, int b, [int a=200])` - Sets the color of the water.
- `bool setWaterLevel([water theWater,] float level)` - Sets the water level.
- `bool setWaterVertexPosition(water theWater, int vertexIndex, float x, float y, float z)` - Sets the position of a water vertex.

### World
- `float getAircraftMaxHeight()` - Gets the maximum height for aircraft.
- `float getAircraftMaxVelocity()` - Gets the maximum velocity for aircraft.
- `bool getCloudsEnabled()` - Checks if clouds are enabled.
- `float getFarClipDistance()` - Gets the far clip distance.
- `float getFogDistance()` - Gets the fog distance.
- `float getGameSpeed()` - Gets the game speed.
- `float getGravity()` - Gets the gravity level.
- `table getHeatHaze()` - Gets the heat haze settings.
- `bool getInteriorSoundsEnabled()` - Checks if interior sounds are enabled.
- `float getJetpackMaxHeight()` - Gets the maximum height for the jetpack.
- `bool getJetpackWeaponEnabled(string weapon)` - Checks if a weapon is enabled for the jetpack.
- `int getMinuteDuration()` - Gets the duration of a minute in milliseconds.
- `int getMoonSize()` - Gets the moon size.
- `bool getOcclusionsEnabled()` - Checks if occlusions are enabled.
- `float getRainLevel()` - Gets the rain level.
- `table getSkyGradient()` - Gets the sky gradient.
- `table getSunColor()` - Gets the sun color.
- `float getSunSize()` - Gets the sun size.
- `int, int getTime()` - Gets the current time.
- `int getTrafficLightState()` - Gets the state of the traffic lights.
- `int, int getWeather()` - Gets the current weather.
- `float, float, float getWindVelocity()` - Gets the wind velocity.
- `string getZoneName(float x, float y, float z, [bool citiesonly=false])` - Gets the name of the zone at a given position.
- `bool isGarageOpen(int garageID)` - Checks if a garage is open.
- `bool isGlitchEnabled(string glitchName)` - Checks if a glitch is enabled.
- `bool removeWorldModel(int modelID, float radius, float x, float y, float z, [int interior=-1])` - Removes a world model.
- `bool resetFarClipDistance()` - Resets the far clip distance.
- `bool resetFogDistance()` - Resets the fog distance.
- `bool resetHeatHaze()` - Resets the heat haze.
- `bool resetMoonSize()` - Resets the moon size.
- `bool resetRainLevel()` - Resets the rain level.
- `bool resetSkyGradient()` - Resets the sky gradient.
- `bool resetSunColor()` - Resets the sun color.
- `bool resetSunSize()` - Resets the sun size.
- `bool resetWindVelocity()` - Resets the wind velocity.
- `bool restoreAllWorldModels()` - Restores all world models.
- `bool restoreWorldModel(int modelID, float radius, float x, float y, float z, [int interior=-1])` - Restores a world model.
- `bool setAircraftMaxHeight(float height)` - Sets the maximum height for aircraft.
- `bool setAircraftMaxVelocity(float velocity)` - Sets the maximum velocity for aircraft.
- `bool setCloudsEnabled(bool enabled)` - Sets whether clouds are enabled.
- `bool setFarClipDistance(float distance)` - Sets the far clip distance.
- `bool setFogDistance(float distance)` - Sets the fog distance.
- `bool setGameSpeed(float speed)` - Sets the game speed.
- `bool setGarageOpen(int garageID, bool open)` - Sets a garage to be open or closed.
- `bool setGlitchEnabled(string glitchName, bool enable)` - Sets a glitch to be enabled or disabled.
- `bool setGravity(float level)` - Sets the gravity level.
- `bool setHeatHaze(int intensity, [int randomShift=0, int speedMin=12, int speedMax=18, int scanSizeX=75, int scanSizeY=80, int renderSizeX=80, int renderSizeY=85, bool insideBuilding=false])` - Sets the heat haze.
- `bool setInteriorSoundsEnabled(bool enabled)` - Sets whether interior sounds are enabled.
- `bool setJetpackMaxHeight(float height)` - Sets the maximum height for the jetpack.
- `bool setJetpackWeaponEnabled(string weapon, bool enabled)` - Sets whether a weapon is enabled for the jetpack.
- `bool setMinuteDuration(int milliseconds)` - Sets the duration of a minute in milliseconds.
- `bool setMoonSize(int size)` - Sets the moon size.
- `bool setOcclusionsEnabled(bool enabled)` - Sets whether occlusions are enabled.
- `bool setRainLevel(float level)` - Sets the rain level.
- `bool setSkyGradient([int topR=0, int topG=0, int topB=0, int bottomR=0, int bottomG=0, int bottomB=0])` - Sets the sky gradient.
- `bool setSunColor([int coreR=0, int coreG=0, int coreB=0, int coronaR=coreR, int coronaG=coreG, int coronaB=coreB])` - Sets the sun color.
- `bool setSunSize(float size)` - Sets the sun size.
- `bool setTime(int hour, int minute)` - Sets the time.
- `bool setTrafficLightState(int state)` - Sets the state of the traffic lights.
- `bool setTrafficLightsLocked(bool locked)` - Sets whether the traffic lights are locked.
- `bool setWeather(int weatherID)` - Sets the weather.
- `bool setWeatherBlended(int weatherID)` - Sets the weather with a blend.
- `bool setWindVelocity(float velX, float velY, float velZ)` - Sets the wind velocity.

### Client
- `bool clearDebugBox()` - Clears the debug box.
- `bool isCapsLockEnabled()` - Checks if caps lock is enabled.
- `bool isChatInputBlocked()` - Checks if chat input is blocked.
- `bool isChatVisible()` - Checks if the chat is visible.
- `bool isMTAWindowFocused()` - Checks if the MTA window is focused.
- `bool isTransferBoxAlwaysVisible()` - Checks if the transfer box is always visible.
- `bool isTransferBoxVisible()` - Checks if the transfer box is visible.
- `bool setTransferBoxVisible(bool visible)` - Sets the visibility of the transfer box.
- `bool showChat(bool show, [bool inputBlocked=!show])` - Shows or hides the chat.

### ColShapes
- `bool addColPolygonPoint(colshape thePolygon, int pointIndex, float x, float y)` - Adds a point to a polygon colshape.
- `colshape createColCircle(float fX, float fY, float fRadius)` - Creates a colshape circle.
- `colshape createColCuboid(float fX, float fY, float fZ, float fWidth, float fDepth, float fHeight)` - Creates a colshape cuboid.
- `colshape createColPolygon(float fX, float fY, float fX1, float fY1, float fX2, float fY2, float fX3, float fY3, ...)` - Creates a colshape polygon.
- `colshape createColRectangle(float fX, float fY, float fWidth, float fHeight)` - Creates a colshape rectangle.
- `colshape createColSphere(float fX, float fY, float fZ, float fRadius)` - Creates a colshape sphere.
- `colshape createColTube(float fX, float fY, float fZ, float fRadius, float fHeight)` - Creates a colshape tube.
- `float, float getColPolygonHeight(colshape polygon)` - Gets the height of a polygon colshape.
- `float, float getColPolygonPointPosition(colshape polygon, int pointIndex)` - Gets the position of a polygon colshape point.
- `table getColPolygonPoints(colshape polygon)` - Gets the points of a polygon colshape.
- `float getColShapeRadius(colshape theColShape)` - Gets the radius of a colshape.
- `float, float, float getColShapeSize(colshape theColShape)` - Gets the size of a colshape.
- `string getColShapeType(colshape theColShape)` - Gets the type of a colshape.
- `bool isInsideColShape(colshape theColShape, float fX, float fY, float fZ)` - Checks if a point is inside a colshape.
- `bool removeColPolygonPoint(colshape polygon, int pointIndex)` - Removes a point from a polygon colshape.
- `bool setColPolygonHeight(colshape polygon, float floor, float ceil)` - Sets the height of a polygon colshape.
- `bool setColPolygonPointPosition(colshape polygon, int pointIndex, float x, float y)` - Sets the position of a polygon colshape point.
- `bool setColShapeRadius(colshape theColShape, float fRadius)` - Sets the radius of a colshape.
- `bool setColShapeSize(colshape theColShape, float fWidth, float fDepth, float fHeight)` - Sets the size of a colshape.

### Drawing
- `font dxCreateFont(string filepath, [int size=9, bool bold=false])` - Creates a font element.
- `rendertarget dxCreateRenderTarget(int width, int height, [bool withAlpha=false])` - Creates a render target.
- `shader dxCreateShader(string filepath, [float priority=0, float maxDistance=0, bool layered=false])` - Creates a shader.
- `texture dxCreateTexture(string filepath, [string format="argb", bool mipmaps=true, string edge="wrap"])` - Creates a texture.
- `bool dxDrawCircle(float x, float y, float radius, [float startAngle=0, float stopAngle=360, int color=white, int centerColor=color, int segments=32, float ratio=1, bool postGUI=false])` - Draws a circle.
- `bool dxDrawImage(float x, float y, float width, float height, material image, [float rotation=0, float rotCenterX=0, float rotCenterY=0, int color=white, bool postGUI=false])` - Draws an image.
- `bool dxDrawImageSection(float x, float y, float width, float height, float u, float v, float usize, float vsize, material image, [float rotation=0, float rotCenterX=0, float rotCenterY=0, int color=white, bool postGUI=false])` - Draws a section of an image.
- `bool dxDrawLine(int startX, int startY, int endX, int endY, [int color=white, float width=1, bool postGUI=false])` - Draws a line.
- `bool dxDrawLine3D(float startX, float startY, float startZ, float endX, float endY, float endZ, [int color=white, int width=1, bool postGUI=false])` - Draws a 3D line.
- `bool dxDrawMaterialLine3D(float startX, float startY, float startZ, float endX, float endY, float endZ, material mat, [float width=1, int color=white])` - Draws a 3D line with a material.
- `bool dxDrawRectangle(float x, float y, float width, float height, [int color=white, bool postGUI=false])` - Draws a rectangle.
- `bool dxDrawText(string text, float left, float top, [float right=left, float bottom=top, int color=white, float scale=1, font font="default", string alignX="left", string alignY="top", bool clip=false, bool wordBreak=false, bool postGUI=false, bool colorCoded=false, bool subPixelPositioning=false])` - Draws text.
- `float dxGetFontHeight(float scale, font font)` - Gets the height of a font.
- `int, int dxGetMaterialSize(material mat)` - Gets the size of a material.
- `string dxGetPixelColor(string pixels, int x, int y)` - Gets the color of a pixel.
- `string dxGetPixelsFormat(string pixels)` - Gets the format of pixels.
- `int, int dxGetPixelsSize(string pixels)` - Gets the size of pixels.
- `string dxGetTexturePixels(texture tex)` - Gets the pixels of a texture.
- `float dxGetTextWidth(string text, [float scale=1, font font="default"])` - Gets the width of a text.
- `bool dxSetBlendMode(string mode)` - Sets the blend mode.
- `bool dxSetPixelColor(string pixels, int x, int y, int r, int g, int b, int a)` - Sets the color of a pixel.
- `bool dxSetRenderTarget([rendertarget target, bool clear=false])` - Sets the render target.
- `bool dxSetShaderValue(shader theShader, string name, var value)` - Sets a value in a shader.
- `bool dxSetTexturePixels(texture tex, string pixels)` - Sets the pixels of a texture.
- `bool dxUpdateScreenSource(screensource screen)` - Updates a screen source.

### Effects
- `effect createEffect(string name, float x, float y, float z, [float rX=0, float rY=0, float rZ=0, float drawDistance=0, bool sound=false])` - Creates an effect.
- `float getEffectDensity(effect theEffect)` - Gets the density of an effect.
- `float getEffectSpeed(effect theEffect)` - Gets the speed of an effect.
- `bool setEffectDensity(effect theEffect, float density)` - Sets the density of an effect.
- `bool setEffectSpeed(effect theEffect, float speed)` - Sets the speed of an effect.

## Shared Functions

### Bitwise Operations
- `int bitAnd(int value, ...)` - Performs a bitwise AND operation.
- `int bitArShift(int value, int shift)` - Performs an arithmetic right shift.
- `int bitExtract(int value, int field, [int width=1])` - Extracts a bit field.
- `int bitLRotate(int value, int shift)` - Performs a left bitwise rotation.
- `int bitLShift(int value, int shift)` - Performs a left bitwise shift.
- `int bitNot(int value)` - Performs a bitwise NOT operation.
- `int bitOr(int value, ...)` - Performs a bitwise OR operation.
- `int bitReplace(int value, int replaceValue, int field, [int width=1])` - Replaces a bit field.
- `int bitRRotate(int value, int shift)` - Performs a right bitwise rotation.
- `int bitRShift(int value, int shift)` - Performs a right bitwise shift.
- `bool bitTest(int value, ...)` - Performs a bitwise test.
- `int bitXor(int value, ...)` - Performs a bitwise XOR operation.

### Cryptography
- `string base64Decode(string data)` - Decodes a base64 string.
- `string base64Encode(string data)` - Encodes a string to base64.
- `string decodeString(string algorithm, string data, table options, [function callback])` - Decodes a string using a specified algorithm.
- `string encodeString(string algorithm, string data, table options, [function callback])` - Encodes a string using a specified algorithm.
- `string, string generateKeyPair(string algorithm, table options, [function callback])` - Generates a key pair.
- `string hash(string algorithm, string data, [table options])` - Hashes a string using a specified algorithm.
- `string md5(string data)` - Calculates the MD5 hash of a string.
- `string passwordHash(string password, string algorithm, table options, [function callback])` - Hashes a password.
- `bool passwordVerify(string password, string hash, table options, [function callback])` - Verifies a password against a hash.
- `string sha256(string data)` - Calculates the SHA256 hash of a string.
- `string teaDecode(string data, string key)` - Decodes a string using TEA.
- `string teaEncode(string data, string key)` - Encodes a string using TEA.

### Elements (Shared)
- `var getElementData(element theElement, string key, [bool inherit=true])` - Gets a piece of data from an element.
- `bool hasElementData(element theElement, string key)` - Checks if an element has a specific piece of data.
- `table getAllElementData(element theElement)` - Gets all the data of an element.

### Files
- `bool fileClose(file theFile)` - Closes a file.
- `bool fileCopy(string sourceFilePath, string destFilePath, [bool overwrite=false])` - Copies a file.
- `file fileCreate(string filePath)` - Creates a file.
- `bool fileDelete(string filePath)` - Deletes a file.
- `bool fileExists(string filePath)` - Checks if a file exists.
- `bool fileFlush(file theFile)` - Flushes a file.
- `string fileGetContents(file target, [bool verifyContents=true])` - Gets the contents of a file.
- `string fileGetPath(file theFile)` - Gets the path of a file.
- `int fileGetPos(file theFile)` - Gets the position in a file.
- `int fileGetSize(file theFile)` - Gets the size of a file.
- `bool fileIsEOF(file theFile)` - Checks if the end of a file has been reached.
- `file fileOpen(string filePath, [bool readOnly=false])` - Opens a file.
- `string fileRead(file theFile, int count)` - Reads from a file.
- `bool fileRename(string sourceFilePath, string destFilePath)` - Renames a file.
- `int fileSetPos(file theFile, int offset)` - Sets the position in a file.
- `int fileWrite(file theFile, string data, ...)` - Writes to a file.

### Matrix
- `matrix createMatrix([float x, float y, float z, float rotX, float rotY, float rotZ])` - Creates a matrix.
- `vector3 getForward(matrix theMatrix)` - Gets the forward vector of a matrix.
- `vector3 getPosition(matrix theMatrix)` - Gets the position of a matrix.
- `vector3 getRight(matrix theMatrix)` - Gets the right vector of a matrix.
- `vector3 getRotation(matrix theMatrix)` - Gets the rotation of a matrix.
- `vector3 getUp(matrix theMatrix)` - Gets the up vector of a matrix.
- `matrix inverse(matrix theMatrix)` - Inverses a matrix.
- `bool setForward(matrix theMatrix, float x, float y, float z)` - Sets the forward vector of a matrix.
- `bool setPosition(matrix theMatrix, float x, float y, float z)` - Sets the position of a matrix.
- `bool setRight(matrix theMatrix, float x, float y, float z)` - Sets the right vector of a matrix.
- `bool setRotation(matrix theMatrix, float rotX, float rotY, float rotZ)` - Sets the rotation of a matrix.
- `bool setUp(matrix theMatrix, float x, float y, float z)` - Sets the up vector of a matrix.
- `vector3 transformDirection(matrix theMatrix, float x, float y, float z)` - Transforms a direction by a matrix.
- `vector3 transformPosition(matrix theMatrix, float x, float y, float z)` - Transforms a position by a matrix.

### Paths
- `bool pathIsDirectory(string path)` - Checks if a path is a directory.
- `bool pathIsFile(string path)` - Checks if a path is a file.
- `table pathListDir(string path)` - Lists the contents of a directory.

### Train Tracks
- `track getDefaultTrack(int trackID)` - Gets the default train track.

### UTF
- `string utfChar(int characterCode)` - Converts a UTF code to a character.
- `int utfCode(string character)` - Converts a character to a UTF code.
- `int utfLen(string text)` - Gets the length of a UTF string.
- `int utfSeek(string text, int position)` - Seeks in a UTF string.
- `string utfSub(string text, int start, [int length])` - Gets a substring of a UTF string.

### Utilities
- `bool debugSleep(int milliseconds)` - Pauses the script for a certain amount of time.
- `var deref(int reference)` - Dereferences a reference.
- `string fromJSON(string json)` - Converts a JSON string to a Lua table.
- `int, int, int, int getColorFromString(string colorString)` - Gets the color from a hex string.
- `float getDistanceBetweenPoints2D(float x1, float y1, float x2, float y2)` - Gets the distance between two 2D points.
- `float getDistanceBetweenPoints3D(float x1, float y1, float z1, float x2, float y2, float z2)` - Gets the distance between two 3D points.
- `float getEasingValue(float progress, string easingType, [float period, float amplitude, float overshoot])` - Gets an easing value.
- `table getProcessMemoryStats()` - Gets memory usage statistics.
- `table getRealTime([int seconds=current, bool localTime=true])` - Gets the real time.
- `int getTickCount()` - Gets the number of milliseconds since the system was started.
- `string gettok(string text, int token, string delimiter)` - Gets a token from a string.
- `string getUserdataType(userdata data)` - Gets the type of a userdata.
- `float, float, float interpolateBetween(float x1, float y1, float z1, float x2, float y2, float z2, float progress, string easingType, [float period, float amplitude, float overshoot])` - Interpolates between two 3D points.
- `bool isOOPEnabled()` - Checks if OOP is enabled.
- `table pregFind(string base, string pattern, [string flags=""])` - Finds a pattern in a string.
- `table pregMatch(string base, string pattern, [string flags="", int maxResults=100000])` - Matches a pattern in a string.
- `string pregReplace(string base, string pattern, string replacement, [string flags=""])` - Replaces a pattern in a string.
- `print(var ...)` - Prints a message to the console.
- `int ref(var value)` - References a value.
- `table split(string text, string delimiter)` - Splits a string.
- `int tocolor(int r, int g, int b, [int a=255])` - Converts RGBA values to a single integer.
- `string toJSON(var value, [bool compact=false, string prettyType="none"])` - Converts a Lua table to a JSON string.

### Vector2
- create (Vector2)
- dot (Vector2)
