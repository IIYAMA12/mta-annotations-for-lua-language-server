---@meta clientPedConfigs
---@diagnostic disable: missing-return
---@diagnostic disable: lowercase-global

--[[
    Credits to the community for all the available syntax and descriptions
]]

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetPedAimTarget)
]]
---@type fun(thePed: ped, x: number, y: number, z: number): boolean Returns true if the function was successful, false otherwise.
function setPedAimTarget() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetPedCameraRotation)
]]
---@type fun(thePed: ped, cameraRotation: number): boolean Returns true if the camera rotation was changed, false otherwise.
function setPedCameraRotation() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/IsPedDoingTask)
]]
---@type fun(thePed: ped, taskName: pedComplexTask | pedSimpleTask): boolean Returns true if the player is currently doing the task, false otherwise.
function isPedDoingTask() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetPedVoice)
]]
---@type fun(thePed: ped): string, string If successul, returns the current voice type name and the voice name of the ped (see ped voices for possible names).
function getPedVoice() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetPedWeaponMuzzlePosition)
]]
---@type fun(thePed: ped): number, number, number If successful, returns the x/y/z coordinates of the weapon muzzle.
function getPedWeaponMuzzlePosition() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/CanPedBeKnockedOffBike)
]]
---@type fun(thePed: ped): boolean Returns true if the ped can be knocked off bikes, false if he cannot.
function canPedBeKnockedOffBike() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GivePedWeapon)
]]
---@type fun(thePed: ped, weapon: integer, ammo?: integer, setAsCurrent?: boolean): boolean Returns true if weapon was successfully given to the ped, false otherwise.
function givePedWeapon() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetPedTargetCollision)
]]
---@type fun(targetingPed: ped): number | false, number | false, number | false Returns three floats, x,y,z, representing the position where the ped's target collides, or false if it was unsuccessful.
function getPedTargetCollision() end

--- Primary
---@alias getPedTask_primary fun(thePed: ped, priority: "primary", taskType: primaryTaskType): pedComplexTask | false, pedComplexTask | false, pedComplexTask | false, pedComplexTask | false
--- Secondary
---@alias getPedTask_secondary fun(thePed: ped, priority: "secondary", taskType: secondaryTaskType): pedComplexTask | false, pedComplexTask | false, pedComplexTask | false, pedComplexTask | false
---@see primaryTaskType
---@see secondaryTaskType
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetPedTask)
]]
---@type getPedTask_primary | getPedTask_secondary
function getPedTask() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetPedOxygenLevel)
]]
---@type fun(thePed: ped, oxygen: number): boolean Returns true if the oxygen level was changed succesfully. Returns false if an invalid ped and/or oxygen level was specified.
function setPedOxygenLevel() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetPedAnimation)
]]
---@type fun(thePed: ped): block: pedAnimBlockName, anim: pedAnimName, time: integer, loop: boolean, updatePosition: boolean, interruptable: boolean, freezeLastFrame: boolean, blendTime: integer, restoreTaskOnAnimEnd: boolean
function getPedAnimation() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetPedTargetingMarkerEnabled)
]]
---@type fun(enabled: boolean): boolean Returns true if the markers were enabled, false if weren't or if invalid arguments are passed.
function setPedTargetingMarkerEnabled() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetPedControlState)
]]
---@type fun(thePed: ped, control: controlName, state: boolean): boolean Returns true if successful, false if otherwise.
function setPedControlState() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetPedTargetStart)
]]
---@type fun(targetingPed: ped): number | false, number | false, number | false Returns three floats, x,y,z, representing the position where the ped's target starts, or false if it was unsuccessful.
function getPedTargetStart() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetPedControlState)
]]
---@type fun(thePed: ped, control: controlName): boolean Returns true if the ped is pressing the specified control, false if not or an invalid argument was passed.
function getPedControlState() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetPedTargetEnd)
]]
---@type fun(targetingPed: ped): number | false, number | false, number | false Returns three floats, x,y,z, representing the position where the ped's target ends according to his range, or false if it was unsuccessful.
function getPedTargetEnd() end

-- Disabled voice type
---@alias setPedVoice_disabled fun(thePed: ped, voiceType: "PED_TYPE_DISABLED", voiceName?: nil): boolean  Returns true when the voice was successfully set, false otherwise.
-- Default voice type
---@alias setPedVoice_default fun(thePed: ped, voiceType: string, voiceName: string): boolean  Returns true when the voice was successfully set, false otherwise.

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetPedVoice)
]]
---@type setPedVoice_disabled | setPedVoice_default
function setPedVoice() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetPedAnalogControlState)
]]
---@type fun(thePed: ped, controlName: controlName): number Returns a float between 0 (full release) and 1 (full push) indicating the amount the control is pushed.
function getPedAnalogControlState() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetPedMoveState)
]]
---@type fun(thePed: ped): string | false Returns a string indicating the ped's move state, or false if the ped is not streamed in, the movement type is unknown, the ped is in a vehicle or the ped is invalid.
function getPedMoveState() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetPedOxygenLevel)
]]
---@type fun(thePed: ped): number A float with the oxygen level.
function getPedOxygenLevel() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetPedCanBeKnockedOffBike)
]]
---@type fun(thePed: ped, canBeKnockedOffBike: boolean): boolean
function setPedCanBeKnockedOffBike() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetPedAnalogControlState)
]]
---@type fun(thePed: ped, control: controlName, state: number): boolean Returns true if the control state was successfully set, false otherwise.
function setPedAnalogControlState() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetPedLookAt)
]]
---@type (fun(thePed: ped, x: number, y: number, z: number): boolean) | (fun(thePed: ped, x: number, y: number, z: number, time: integer, target?: element): boolean) | (fun(thePed: ped, x: number, y: number, z: number, time: integer, blend: integer, target?: element): boolean)
function setPedLookAt() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetPedCameraRotation)
]]
---@type fun(thePed: ped): number Returns the camera rotation of the ped in degrees if successful.
function getPedCameraRotation() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetPedSimplestTask)
]]
---@type fun(thePed: ped): pedSimpleTask Returns a string representing the name of the ped's simplest, active task.
function getPedSimplestTask() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetPedBonePosition)
]]
---@type fun(thePed: ped, bone: integer): number, number, number Returns the x, y, z world position of the bone.
function getPedBonePosition() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetPedsLODDistance)
]]
---@type fun(): number This function returns a float containing the peds LOD distance.
function getPedsLODDistance() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetPedsLODDistance)
]]
---@type fun(distance: number): boolean This function returns true if the argument is valid. Returns false otherwise.
function setPedsLODDistance() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/ResetPedsLODDistance)
]]
---@type fun(): boolean Returns true if the peds LOD distance was reset, false otherwise.
function resetPedsLODDistance() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/IsPedFootBloodEnabled)
]]
---@type fun(thePlayer: element): boolean Returns true if feets are bleeding, false otherwise
function isPedFootBloodEnabled() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetPedEnterVehicle)
]]
---@type fun(thePed: ped, theVehicle?: vehicle, passenger?: boolean): boolean Returns true if the function was successful, false otherwise.
function setPedEnterVehicle() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetPedExitVehicle)
]]
---@type fun(thePed: ped): boolean
function setPedExitVehicle() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetPedBleeding)
]]
---@type fun(thePed: ped, bleeding: boolean): boolean Returns true if the bleeding state was successfully set, false otherwise.
function setPedBleeding() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/IsPedBleeding)
]]
---@type fun(thePed: ped): boolean Returns true if the player or ped is bleeding, false otherwise.
function isPedBleeding() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetPedAnimationSpeed)
]]
---@type fun(thePed: ped): number|-1 Returns the animation speed of the ped, or -1 otherwise
function getPedAnimationSpeed() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetPedAnimationLength)
]]
---@type fun(thePed: ped): number|-1 Returns the animation length of the ped, or -1 otherwise
function getPedAnimationLength() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetPedAnimationProgress)
]]
---@type fun(thePed: ped): number|-1 Returns the animation progress of the ped, or -1 otherwise
function getPedAnimationProgress() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/ResetPedVoice)
]]
---@type fun(ped: ped): boolean Returns true when the voice was successfully reset
function resetPedVoice() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/PlayPedVoiceLine)
]]
---@type fun(thePed: ped, lineId: integer, probability?: number): nil
function playPedVoiceLine() end
