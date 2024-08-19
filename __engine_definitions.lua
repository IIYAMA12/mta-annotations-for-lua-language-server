---@meta dxConfigs
---@diagnostic disable: missing-return
---@diagnostic disable: lowercase-global

--[[
    Credits to the community for all the available syntax and descriptions
]]

---@type fun(theModel: dff, modelID: integer, alphaTransparency?: boolean): boolean
function engineReplaceModel() end

---@type fun(nameFilter?: string, modelId?: string): string[] Returns a table of texture names.
function engineGetVisibleTextureNames() end

---@type fun(rawDataOrColFile: string): col | false Returns a COL if the file was loaded, false otherwise.
function engineLoadCOL() end

---@type fun(shader: element, textureName: string, targetElement?: element): boolean Returns true if the shader was successfully removed, false otherwise.
function engineRemoveShaderFromWorldTexture() end

---@type fun(texture: txd, modelId: integer): boolean Returns true if the function executed succesfully, false otherwise.
function engineImportTXD() end

---@type fun(modelId?: string): string[] Returns a table if this function succeeds.
function engineGetModelTextureNames() end

---@type fun(model: integer): number | false Returns a float representing the LOD distance of the model, or false if the model argument is incorrect.
function engineGetModelLODDistance() end

---@type fun(enable: boolean, force: boolean): boolean Returns true if the function executed successfully, false otherwise.
function engineSetAsynchronousLoading() end

---@type fun(modelId: integer): boolean | nil Returns true if this function succeeds, false or nil if it fails for some reason.
function engineRestoreCOL() end

---@type fun(rawDataOrTxdFile : string, filteringEnabled?: boolean): txd | false Returns a TXD if the file was loaded, false otherwise.
function engineLoadTXD() end

---@type fun(theCol: col, modelId: integer): boolean | nil Returns true if the collision was successfully replaced, false or nil if the collision could not be replaced for a reason.
function engineReplaceCOL() end

---@type fun(rawDataOrDffFile: string): dff | false Returns a DFF element if the dff file loaded, false otherwise.
function engineLoadDFF() end

---@type fun(modelId: integer): string | false Returns a string with the name of the object model, false otherwise.
function engineGetModelNameFromID() end

---@type fun(modelId: integer): boolean | nil Returns true if the model was successfully restored, false or nil if it failed for some reason.
function engineRestoreModel() end

---@type fun(shader: element, textureName: string, targetElement?: element, appendLayers?: boolean): boolean Returns true if the shader was successfully applied, false otherwise.
function engineApplyShaderToWorldTexture() end

---@type fun(modelName: string): integer | false Returns an int with the ID of the object model, false otherwise.
function engineGetModelIDFromName() end

---@type fun(modelId: integer, distance: number): boolean Returns true if the function executed succesfully, false otherwise.
function engineSetModelLODDistance() end

---@type fun(ifpFilePath: string, CustomBlockName: string): ifp | false Returns an IFP element if the IFP file loaded, false otherwise.
function engineLoadIFP() end

---@type fun(thePed: ped, internalBlockName: string, internalAnimName: string, customBlockName: string, customAnimName: string): boolean Returns true on success, false in case of failure.
function engineReplaceAnimation() end

---@type fun(thePed: ped, internalBlockName?: string, internalAnimName?: string): boolean Returns true on success, false in case of failure.
function engineRestoreAnimation() end

---@type fun(modelId: integer): integer Returns id of physical properties group that requested model uses, in range of 0-159, if the object doesn't have a group assigned, -1 is returned. If passed arguments were wrong, error is triggered.
function engineGetModelPhysicalPropertiesGroup() end

---@type fun(modelId: integer): boolean Returns true if there were no issues, if passed arguments were invalid an error is raised.
function engineRestoreModelPhysicalPropertiesGroup() end

---@type fun(modelId: integer, groupId: integer): boolean Returns true if there were no issues with group change, otherwise an error is raised
function engineSetModelPhysicalPropertiesGroup() end

---@type fun(groupId: integer, property: string): ...:unknown Returns the value contained in given property if everything went well, error is raised otherwise.
function engineGetObjectGroupPhysicalProperty() end

---@type fun(groupId: integer, property: string): boolean Returns true if everything went well, error is raised otherwise.
function engineRestoreObjectGroupPhysicalProperties() end

---@type fun(groupId: integer, property: string, newValue: any): boolean Returns true if everything went well, error is raised otherwise.
function engineSetObjectGroupPhysicalProperty() end

---@type fun(elementType: string, parentID?: integer): integer | false Returns an integer of the model ID that was available to be assigned to the element type, false if no free model ID available or invalid element type. Do not rely on the model numbers returned being consistent across multiple clients or multiple runs of resources. There is no guarantee for the order of the numbers or that the same numbers will always correspond to the same element type. Any patterns are coincidental.
function engineRequestModel() end

---@type fun(modelId: integer): boolean Returns true if the model was successfully freed, false otherwise.
function engineFreeModel() end

---@type fun(modelNameOrModelId: string | integer, textureNames?: string | string[]): {[string]: texture} | false Returns a table of texture elements [textureName, texture], false otherwise.
function engineGetModelTextures() end

---@type fun(surfaceId: integer, property: string, value: any): boolean Returns true if the function executed succesfully, false otherwise.
function engineSetSurfaceProperties() end

---@type fun(surfaceId: integer, property: string): unknown:... Returns the current property value. See the table below for possible values.
function engineGetSurfaceProperties() end

---@type fun(integersurfaceId): boolean Returns true if the function executed succesfully, false otherwise.
function engineResetSurfaceProperties() end

---@type fun(model: integer): boolean Returns true if the LOD distance was reset to default, or false if the model argument is incorrect, or the LOD distance hasn't been changed.
function engineResetModelLODDistance() end

---@type fun(includeLODs?: boolean): boolean Returns true if the world was restreamed successfully, false otherwise.
function engineRestreamWorld() end

---@type fun(modelId: integer, timeOn: integer, timeOff: integer): boolean Returns true if the change was successful, false otherwise.
function engineSetModelVisibleTime() end

---@type fun(modelId: integer): integer, integer Returns 2 integers, indicating timeOn and timeOff.
function engineGetModelVisibleTime() end

---@type fun(bytes: integer): boolean Returns true if the function has succeeded, false otherwise.
function engineStreamingFreeUpMemory() end

---@type fun(): integer Returns a int containing the amount of memory in bytes.
function engineStreamingGetUsedMemory() end

--[[
    This function resets the streaming buffer.
    Returns true if successfully, else returns an error.
]]
---@type fun(): boolean
function engineStreamingRestoreBufferSize() end

--- Wiki specifies this function returns a boolean, but the current version returns void/nil. [Perma link to repo of the moment writing this comment](https://github.com/multitheftauto/mtasa-blue/blob/b20f86f8a070a7ae49a7da0ffa638dea3aa649b2/Client/mods/deathmatch/logic/luadefs/CLuaEngineDefs.cpp#L63)
---@type fun(numVehicles?: integer, numPeds?: integer)
function engineStreamingSetModelCacheLimits() end

---@type fun(pool: enginePools, capacity: number): boolean Returns true if the capacity was changed
function engineSetPoolCapacity() end

---@type fun(pool: enginePools): capacity: number Returns the capacity of the provided pool
function engineGetPoolCapacity() end

---@type fun(pool: enginePools): usedCapacity: number Returns the used capacity of the provided pool
function engineGetPoolUsedCapacity() end

---@type fun(pool: enginePools): defaultCapacity: number Returns the default capacity of the provided pool
function engineGetPoolDefaultCapacity() end

---@type fun(img: userdata): boolean
function engineAddImage() end

---@type fun(imgFile: string): img: userdata
function engineLoadIMG() end

---@type fun(modelId: integer): integer
function engineGetModelFlags() end

---@type fun(modelId: integer): integer
function engineGetModelTXDID() end

---@type fun(img: userdata): integer
function engineImageGetFilesCount() end

---@type fun(img: userdata): string[]
function engineImageGetFiles() end

---@type fun(img: userdata, fileIdOrName: integer | string): string | false
function engineImageGetFile() end

---@type fun(img: userdata, filePath: string, modelId: integer): boolean
function engineImageLinkDFF() end

---@type fun(img: userdata, filePath: string, txdId: integer): boolean
function engineImageLinkTXD() end

---@type fun(modelId: integer): boolean
function engineResetModelFlags() end

---@type fun(modelId: integer): boolean
function engineRestoreDFFImage() end

---@type fun(modelId: integer): boolean
function engineRestoreTXDImage() end

---@type fun(modelId: integer, flagName: string, state: boolean): boolean
function engineSetModelFlag() end

---@type fun(modelId: integer, flags: integer, ideFlags?: boolean): boolean
function engineSetModelFlags() end

---@type fun(sizeBytes: integer): nil
function engineStreamingSetMemorySize() end

---@type fun(): integer
function engineStreamingGetMemorySize() end

---@type fun(): nil
function engineStreamingRestoreMemorySize() end

---@type fun(sizeBytes: integer): boolean
function engineStreamingSetBufferSize() end

---@type fun(): integer
function engineStreamingGetBufferSize() end

---@type fun(x: number, y: number, z: number, loadingOption?: "all" | "models" | "collisions")
function enginePreloadWorldArea() end
