---@meta clientVehicleConfigs
---@diagnostic disable: missing-return
---@diagnostic disable: lowercase-global

--[[
    Credits to the community for all the available syntax and descriptions
]]

---@see vehicleWindow
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetVehicleWindowOpen)
]]
---@type fun(theVehicle: vehicle, window: vehicleWindow, open: boolean): boolean
function setVehicleWindowOpen() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetVehicleModelExhaustFumesPosition)
]]
---@type fun(modelID: integer): number, number, number Returns the position of the exhaust fumes if everything went fine
function getVehicleModelExhaustFumesPosition() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetVehiclesLODDistance)
]]
---@type fun(vehiclesDistance: number, trainsAndPlanesDistance?: number): boolean
function setVehiclesLODDistance() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetVehiclesLODDistance)
]]
---@type fun(): distanceMostVehicles: number, distanceTrainsAndPlanes: number
function getVehiclesLODDistance() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetVehicleModelExhaustFumesPosition)
]]
---@type fun(modelId: integer, posX: number, posY: number, posZ: number): boolean Returns true if everything went fine
function setVehicleModelExhaustFumesPosition() end

---@see radioChannel for definitions
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetRadioChannel)
]]
---@type fun(Id: radioChannel): boolean  Returns true if channel was set successfully.
function setRadioChannel() end

---@deprecated Use getVehicleRotorSpeed instead
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetHelicopterRotorSpeed)
]]
---@type fun(theVehicle: vehicle): number Returns the rotor speed if successful. This is 0 when the helicopter is parked, and about 0.2 when it is fully spun up. It can be negative if the rotor rotates counter-clockwise
function getHelicopterRotorSpeed() end

---@deprecated Use setVehicleRotorSpeed instead
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetHelicopterRotorSpeed)
]]
---@type fun(theVehicle: vehicle, speed: number): boolean Returns true if successful
function setHelicopterRotorSpeed() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetHeliBladeCollisionsEnabled)
]]
---@type fun(theVehicle: vehicle): boolean Returns true if the collisions are enabled for specified vehicle, false if the collisions aren't enabled for the specified vehicle, if the vehicle is not a helicopter or if invalid arguments are specified.
function getHeliBladeCollisionsEnabled() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetHeliBladeCollisionsEnabled)
]]
---@type fun(theVehicle: vehicle, collisions: boolean): boolean Returns true if the collisions are set for the specified vehicle, false if the collisions can't be set for the specified vehicle, if the vehicle is not a helicopter
function setHeliBladeCollisionsEnabled() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetVehicleAdjustableProperty)
]]
---@type fun(theVehicle: vehicle): integer Returns a value from 0 upwards representing adjustment. 0 is default position. Maximum varies per vehicle, for example hydra horizontal flight is 5000, while dump truck tray max tilt is 2500.
function getVehicleAdjustableProperty() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetVehicleComponents)
]]
---@type fun(theVehicle: vehicle): {[vehicleComponent] : any} Returns a table containing the name of the component as the key and visibility flag of that component as the value
function getVehicleComponents() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetVehicleComponentPosition)
]]
---@type fun(theVehicle: vehicle, theComponent: string, base?: scaleBase): x: number, y: number, z: number Returns three floats indicating the position of the component, x, y and z respectively.
function getVehicleComponentPosition() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetVehicleComponentRotation)
]]
---@type fun(theVehicle: vehicle, theComponent: string, base?: scaleBase): rx: number, ry: number, rz: number Returns three floats indicating the rotation of the component, x, y and z respectively.
function getVehicleComponentRotation() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetVehicleComponentVisible)
]]
---@type fun(theVehicle: vehicle, theComponent: vehicleComponent): boolean Returns a bool indicating the visible state of the component.
function getVehicleComponentVisible() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetVehicleGravity)
]]
---@type fun(theVehicle: vehicle): number, number, number Returns the x, y and z components of the gravity vector if successful
function getVehicleGravity() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetVehicleNitroCount)
]]
---@type fun(theVehicle: vehicle): integer | false Returns an integer determining the amount of nitro counts of the vehicle, false if there is no nitro in the vehicle.
function getVehicleNitroCount() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetVehicleNitroLevel)
]]
---@type fun(theVehicle: vehicle): number | false Returns a float determining the nitro level (ranges from 0.0001 to 1.0) of the vehicle, false if there is no nitro in the vehicle.
function getVehicleNitroLevel() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetVehicleCurrentGear)
]]
---@type fun(theVehicle: vehicle): integer Returns the gear if successful
function getVehicleCurrentGear() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/IsVehicleNitroRecharging)
]]
---@type fun(theVehicle: vehicle): boolean Returns true if the nitro is currently recharging on the vehicle
function isVehicleNitroRecharging() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/IsVehicleNitroActivated)
]]
---@type fun(theVehicle: vehicle): boolean Returns true if the nitro is currently activated on the vehicle
function isVehicleNitroActivated() end

---@see vehicleWindow
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/IsVehicleWindowOpen)
]]
---@type fun(theVehicle: vehicle, window: vehicleWindow): boolean This function returns a boolean which represents window open state.
function isVehicleWindowOpen() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/ResetVehicleComponentPosition)
]]
---@type fun(theVehicle: vehicle, theComponent: vehicleComponent): boolean Returns true if the position of the component was reset
function resetVehicleComponentPosition() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/ResetVehicleComponentRotation)
]]
---@type fun(theVehicle: vehicle, theComponent: vehicleComponent): boolean Returns true if the rotation of the component was reset
function resetVehicleComponentRotation() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetVehicleAdjustableProperty)
]]
---@type fun(theVehicle: element, value: integer): boolean Returns true if the adjustable property was set
function setVehicleAdjustableProperty() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetVehicleComponentPosition)
]]
---@type fun(theVehicle: vehicle, theComponent: vehicleComponent, posX: number, posY: number, posZ: number, base?: scaleBase): boolean Returns true if component position was set successfully
function setVehicleComponentPosition() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetVehicleComponentRotation)
]]
---@type fun(theVehicle: vehicle, theComponent: vehicleComponent, rotX: number, rotY: number, rotZ: number, base?: scaleBase): boolean Returns true if the component rotation was set successfully
function setVehicleComponentRotation() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetVehicleComponentVisible)
]]
---@type fun(theVehicle: vehicle, theComponent: vehicleComponent, visible: boolean): boolean Returns a bool indicating if the visiblity was changed successfully.
function setVehicleComponentVisible() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetVehicleGravity)
]]
---@type fun(theVehicle: vehicle, x: number, y: number, z: number): boolean Returns true if successful
function setVehicleGravity() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetVehicleNitroCount)
]]
---@type fun(theVehicle: vehicle, count: integer): boolean `count` (from 0-100 times; 0 means that it can't be used and 101 means that it can be used infinite times) Returns true if the nitro count was set successfully to the vehicle
function setVehicleNitroCount() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetVehicleNitroLevel)
]]
---@type fun(theVehicle: vehicle, level: number): boolean  Nitro level you want to set (ranges from 0.0001 to 1.0) Returns true if the nitro level was set successfully to the vehicle
function setVehicleNitroLevel() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/ResetVehiclesLODDistance)
]]
---@type fun(): boolean Returns true if the vehicles LOD distance was reset
function resetVehiclesLODDistance() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/IsTrainChainEngine)
]]
---@type fun(theTrain: vehicle): boolean Returns true if a train was passed to the function and if it's a chain engine
function isTrainChainEngine() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/IsVehicleWheelOnGround)
]]
---@type fun(theVehicle: vehicle, wheel: wheel): boolean Returns true if the vehicle wheel is on ground/collided
function isVehicleWheelOnGround() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/AreVehicleLightsOn)
]]
---@type fun(theVehicle: vehicle): boolean Returns true if the lights are on
function areVehicleLightsOn() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetVehicleComponentScale)
]]
---@type fun(theVehicle: vehicle, theComponent: vehicleComponent, base?: scaleBase): x: number, y: number, z: number Returns three floats indicating the scale of the component, x, y and z respectively.
function getVehicleComponentScale() end

---@see vehicleId
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetVehicleModelDummyPosition)
]]
---@type fun(modelID: vehicleId, dummy: vehicleDummy): x: number, y: number, z: number Returns three floats indicating the position x, y and z of given dummy.
function getVehicleModelDummyPosition() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/ResetVehicleComponentScale)
]]
---@type fun(theVehicle: vehicle, theComponent: vehicleComponent): boolean Returns true if the scale of the component was reset
function resetVehicleComponentScale() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetVehicleComponentScale)
]]
---@type fun(theVehicle: vehicle, theComponent: vehicleComponent, scaleX: number, scaleY: number, scaleZ: number, base?: scaleBase): boolean Returns true if component scale was set successfully
function setVehicleComponentScale() end

---@see vehicleId
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetVehicleModelDummyPosition)
]]
---@type fun(modelId: vehicleId, dummy: vehicleDummy, x: number, y: number, z: number): boolean Returns true if everything went fine
function setVehicleModelDummyPosition() end

---@see vehicleId
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetVehicleModelWheelSize)
]]
---@type (fun(vehicleModel: vehicleId, wheelGroup: "front_axle" | "rear_axle"): number) | (fun(vehicleModel: vehicleId, wheelGroup?: "all_wheels"): { front_axle: number, rear_axle: number } ) Returns a decimal number or a table, depending on the specified wheel group.
function getVehicleModelWheelSize() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetVehicleWheelScale)
]]
---@type fun(theVehicle: vehicle): number Returns the wheel scale of the specified vehicle as a decimal number
function getVehicleWheelScale() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetVehicleModelWheelSize)
]]
---@type fun(vehicleModel: integer, wheelGroup: wheelGroup, wheelSize: number): boolean Returns true if the size for the specified wheel group and vehicle model has been set successfully
function setVehicleModelWheelSize() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetVehicleWheelScale)
]]
---@type fun(theVehicle: vehicle, wheelScale: number): boolean Returns true if the wheel scale has been set successfully
function setVehicleWheelScale() end

---@see wheelFrictionState for definitions
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetVehicleWheelFrictionState)
]]
---@type fun(theVehicle: vehicle, wheel: wheelId): wheelFrictionState Returns an integer indicating the wheel friction state.
function getVehicleWheelFrictionState() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetVehicleDummyPosition)
]]
---@type fun(theVehicle: vehicle, dummy: vehicleDummy): number, number, number Returns 3 floats indicating the position X, Y and Z of the vehicle's dummy
function getVehicleDummyPosition() end

---@see vehicleId
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetVehicleModelDummyDefaultPosition)
]]
---@type fun(modelId: vehicleId, dummy: vehicleDummy): number, number, number Returns 3 floats indicating the default position X, Y and Z of the given dummy.
function getVehicleModelDummyDefaultPosition() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/ResetVehicleDummyPositions)
]]
---@type fun(theVehicle: vehicle): boolean Returns true if the dummy positions have been reset
function resetVehicleDummyPositions() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetVehicleDummyPosition)
]]
---@type fun(theVehicle: vehicle, dummy: vehicleDummy, x: number, y: number, z: number): boolean Returns true if the dummy position has been successfully set
function setVehicleDummyPosition() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetVehicleSmokeTrailEnabled)
]]
---@type fun(theVehicle: vehicle, state: boolean): boolean
function setVehicleSmokeTrailEnabled() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/IsVehicleSmokeTrailEnabled)
]]
---@type fun(theVehicle: vehicle): boolean
function isVehicleSmokeTrailEnabled() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetVehicleRotorSpeed)
]]
---@type fun(theVehicle: vehicle): boolean Returns the rotor speed if successful. This is 0 when the helicopter or plane is stationary, and about 0.2 when it is fully spun up. It can be negative if the rotor rotates counter-clockwise. Returns false in case of failure (an invalid element or a vehicle element that is not a helicopter or plane was passed).
function getVehicleRotorSpeed() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetVehicleRotorSpeed)
]]
---@type  fun(theVehicle: vehicle, speed: number) Returns true if successful
function setVehicleRotorSpeed() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetVehicleRotorState)
]]
---@type fun(theVehicle: vehicle, state: boolean, stopRotor?: boolean): boolean
function setVehicleRotorState() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetVehicleRotorState)
]]
---@type fun(theVehicle: vehicle): boolean
function getVehicleRotorState() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetVehicleModelAudioSettings)
]]
---@type fun(modelId: integer): table<vehicleSoundSetting, any>
function getVehicleModelAudioSettings() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetVehicleModelAudioSetting)
]]
---@type fun(modelId: integer, property: vehicleSoundSetting, value: any): boolean
function setVehicleModelAudioSetting() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetVehicleAudioSettings)
]]
---@type fun(theVehicle: vehicle): table<vehicleSoundSetting, any>
function getVehicleAudioSettings() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/ResetVehicleModelAudioSettings)
]]
---@type fun(modelId: integer): boolean
function resetVehicleModelAudioSettings() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/ResetVehicleAudioSettings)
]]
---@type fun(theVehicle: vehicle): boolean
function resetVehicleAudioSettings() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetVehicleAudioSetting)
]]
---@type fun(theVehicle: vehicle, property: vehicleSoundSetting, value: any): boolean
function setVehicleAudioSetting() end

