---@meta clientPedConfigs
---@diagnostic disable: missing-return


---@type fun(thePed: ped, x: number, y: number, z: number): boolean
function setPedAimTarget () end

---@type fun(thePed: ped, cameraRotation: number): boolean
function setPedCameraRotation () end

---@type fun(thePed: ped, taskName: string): boolean
function isPedDoingTask () end

---@type fun(thePed: ped): string, string
function getPedVoice () end

---@type fun(thePed: ped): number, number, number
function getPedWeaponMuzzlePosition () end

---@type fun(thePed: ped): boolean
function canPedBeKnockedOffBike () end

---@type fun(thePed: ped, weapon: integer, ammo?: integer, setAsCurrent?: boolean): boolean
function givePedWeapon () end

---@type fun(targetingPed: ped): number, number, number
function getPedTargetCollision () end

---@type fun(thePed: ped, priority: string, taskType: integer): string, string, string, string
function getPedTask () end

---@type fun(thePed: ped, oxygen: number): boolean
function setPedOxygenLevel () end

---@type fun(thePed: ped): string, string, integer, integer, boolean, boolean, boolean, integer, boolean
function getPedAnimation () end

---@type fun(enabled: boolean): boolean
function setPedTargetingMarkerEnabled () end

---@type fun(thePed: ped, control: string, state: boolean): boolean
function setPedControlState () end

---@type fun(targetingPed: ped): number, number, number
function getPedTargetStart () end

---@type fun(thePed: ped, control: string): boolean
function getPedControlState () end

---@type fun(targetingPed: ped): number, number, number
function getPedTargetEnd () end

---@type fun(thePed: ped, voiceType: string, voiceName: string): boolean
function setPedVoice () end

---@type fun(thePed: ped, controlName: string): number
function getPedAnalogControlState () end

---@type fun(thePed: ped): string
function getPedMoveState () end

---@type fun(thePed: ped): number
function getPedOxygenLevel () end

---@type fun(thePed: ped, canBeKnockedOffBike: boolean): boolean
function setPedCanBeKnockedOffBike () end

---@type fun(thePed: ped, control: string, state: number): boolean
function setPedAnalogControlState () end

---@type fun(thePed: ped, x: number, y: number, z: number, time?: integer, blend?: integer, target: element): boolean
function setPedLookAt () end

---@type fun(thePed: ped): number
function getPedCameraRotation () end

---@type fun(thePed: ped): string
function getPedSimplestTask () end

---@type fun(thePed: ped, bone: integer): number, number, number
function getPedBonePosition () end

---@type fun(thePed: ped): boolean
function isPedReloadingWeapon () end

---@type fun(): number
function getPedsLODDistance () end

---@type fun(distance: number): boolean
function setPedsLODDistance () end

---@type fun(): boolean
function resetPedsLODDistance () end

---@type fun(thePlayer: element): boolean
function isPedFootBloodEnabled () end

---@type fun(thePed?: ped, vehicle, passenger): boolean
function setPedEnterVehicle () end

---@type fun(thePed: ped): boolean
function setPedExitVehicle () end

---@type fun(thePed: ped, bleeding: boolean): boolean
function setPedBleeding () end

---@type fun(thePed: ped): boolean
function isPedBleeding () end
