---@meta sharedConfigs
---@diagnostic disable: missing-return
---@diagnostic disable: lowercase-global

---@type fun(theVehicle: vehicle, variant1?: 0 | 1 | 2 | 3 | 4 | 5, variant2?: 0 | 1 | 2 | 3 | 4 | 5): boolean Returns true if the vehicle variants were successfully set, false otherwise (the specified vehicle doesn't exist or the specified variants are invalid).
function setVehicleVariant() end

--[[
* Returns 12 ints (if `bRGB` is true) indicating the red, green and blue components of each of the 4 vehicle colors.
* Returns 4 ints (if `bRGB` is false) indicating the color ids of each of the 4 vehicle colors.
]]
--- RGB
---@alias getVehicleColor_rgb fun(theVehicle: vehicle, bRGB: true): r1: integer, g1: integer, b1: integer, r2: integer, g2: integer, b2: integer, r3: integer, g3: integer, b3: integer, r4: integer, g4: integer, b4: integer
--- Palette
---@alias getVehicleColor_palette fun(theVehicle: vehicle, bRGB: false): vehiclePaletteColor, vehiclePaletteColor, vehiclePaletteColor, vehiclePaletteColor
---@type getVehicleColor_rgb | getVehicleColor_palette
function getVehicleColor() end

---@type fun(theVehicle: vehicle, slot?: vehicleSlotId): vehicleUpgradeId[] Returns a table with all the compatible upgrades
function getVehicleCompatibleUpgrades() end

---@type fun(theVehicle: vehicle): player | ped | false Returns a player object, if there isn't a driver, it will search the 'trailer chain' for the front driver, false otherwise.
function getVehicleController() end

---@see vehicleDoorId
---@see vehicleDoorStateId
---@type fun(theVehicle: vehicle, door: vehicleDoorId): vehicleDoorStateId
function getVehicleDoorState() end

---@type fun(theVehicle: vehicle): boolean Returns true if the vehicle's engine is started
function getVehicleEngineState() end

--[[
Returns
* Returns true if landing gear is down, false if the landing gear is up.
* Returns nil if the vehicle has no landing gear, or is invalid.
]]
---@type fun(theVehicle: vehicle): boolean | nil
function getVehicleLandingGearDown() end

---@see vehicleLightId
---@see vehicleLightStateId
---@type fun(theVehicle: vehicle, light: vehicleLightId): vehicleLightStateId Returns 0 (working) or 1 (broken)
function getVehicleLightState() end

---@see vehicleId
---@type fun(modelIDOrTheVehicle: vehicleId | vehicle): integer Returns an integer indicating the maximum number of passengers that can enter a vehicle.
function getVehicleMaxPassengers() end

---@type fun(theVehicle: vehicle): vehicleName Returns a string containing the requested vehicle's name
function getVehicleName() end

---@see vehicleSeatId
---@type fun(theVehicle: vehicle, seat?: vehicleSeatId): player | ped Returns the player/ped sitting in the vehicle, or false if the seat is unoccupied or doesn't exist.
function getVehicleOccupant() end

---@see vehicleSeatId
---@type fun(theVehicle: vehicle): {[vehicleSeatId]: player | ped | nil } Returns a table with seat ID as an index and the occupant as an element
function getVehicleOccupants() end

---@see vehicleOverrideLightStateId
---@type fun(theVehicle: vehicle): vehicleOverrideLightStateId Returns an integer value: 0 (No override), 1 (Force off) or 2 (Force on).
function getVehicleOverrideLights() end

--[[
Returns an integer representing the current paintjob on the vehicle.

* 0: The first paintjob
* 1: The second paintjob
* 2: The third paintjob
* 3: Default paintjob (no paintjob)
]]
---@see vehiclePaintjobId
---@type fun(theVehicle: vehicle): vehiclePaintjobId
function getVehiclePaintjob() end

---@see vehiclePanelId
---@type fun(theVehicle: vehicle, panel: vehiclePanelId): vehiclePanelStateId Returns an int indicating the state of the specified the panel. This is a value between 0 and 3, with 0 indicating the panel is undamaged and 3 indicating it is very damaged.
function getVehiclePanelState() end

---@type fun(theVehicle: vehicle): string Returns a string that corresponds to the plate on the text
function getVehiclePlateText() end

---@type fun(theVehicle: vehicle): boolean Returns true if the sirens are turned on for the specified vehicle, false if the sirens are turned off for the specified vehicle, if the vehicle doesn't have sirens or if invalid arguments are specified.
function getVehicleSirensOn() end

---@type fun(theVehicle: vehicle): vehicle | false Returns the vehicle that theVehicle is towing, false if it isn't towing a vehicle.
function getVehicleTowedByVehicle() end

---@type fun(theVehicle: vehicle): vehicle | false Returns the vehicle that theVehicle is being towed by. false if it isn't being towed.
function getVehicleTowingVehicle() end

---@deprecated Use getElementAngularVelocity instead
---@type fun(theVehicle: vehicle): number, number, number
function getVehicleTurnVelocity() end

---@type fun(turretVehicle: vehicle): rx: number, ry: number Returns two floats for the X (horizontal) and Y (vertical) axis rotation respectively. These values are in radians. The function will return 0, 0 if the vehicle is not a vehicle with a turret.
function getVehicleTurretPosition() end

---@type fun(theVehicleOrModel: vehicle|vehicleId): vehicleType Returns a string with vehicle type
function getVehicleType() end

---@see vehicleSlotId
---@type fun(theVehicle: vehicle, slot: vehicleSlotId): vehicleUpgradeId | false Returns an integer with the upgrade on the slot if correct arguments were passed
function getVehicleUpgradeOnSlot() end

---@type fun(theVehicle: vehicle): vehicleUpgradeId[] Returns a table of all the upgrades on each slot of a vehicle, which may be empty
function getVehicleUpgrades() end

---@see vehicleSlotId
---@type fun(slotOrUpgrade: vehicleSlotId | vehicleUpgradeId): vehicleSlotName Returns a string with the slot name if a valid slot or upgrade ID was given
function getVehicleUpgradeSlotName() end

---@see vehicleWheelStateId
---@type fun(theVehicle: vehicle): frontLeft: vehicleWheelStateId, rearLeft: vehicleWheelStateId, frontRight: vehicleWheelStateId, rearRight: vehicleWheelStateId Returns 4 ints indicating the states of the wheels
function getVehicleWheelStates() end

---@see vehicleDoorId
---@type fun(theVehicle: vehicle, door: vehicleDoorId): number Returns a number between 0 and 1 that indicates how open the door is. 0 is closed, and 1 is fully open.
function getVehicleDoorOpenRatio() end

---@see vehicleHandlingProperty
---@type fun(theVehicle: vehicle, property?: vehicleHandlingProperty): {[vehicleHandlingProperty]: any} Returns a table containing all the handling data
function getVehicleHandling() end

---@type fun(theVehicle: vehicle): red: integer, green: integer, blue: integer Returns three integers for the red, green and blue of the headlight color for the specified vehicle
function getVehicleHeadLightColor() end

---@see vehicleId
---@type fun(name: vehicleName): vehicleId Returns an integer if the name exists, false otherwise. If you use this function on vehicles with shared names, such as "police", it will return the earliest occurrence of that vehicle's ID.
function getVehicleModelFromName() end

---@see vehicleId
---@type fun(model: vehicleId): vehicleName Returns the name of the vehicle if the model ID was valid
function getVehicleNameFromModel() end

--- See [vehicle variants](https://wiki.multitheftauto.com/wiki/Vehicle_variants). Not all variants are available depending on the vehicle.
---@type (fun(theVehicle: vehicle): variant1: vehicleVariantId, variant1: vehicleVariantId)
function getVehicleVariant() end

---@type fun(theVehicle: vehicle): {SirenCount: integer, SirenType: sirenTypeId, Flags: { ["360"] : boolean, DoLOSCheck: boolean, UseRandomiser: boolean, Silent: boolean}} | false Returns a table with the siren count, siren type and a sub table for the four flags. False otherwise.
function getVehicleSirenParams() end

---@type fun(theVehicle: vehicle): {x: number, y: number, z: number, Red: integer, Green: integer, Blue: integer, Alpha: integer, Min_Alpha: integer }[]
function getVehicleSirens() end

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
function setVehicleColor() end

---@type fun(theVehicle: vehicle, damageProof: boolean): boolean Returns true if the door state was successfully set
function setVehicleDamageProof() end

---@see vehicleDoorId
---@see vehicleDoorStateId
---@type fun(theVehicle: vehicle, door: vehicleDoorId, state: integer, spawnFlyingComponent?: boolean): boolean Returns true if the door state was successfully set
function setVehicleDoorState() end

---@type fun(theVehicle: vehicle, state: boolean): boolean Returns true if the damageability state was successfully changed
function setVehicleDoorsUndamageable() end

---@type fun(theVehicle: vehicle, engineState: boolean): boolean Returns true if the vehicle's engine state was successfully changed
function setVehicleEngineState() end

---@type fun(theVehicle: vehicle, explodable: boolean): boolean Returns true if the vehicle's fuel tank explodable state was successfully changed
function setVehicleFuelTankExplodable() end

---@type fun(theVehicle: vehicle, gearState: boolean): boolean Returns true if the landing gear was set successfully
function setVehicleLandingGearDown() end

---@see vehicleLightId
---@see vehicleOverrideLightStateId
---@type fun(theVehicle: vehicle, light: vehicleLightId, state: vehicleLightStateId): boolean Returns true if the light state was set successfully
function setVehicleLightState() end

---@type fun(theVehicle: vehicle, locked: boolean): boolean Returns true if the operation was successful
function setVehicleLocked() end

---@see vehicleOverrideLightStateId
---@type fun(theVehicle: vehicle, value: vehicleOverrideLightStateId): boolean Returns true if the vehicle's lights setting was changed.
function setVehicleOverrideLights() end

---@see vehiclePaintjobId
---@type fun(theVehicle: vehicle, value: vehiclePaintjobId): boolean Returns true if the vehicle's paintjob was changed
function setVehiclePaintjob() end

---@see vehiclePanelId
---@see vehiclePanelStateId
---@type fun(theVehicle: vehicle, panelId: vehiclePanelId, state: vehiclePanelStateId): boolean Returns true if the panel state has been updated
function setVehiclePanelState() end

--[[
`numberplate`: a string that will go on the number plate of the vehicle (max 8 characters).
]]
---@type fun(theVehicle: element, numberplate: string): boolean Returns true if the numberplate was changed successfully
function setVehiclePlateText() end

---@type fun(theVehicle: vehicle, sirensOn: boolean): boolean Returns true if the sirens are set for the specified vehicle, false if the sirens can't be set for the specified vehicle, if the vehicle doesn't have sirens or if invalid arguments are specified.
function setVehicleSirensOn() end

---@type fun(turretVehicle: vehicle, positionX: number, positionY: number): boolean Returns a true if a valid vehicle element and valid positions were passed
function setVehicleTurretPosition() end

--[[
* `ratio`: The ratio value, ranging from 0 (fully closed) to 1 (fully open).
* `time`: The number of milliseconds the door should take to reach the value you have specified. A value of 0 will change the door open ratio instantly.
]]
--[[
	Returns true if the door open ratio was successfully set
]]
---@see vehicleDoorId
---@type fun(theVehicle: vehicle, door: vehicleDoorId, ratio: number, time?: integer): boolean
function setVehicleDoorOpenRatio() end

---@deprecated Use setElementAngularVelocity instead
---@type fun(theVehicle: vehicle, rx: number, ry: number, rz: number): boolean Returns true if it was succesful
function setVehicleTurnVelocity() end

--[[
	`frontLeft` or `frontLeft` or `rearLeft` or `rearRight` with **-1** means **No change**
]]
---@see vehicleWheelStateId
---@type fun(theVehicle: vehicle, frontLeft: vehicleWheelStateId | -1, rearLeft?: vehicleWheelStateId | -1, frontRight?: vehicleWheelStateId | -1, rearRight?: vehicleWheelStateId | -1): boolean
function setVehicleWheelStates() end

--[[
* `red`: The amount of red from 0 to 255
* `green`: The amount of green from 0 to 255
* `blue`: The amount of blue from 0 to 255
]]
---@type fun(theVehicle: vehicle, red: integer, green: integer, blue: integer): boolean Returns true if vehicle's headlight color was set
function setVehicleHeadLightColor() end

--[[
	Supported vehicle ID's: 420, 438
]]
---@type fun(theVehicle: vehicle, lightState: boolean): boolean Returns true if the state was successfully set,
function setVehicleTaxiLightOn() end

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
function setVehicleSirens() end

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
function setVehicleHandling() end

---@deprecated
function getVehicleRotation() end

--[[Serverside BUILD: 1.6.~ ~]]
---@type fun(theVehicle: vehicle, state: boolean): boolean Returns true if the nitro activation state was modified successfully
function setVehicleNitroActivated() end

--[[Serverside BUILD: 1.6.~ ~]]
---@type fun(theVehicle: vehicle, sirenCount: 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8, sirenType: sirenTypeId, flag360?: boolean, checkLosFlag?: boolean, useRandomiser?: boolean, silentFlag?: boolean): boolean Returns true if sirens were successfully added to the vehicle, false otherwise.
function addVehicleSirens() end

--[[Serverside BUILD: 1.6.~ ~]]
---@type fun(theVehicle: vehicle): boolean Returns true if sirens were successfully removed from the vehicle, false otherwise.
function removeVehicleSirens() end
