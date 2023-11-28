---@meta clientVehicleConfigs
---@diagnostic disable: missing-return

---@type fun(theVehicle: vehicle, window: integer, open: boolean): boolean
function setVehicleWindowOpen () end

---@type fun(modelID: integer): number, number, number
function getVehicleModelExhaustFumesPosition () end

---@type fun(vehiclesDistance: number, trainsAndPlanesDistance?: number): boolean
function setVehiclesLODDistance () end

---@type fun(): general_distance_used_for_most_vehicles:number, distance_used_for_trains_and_planes:number
function getVehiclesLODDistance () end

---@type fun(modelID: integer, posX: number, posY: number, posZ: number): boolean
function setVehicleModelExhaustFumesPosition () end

---@type fun(ID: integer): boolean
function setRadioChannel () end

---@type fun(heli: vehicle): number
function getHelicopterRotorSpeed () end

---@type fun(theVehicle: vehicle): boolean
function getHeliBladeCollisionsEnabled () end

---@type fun(theVehicle: vehicle): integer
function getVehicleAdjustableProperty () end

---@type fun(theVehicle: vehicle): table
function getVehicleComponents () end

---@type fun(theVehicle: vehicle, theComponent?: string, base?: string): number, number, number
function getVehicleComponentPosition () end

---@type fun(theVehicle: vehicle, theComponent?: string, base?: string): number, number, number
function getVehicleComponentRotation () end

---@type fun(theVehicle: vehicle, theComponent: string): boolean
function getVehicleComponentVisible () end

---@type fun(theVehicle: vehicle): number, number, number
function getVehicleGravity () end

---@type fun(theVehicle: vehicle): integer
function getVehicleNitroCount () end

---@type fun(theVehicle: vehicle): number
function getVehicleNitroLevel () end

---@type fun(theVehicle: vehicle): integer
function getVehicleCurrentGear () end

---@type fun(theVehicle: vehicle): boolean
function isVehicleNitroRecharging () end

---@type fun(theVehicle: vehicle): boolean
function isVehicleNitroActivated () end

---@type fun(theVehicle: vehicle, window: integer): boolean
function isVehicleWindowOpen () end

---@type fun(theVehicle: vehicle, theComponent: string): boolean
function resetVehicleComponentPosition () end

---@type fun(theVehicle: vehicle, theComponent: string): boolean
function resetVehicleComponentRotation () end

---@type fun(theVehicle: vehicle, collisions: boolean): boolean
function setHeliBladeCollisionsEnabled () end

---@type fun(heli: vehicle, speed: number): boolean
function setHelicopterRotorSpeed () end

---@type fun(theVehicle: element, value: integer): boolean
function setVehicleAdjustableProperty () end

---@type fun(theVehicle: vehicle, theComponent: string, posX: number, posY: number, posZ?: number, base?: string): boolean
function setVehicleComponentPosition () end

---@type fun(theVehicle: vehicle, theComponent: string, rotX: number, rotY: number, rotZ?: number, base?: string): boolean
function setVehicleComponentRotation () end

---@type fun(theVehicle: vehicle, theComponent: string, visible: boolean): boolean
function setVehicleComponentVisible () end

---@type fun(theVehicle: vehicle, x: number, y: number, z: number): boolean
function setVehicleGravity () end

---@type fun(theVehicle: vehicle, state: boolean): boolean
function setVehicleNitroActivated () end

---@type fun(theVehicle: vehicle, count: integer): boolean
function setVehicleNitroCount () end

---@type fun(theVehicle: vehicle, level: number): boolean
function setVehicleNitroLevel () end

---@type fun(): boolean
function resetVehiclesLODDistance () end

---@type fun(theTrain: vehicle): boolean
function isTrainChainEngine () end

---@type fun(theVehicle: vehicle, wheel: string | integer): boolean
function isVehicleWheelOnGround () end

---@type fun(theVehicle: vehicle): boolean
function areVehicleLightsOn () end

---@type fun(theVehicle: vehicle, theComponent?: string, base?: string): number, number, number
function getVehicleComponentScale () end

---@type fun(modelID: integer, dummy: string): number, number, number
function getVehicleModelDummyPosition () end

---@type fun(theVehicle: vehicle, theComponent: string): boolean
function resetVehicleComponentScale () end

---@type fun(theVehicle: vehicle, theComponent: string, scaleX: number, scaleY: number, scaleZ?: number, base?: string): boolean
function setVehicleComponentScale () end

---@type fun(modelID: integer, dummy: string, x: number, y: number, z: number): boolean
function setVehicleModelDummyPosition () end

---@type fun(vehicleModel: integer, wheelGroup?: string): number|table
function getVehicleModelWheelSize () end

---@type fun(theVehicle: vehicle): number
function getVehicleWheelScale () end

---@type fun(vehicleModel: integer, wheelGroup: string, wheelSize: number): boolean
function setVehicleModelWheelSize () end

---@type fun(theVehicle: vehicle, wheelScale: number): boolean
function setVehicleWheelScale () end

---@type fun(theVehicle: vehicle, wheel: integer): integer
function getVehicleWheelFrictionState () end

---@type fun(theVehicle: vehicle, dummy: string): number, number, number
function getVehicleDummyPosition () end

---@type fun(modelID: integer, dummy: string): number, number, number
function getVehicleModelDummyDefaultPosition () end

---@type fun(theVehicle: vehicle): boolean
function resetVehicleDummyPositions () end

---@type fun(theVehicle: vehicle, dummy: string, x: number, y: number, z: number): boolean
function setVehicleDummyPosition () end
