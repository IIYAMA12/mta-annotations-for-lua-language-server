---@meta dxConfigs
---@diagnostic disable: missing-return

---@type fun(theModel: dff, modelID: integer, alphaTransparency?: boolean): boolean
function engineReplaceModel () end

---@type fun(nameFilter?: string, modelId?: string): table
function engineGetVisibleTextureNames () end

---@type fun(rawDataOrColFile : string): col
function engineLoadCOL () end

---@type fun(shader: element, textureName?: string, targetElement?: element): boolean
function engineRemoveShaderFromWorldTexture () end

---@type fun(texture: txd, model_id: integer): boolean
function engineImportTXD () end

---@type fun(modelId: string): table
function engineGetModelTextureNames () end

---@type fun(model: integer): number
function engineGetModelLODDistance () end

---@type fun(enable: boolean, force: boolean): boolean
function engineSetAsynchronousLoading () end

---@type fun(modelID: integer): boolean
function engineRestoreCOL () end

---@type fun(rawDataOrTxdFile : string, filteringEnabled?: boolean): txd
function engineLoadTXD () end

---@type fun(theCol: col, modelID: integer): boolean
function engineReplaceCOL () end

---@type fun(rawDataOrDffFile: string): dff
function engineLoadDFF () end

---@type fun(modelID: integer): string
function engineGetModelNameFromID () end

---@type fun(modelID: integer): boolean
function engineRestoreModel () end

---@type fun(shader: element, textureName?: string, targetElement?: element, appendLayers?: boolean): boolean
function engineApplyShaderToWorldTexture () end

---@type fun(modelName: string): integer
function engineGetModelIDFromName () end

---@type fun(model: integer, distance: number): boolean
function engineSetModelLODDistance () end

---@type fun(IfpFilePath: string, CustomBlockName: string): ifp
function engineLoadIFP () end

---@type fun(thePed, InternalBlockName, InternalAnimName, CustomBlockName, CustomAnimName): boolean
function engineReplaceAnimation () end

---@type fun(thePed: ped, InternalBlockName?: string, InternalAnimName?: string): boolean
function engineRestoreAnimation () end

---@type fun(modelID: integer): integer
function engineGetModelPhysicalPropertiesGroup () end

---@type fun(modelID: integer): boolean
function engineRestoreModelPhysicalPropertiesGroup () end

---@type fun(modelID: integer, groupID: integer): boolean
function engineSetModelPhysicalPropertiesGroup () end

---@type fun(groupID: integer, property: string): unknown
function engineGetObjectGroupPhysicalProperty () end

---@type fun(groupID: integer, property: string): boolean
function engineRestoreObjectGroupPhysicalProperties () end

---@type fun(groupID: integer, property: string, newValue: any): boolean
function engineSetObjectGroupPhysicalProperty () end

---@type fun(elementType: string, parentID?: integer): integer
function engineRequestModel () end

---@type fun(modelID: integer): boolean
function engineFreeModel () end

---@type fun(modelNameOrModelID?: string | integer, textureNames?: string | table): table
function engineGetModelTextures () end

---@type fun(surfaceID: integer, property: string, value: any, ...?: any): boolean
function engineSetSurfaceProperties () end

---@type fun(surfaceID: integer, property: string): unknown:...
function engineGetSurfaceProperties () end


---@type fun(integersurfaceID): unknown:...
function engineResetSurfaceProperties () end

---@type fun(model: integer): boolean
function engineResetModelLODDistance () end

---@type fun(): boolean
function engineRestreamWorld () end

---@type fun(modelID: integer, timeOn: integer, timeOff: integer): boolean
function engineSetModelVisibleTime () end

---@type fun(modelID: integer): integer, integer
function engineGetModelVisibleTime () end

---@type fun(bytes: integer): boolean
function engineStreamingFreeUpMemory () end

---@type fun(): integer
function engineStreamingGetUsedMemory () end
