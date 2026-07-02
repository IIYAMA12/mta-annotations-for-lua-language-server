---@meta sharedConfigs
---@diagnostic disable: missing-return
---@diagnostic disable: lowercase-global

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetPedWalkingStyle)
]]
---@type fun(thePed: ped, style: pedWalkStyleId): boolean Returns true if successful
function setPedWalkingStyle() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetPedAmmoInClip)
]]
---@type fun(thePed: ped, weaponSlot?: weaponSlotId): integer Returns an int containing the amount of ammo in the specified ped's currently selected or specified clip, or 0 if the ped specified is invalid.
function getPedAmmoInClip() end

--- Default
---@alias setPedAnimation_default fun(thePed: ped, block?: pedAnimBlockName, anim?: pedAnimName, time?: integer, loop?: boolean, updatePosition?: boolean, interruptable?: boolean, freezeLastFrame?: boolean, blendTime?: integer, retainPedState?: boolean): boolean
--- Stop
---@alias setPedAnimation_stop fun(thePed: ped): boolean
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetPedAnimation)
]]
---@type setPedAnimation_default | setPedAnimation_stop Returns true if succesful
function setPedAnimation() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetPedAnimationProgress)
]]
---@type fun(thePed: ped, anim?: pedAnimName, progress?: number): boolean Returns true if successful
function setPedAnimationProgress() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetPedDoingGangDriveby)
]]
---@type fun(thePed: ped, state: boolean): boolean Returns true if the driveby state could be changed
function setPedDoingGangDriveby() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetPedOccupiedVehicle)
]]
---@type fun(thePed: ped): vehicle | false Returns the vehicle that the specified ped is in, or false if the ped is not in a vehicle.
function getPedOccupiedVehicle() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetPedTotalAmmo)
]]
---@type fun(thePed: ped, weaponSlot?: weaponSlotId): integer Returns an int containing the total amount of ammo for the specified ped's weapon, or 0 if the ped specified is invalid.
function getPedTotalAmmo() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetPedStat)
	`value`: the new value of the stat. It must be between 0 and 1000.
]]
---@type fun(thePed: ped, stat: pedStatId, value: number): boolean Returns true if the statistic was changed succesfully. Returns false if an invalid player is specified, if the stat ID/value is out of acceptable range or if the FAT or BODY_MUSCLE stats are used on non-CJ players.
function setPedStat() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetPedContactElement)
]]
---@type fun(thePed: ped): contentElement: element Returns an object or a vehicle if the ped is standing on one, false if he is touching none
function getPedContactElement() end

--[[
	It should be noted that if a ped runs out of ammo for a weapon, it will still return the ID of that weapon in the slot (even if it appears as if the ped does not have a weapon at all), though getPedTotalAmmo will return 0. Therefore, getPedTotalAmmo should be used in conjunction with getPedWeapon in order to check if a ped has a weapon.
]]
---@see weaponSlotId
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetPedWeapon)
	Returns an integer indicating the type of the weapon the ped has in the specified slot. If the slot is empty, it returns 0.
]]
---@type fun(thePed: ped, weaponSlot?: weaponSlotId): weaponId
function getPedWeapon() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetPedClothes)
	See [wiki](https://wiki.multitheftauto.com/wiki/CJ_Clothes) for CJ_Clothes
]]
---@type fun(thePed: ped, clothesType: clothesType): string, string Returns 2 strings, the clothes texture and model.
function getPedClothes() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetPedSkin)
]]
---@deprecated
function setPedSkin() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetPedRotation)
]]
---@deprecated
function getPedRotation() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetPedRotation)
]]
---@deprecated
function setPedRotation() end

---@deprecated
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetPedSkin)
]]
---@type fun(ped: player|ped): integer
function getPedSkin() end

---@see weaponSlotId
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetPedWeaponSlot)
]]
---@type fun(thePed: ped): weaponSlotId Returns the selected weapon slot ID on success
function getPedWeaponSlot() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetPedOccupiedVehicleSeat)
]]
---@type fun(thePed: ped): vehicleSeatId | false Returns an integer containing the number of the seat that the ped is currently in. false if the ped is on foot.
function getPedOccupiedVehicleSeat() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetPedTarget)
]]
---@type fun(thePed: ped): element | false Returns the element that's being targeted, or false if there isn't one.
function getPedTarget() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetPedStat)
]]
---@type fun(thePed: ped, stat: pedStatId): number Returns the value of the requested statistic.
function getPedStat() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetPedHeadless)
]]
---@type fun(thePed: ped | player, headState: boolean): boolean Returns true if successful
function setPedHeadless() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetPedOnFire)
]]
---@type fun(thePed: ped, isOnFire: boolean): boolean Returns true if successful
function setPedOnFire() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetPedArmor)
]]
---@type fun(thePed: ped): number A float with the armor
function getPedArmor() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetPedWalkingStyle)
	Returns the walking style ID if successful.
]]
---@see pedWalkStyleId for definitions
---@type fun(thePed: ped): pedWalkStyleId
function getPedWalkingStyle() end

---@see weaponSlotId
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetPedWeaponSlot)
]]
---@type fun(thePed: ped, weaponSlot: weaponSlotId): boolean Returns true if successful in setting the ped's equipped weapon slot
function setPedWeaponSlot() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetPedAnimationSpeed)
	`speed`: a float containing the speed between 0.0–1.0 you want to apply to the animation. This limitation may be adjusted in the future, so do not provide speeds outside this boundary. The limit is now 0.0 to 10.0.
]]
---@type fun(thePed: ped, anim?: pedAnimName, speed?: number): boolean Returns true if successful
function setPedAnimationSpeed() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GetPedFightingStyle)
]]
---@type fun(thePed: ped): fightingStyleId Returns the ped's current fighting style as an integer ID, false if it fails to retrieve a value.
function getPedFightingStyle() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetPedArmor)
	`armor`: the amount of armor you want to set on the ped. Valid values are from 0 to 100.
]]
---@type fun(thePed: ped, armor: number): boolean Returns true if the armor was changed succesfully. Returns false if an invalid ped was specified, or the armor value specified is out of acceptable range.
function setPedArmor() end

---@see fightingStyleId
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/SetPedFightingStyle)
]]
---@type fun(thePed: ped, style: fightingStyleId): boolean Returns true in case of success
function setPedFightingStyle() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/IsPedReloadingWeapon)
]]
---@type fun(thePed: ped): boolean Returns true if the ped is currently reloading a weapon, false otherwise.
function isPedReloadingWeapon() end

