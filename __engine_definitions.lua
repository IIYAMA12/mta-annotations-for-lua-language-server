---@meta dxConfigs
---@diagnostic disable: missing-return
---@diagnostic disable: lowercase-global

--[[
    Credits to the community for all the available syntax and descriptions
]]

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/EngineReplaceModel)
]]
---@type fun(theModel: dff, modelID: integer, alphaTransparency?: boolean): boolean
function engineReplaceModel() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/EngineGetVisibleTextureNames)
]]
---@type fun(nameFilter?: string, modelId?: string): string[] Returns a table of texture names.
function engineGetVisibleTextureNames() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/EngineLoadCOL)
]]
---@type fun(rawDataOrColFile: string): col | false Returns a COL if the file was loaded, false otherwise.
function engineLoadCOL() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/EngineRemoveShaderFromWorldTexture)
]]
---@type fun(shader: element, textureName: string, targetElement?: element): boolean Returns true if the shader was successfully removed, false otherwise.
function engineRemoveShaderFromWorldTexture() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/EngineImportTXD)
]]
---@type fun(texture: txd, modelId: integer): boolean Returns true if the function executed succesfully, false otherwise.
function engineImportTXD() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/EngineGetModelTextureNames)
]]
---@type fun(modelId?: string): string[] Returns a table if this function succeeds.
function engineGetModelTextureNames() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/EngineGetModelLODDistance)
]]
---@type fun(model: integer): number | false Returns a float representing the LOD distance of the model, or false if the model argument is incorrect.
function engineGetModelLODDistance() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/EngineSetAsynchronousLoading)
]]
---@type fun(enable: boolean, force: boolean): boolean Returns true if the function executed successfully, false otherwise.
function engineSetAsynchronousLoading() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/EngineRestoreCOL)
]]
---@type fun(modelId: integer): boolean | nil Returns true if this function succeeds, false or nil if it fails for some reason.
function engineRestoreCOL() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/EngineLoadTXD)
]]
---@type fun(rawDataOrTxdFile : string, filteringEnabled?: boolean): txd | false Returns a TXD if the file was loaded, false otherwise.
function engineLoadTXD() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/EngineReplaceCOL)
]]
---@type fun(theCol: col, modelId: integer): boolean | nil Returns true if the collision was successfully replaced, false or nil if the collision could not be replaced for a reason.
function engineReplaceCOL() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/EngineLoadDFF)
]]
---@type fun(rawDataOrDffFile: string): dff | false Returns a DFF element if the dff file loaded, false otherwise.
function engineLoadDFF() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/EngineGetModelNameFromID)
]]
---@type fun(modelId: integer): string | false Returns a string with the name of the object model, false otherwise.
function engineGetModelNameFromID() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/EngineRestoreModel)
]]
---@type fun(modelId: integer): boolean | nil Returns true if the model was successfully restored, false or nil if it failed for some reason.
function engineRestoreModel() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/EngineApplyShaderToWorldTexture)
]]
---@type fun(shader: element, textureName: string, targetElement?: element, appendLayers?: boolean): boolean Returns true if the shader was successfully applied, false otherwise.
function engineApplyShaderToWorldTexture() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/EngineGetModelIDFromName)
]]
---@type fun(modelName: string): integer | false Returns an int with the ID of the object model, false otherwise.
function engineGetModelIDFromName() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/EngineSetModelLODDistance)
]]
---@type fun(modelId: integer, distance: number, extendedLod?: boolean): boolean Returns true if the function executed succesfully, false otherwise.
function engineSetModelLODDistance() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/EngineLoadIFP)
]]
---@type fun(ifpFilePath: string, CustomBlockName: string): ifp | false Returns an IFP element if the IFP file loaded, false otherwise.
function engineLoadIFP() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/EngineReplaceAnimation)
]]
---@type fun(thePed: ped, internalBlockName: string, internalAnimName: string, customBlockName: string, customAnimName: string): boolean Returns true on success, false in case of failure.
function engineReplaceAnimation() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/EngineRestoreAnimation)
]]
---@type fun(thePed: ped, internalBlockName?: string, internalAnimName?: string): boolean Returns true on success, false in case of failure.
function engineRestoreAnimation() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/EngineGetModelPhysicalPropertiesGroup)
]]
---@type fun(modelId: integer): integer Returns id of physical properties group that requested model uses, in range of 0-159, if the object doesn't have a group assigned, -1 is returned. If passed arguments were wrong, error is triggered.
function engineGetModelPhysicalPropertiesGroup() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/EngineRestoreModelPhysicalPropertiesGroup)
]]
---@type fun(modelId: integer): boolean Returns true if there were no issues, if passed arguments were invalid an error is raised.
function engineRestoreModelPhysicalPropertiesGroup() end

--- Use groupId -1 to disable model physics. <br>
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/EngineSetModelPhysicalPropertiesGroup)
]]
---@type fun(modelId: integer, groupId: integer | -1): boolean Returns true if there were no issues with group change, otherwise an error is raised
function engineSetModelPhysicalPropertiesGroup() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/EngineGetObjectGroupPhysicalProperty)
]]
---@type fun(groupId: integer, property: string): ...:unknown Returns the value contained in given property if everything went well, error is raised otherwise.
function engineGetObjectGroupPhysicalProperty() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/EngineRestoreObjectGroupPhysicalProperties)
]]
---@type fun(groupId: integer, property: string): boolean Returns true if everything went well, error is raised otherwise.
function engineRestoreObjectGroupPhysicalProperties() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/EngineSetObjectGroupPhysicalProperty)
]]
---@type fun(groupId: integer, property: string, newValue: any): boolean Returns true if everything went well, error is raised otherwise.
function engineSetObjectGroupPhysicalProperty() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/EngineRequestModel)
]]
---@type fun(elementType: "ped" | "vehicle" | "object" | "timed-object" | "clump" | "object-damageable", parentID?: integer): integer | false Returns an integer of the model ID that was available to be assigned to the element type, false if no free model ID available or invalid element type. Do not rely on the model numbers returned being consistent across multiple clients or multiple runs of resources. There is no guarantee for the order of the numbers or that the same numbers will always correspond to the same element type. Any patterns are coincidental.
function engineRequestModel() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/EngineFreeModel)
]]
---@type fun(modelId: integer): boolean Returns true if the model was successfully freed, false otherwise.
function engineFreeModel() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/EngineGetModelTextures)
]]
---@type fun(modelNameOrModelId: string | integer, textureNames?: string | string[]): {[string]: texture} | false Returns a table of texture elements [textureName, texture], false otherwise.
function engineGetModelTextures() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/EngineSetSurfaceProperties)
]]
---@type fun(surfaceId: integer, property: string, value: any): boolean Returns true if the function executed succesfully, false otherwise.
function engineSetSurfaceProperties() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/EngineGetSurfaceProperties)
]]
---@type fun(surfaceId: integer, property: string): unknown:... Returns the current property value. See the table below for possible values.
function engineGetSurfaceProperties() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/EngineResetSurfaceProperties)
]]
---@type fun(integersurfaceId): boolean Returns true if the function executed succesfully, false otherwise.
function engineResetSurfaceProperties() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/EngineResetModelLODDistance)
]]
---@type fun(model: integer): boolean Returns true if the LOD distance was reset to default, or false if the model argument is incorrect, or the LOD distance hasn't been changed.
function engineResetModelLODDistance() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/EngineRestreamWorld)
]]
---@type fun(): boolean Returns true if the world was restreamed successfully, false otherwise.
function engineRestreamWorld() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/EngineSetModelVisibleTime)
]]
---@type fun(modelId: integer, timeOn: integer, timeOff: integer): boolean Returns true if the change was successful, false otherwise.
function engineSetModelVisibleTime() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/EngineGetModelVisibleTime)
]]
---@type fun(modelId: integer): integer, integer Returns 2 integers, indicating timeOn and timeOff.
function engineGetModelVisibleTime() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/EngineStreamingFreeUpMemory)
]]
---@type fun(bytes: integer): boolean Returns true if the function has succeeded, false otherwise.
function engineStreamingFreeUpMemory() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/EngineStreamingGetUsedMemory)
]]
---@type fun(): integer Returns a int containing the amount of memory in bytes.
function engineStreamingGetUsedMemory() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/EngineStreamingRestoreBufferSize)
    This function resets the streaming buffer.
    Returns true if successfully, else returns an error.
]]
---@type fun(): boolean
function engineStreamingRestoreBufferSize() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/EngineStreamingSetModelCacheLimits)
	Wiki specifies this function returns a boolean, but the current version returns void/nil. [Perma link to repo of the moment writing this comment](https://github.com/multitheftauto/mtasa-blue/blob/b20f86f8a070a7ae49a7da0ffa638dea3aa649b2/Client/mods/deathmatch/logic/luadefs/CLuaEngineDefs.cpp#L63)
]]
---@type fun(numVehicles?: integer, numPeds?: integer)
function engineStreamingSetModelCacheLimits() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/EngineSetPoolCapacity)
]]
---@type fun(pool: enginePools, capacity: number): boolean Returns true if the capacity was changed
function engineSetPoolCapacity() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/EngineGetPoolCapacity)
]]
---@type fun(pool: enginePools): capacity: number Returns the capacity of the provided pool
function engineGetPoolCapacity() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/EngineGetPoolUsedCapacity)
]]
---@type fun(pool: enginePools): usedCapacity: number Returns the used capacity of the provided pool
function engineGetPoolUsedCapacity() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/EngineGetPoolDefaultCapacity)
]]
---@type fun(pool: enginePools): defaultCapacity: number Returns the default capacity of the provided pool
function engineGetPoolDefaultCapacity() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/EngineAddImage)
]]
---@type fun(img: userdata): boolean
function engineAddImage() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/EngineLoadIMG)
]]
---@type fun(imgFile: string): img: userdata
function engineLoadIMG() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/EngineGetModelFlags)
]]
---@type fun(modelId: integer): integer
function engineGetModelFlags() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/EngineGetModelTXDID)
]]
---@type fun(modelId: integer): integer
function engineGetModelTXDID() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/EngineImageGetFilesCount)
]]
---@type fun(img: userdata): integer
function engineImageGetFilesCount() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/EngineImageGetFiles)
]]
---@type fun(img: userdata): string[]
function engineImageGetFiles() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/EngineImageGetFile)
]]
---@type fun(img: userdata, fileIdOrName: integer | string): string | false
function engineImageGetFile() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/EngineImageLinkDFF)
]]
---@type fun(img: userdata, filePath: string, modelId: integer): boolean
function engineImageLinkDFF() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/EngineImageLinkTXD)
]]
---@type fun(img: userdata, filePath: string, txdId: integer): boolean
function engineImageLinkTXD() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/EngineResetModelFlags)
]]
---@type fun(modelId: integer): boolean
function engineResetModelFlags() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/EngineRestoreDFFImage)
]]
---@type fun(modelId: integer): boolean
function engineRestoreDFFImage() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/EngineRestoreTXDImage)
]]
---@type fun(modelId: integer): boolean
function engineRestoreTXDImage() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/EngineSetModelFlag)
]]
---@type fun(modelId: integer, flagName: string, state: boolean): boolean
function engineSetModelFlag() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/EngineSetModelFlags)
]]
---@type fun(modelId: integer, flags: integer, ideFlags?: boolean): boolean
function engineSetModelFlags() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/EngineStreamingSetMemorySize)
]]
---@type fun(sizeBytes: integer): nil
function engineStreamingSetMemorySize() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/EngineStreamingGetMemorySize)
]]
---@type fun(): integer
function engineStreamingGetMemorySize() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/EngineStreamingRestoreMemorySize)
]]
---@type fun(): nil
function engineStreamingRestoreMemorySize() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/EngineStreamingSetBufferSize)
]]
---@type fun(sizeBytes: integer): boolean
function engineStreamingSetBufferSize() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/EngineStreamingGetBufferSize)
]]
---@type fun(): integer
function engineStreamingGetBufferSize() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/EnginePreloadWorldArea)
]]
---@type fun(x: number, y: number, z: number, loadingOption?: "all" | "models" | "collisions"): nil
function enginePreloadWorldArea() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/EngineStreamingGetModelLoadState)
]]
---@type fun(modelId: integer): "unloaded" | "loaded" | "requested" | "reading" | "finishing"
function engineStreamingGetModelLoadState() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/EngineStreamingRequestModel)
]]
---@type fun(modelId: integer, addRef?: boolean, isBlocking?: boolean): boolean
function engineStreamingRequestModel() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/EngineStreamingReleaseModel)
]]
---@type fun(modelId: integer, removeRef?: boolean): boolean
function engineStreamingReleaseModel() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/EngineAddClothingTXD)
]]
---@type fun(txd: txd, modelName: string): boolean
function engineAddClothingTXD() end

