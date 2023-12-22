---@meta clientPedConfigs
---@diagnostic disable: missing-return

--[[
    Credits to the community for all the available syntax and descriptions
]]

---@type fun(thePed: ped, x: number, y: number, z: number): boolean Returns true if the function was successful, false otherwise. 
function setPedAimTarget () end

---@type fun(thePed: ped, cameraRotation: number): boolean Returns true if the camera rotation was changed, false otherwise. 
function setPedCameraRotation () end

---@type fun(thePed: ped, taskName: string): boolean Returns true if the player is currently doing the task, false otherwise. 
function isPedDoingTask () end

---@type fun(thePed: ped): string, string If successul, returns the current voice type name and the voice name of the ped (see ped voices for possible names). 
function getPedVoice () end

---@type fun(thePed: ped): number, number, number If successful, returns the x/y/z coordinates of the weapon muzzle.
function getPedWeaponMuzzlePosition () end

---@type fun(thePed: ped): boolean Returns true if the ped can be knocked off bikes, false if he cannot.
function canPedBeKnockedOffBike () end

---@type fun(thePed: ped, weapon: integer, ammo?: integer, setAsCurrent?: boolean): boolean Returns true if weapon was successfully given to the ped, false otherwise. 
function givePedWeapon () end

---@type fun(targetingPed: ped): number | false, number | false, number | false Returns three floats, x,y,z, representing the position where the ped's target collides, or false if it was unsuccessful. 
function getPedTargetCollision () end

---@type fun(thePed: ped, priority: string, taskType: integer): string | false, string | false, string | false, string | false
function getPedTask () end

---@type fun(thePed: ped, oxygen: number): boolean Returns true if the oxygen level was changed succesfully. Returns false if an invalid ped and/or oxygen level was specified. 
function setPedOxygenLevel () end

---@type fun(thePed: ped): block:string, anim:string, time:integer, loop:boolean, updatePosition:boolean, interruptable:boolean, freezeLastFrame:boolean, blendTime:integer, restoreTaskOnAnimEnd:boolean
function getPedAnimation () end

---@type fun(enabled: boolean): boolean Returns true if the markers were enabled, false if weren't or if invalid arguments are passed. 
function setPedTargetingMarkerEnabled () end

---@type fun(thePed: ped, control: controlName, state: boolean): boolean Returns true if successful, false if otherwise. 
function setPedControlState () end

---@type fun(targetingPed: ped): number | false, number | false, number | false Returns three floats, x,y,z, representing the position where the ped's target starts, or false if it was unsuccessful. 
function getPedTargetStart () end

---@type fun(thePed: ped, control: controlName): boolean Returns true if the ped is pressing the specified control, false if not or an invalid argument was passed. 
function getPedControlState () end

---@type fun(targetingPed: ped): number | false, number | false, number | false Returns three floats, x,y,z, representing the position where the ped's target ends according to his range, or false if it was unsuccessful. 
function getPedTargetEnd () end

---@type fun(thePed: ped, voiceType: string, voiceName: string): boolean Returns true when the voice was successfully set, false otherwise. 
function setPedVoice () end

---@type fun(thePed: ped, controlName: controlName): number Returns a float between 0 (full release) and 1 (full push) indicating the amount the control is pushed. 
function getPedAnalogControlState () end

---@type fun(thePed: ped): string | false Returns a string indicating the ped's move state, or false if the ped is not streamed in, the movement type is unknown, the ped is in a vehicle or the ped is invalid. 
function getPedMoveState () end

---@type fun(thePed: ped): number A float with the oxygen level.
function getPedOxygenLevel () end

---@type fun(thePed: ped, canBeKnockedOffBike: boolean): boolean
function setPedCanBeKnockedOffBike () end

---@type fun(thePed: ped, control: controlName, state: number): boolean Returns true if the control state was successfully set, false otherwise. 
function setPedAnalogControlState () end

---@type (fun(thePed: ped, x: number, y: number, z: number): boolean) | (fun(thePed: ped, x: number, y: number, z: number, time: integer, target?: element): boolean) | (fun(thePed: ped, x: number, y: number, z: number, time: integer, blend: integer, target?: element): boolean)
function setPedLookAt () end

---@type fun(thePed: ped): number Returns the camera rotation of the ped in degrees if successful.
function getPedCameraRotation () end

---@type fun(thePed: ped): string Returns a string representing the name of the ped's simplest, active task. 
function getPedSimplestTask () end

---@type fun(thePed: ped, bone: integer): number, number, number Returns the x, y, z world position of the bone. 
function getPedBonePosition () end

---@type fun(thePed: ped): boolean Returns true if the ped is currently reloading a weapon, false otherwise. 
function isPedReloadingWeapon () end

---@type fun(): number This function returns a float containing the peds LOD distance. 
function getPedsLODDistance () end

---@type fun(distance: number): boolean This function returns true if the argument is valid. Returns false otherwise. 
function setPedsLODDistance () end

---@type fun(): boolean Returns true if the peds LOD distance was reset, false otherwise. 
function resetPedsLODDistance () end

---@type fun(thePlayer: element): boolean Returns true if feets are bleeding, false otherwise 
function isPedFootBloodEnabled () end

---@type fun(thePed?: ped, vehicle, passenger): boolean Returns true if the function was successful, false otherwise. 
function setPedEnterVehicle () end

---@type fun(thePed: ped): boolean
function setPedExitVehicle () end

---@type fun(thePed: ped, bleeding: boolean): boolean Returns true if the bleeding state was successfully set, false otherwise. 
function setPedBleeding () end

---@type fun(thePed: ped): boolean Returns true if the player or ped is bleeding, false otherwise. 
function isPedBleeding () end
