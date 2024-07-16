---@meta dxConfigs
---@diagnostic disable: missing-return
---@diagnostic disable: lowercase-global

--[[
    Credits to the community for all the available syntax and descriptions
]]

---@type fun(filepath: string, size?: integer, bold?: boolean, quality?: string): font | false Returns a DX font element if successful, false if invalid arguments were passed to the function, or there is insufficient resources available.
function dxCreateFont() end

---@type fun(pixels: string, x: integer, y: integer): r:integer, g:integer, b:integer, a:integer Returns 4 ints representing the rgba color value of the pixel if succesful.
function dxGetPixelColor() end

---@type (fun(text: string | number, left: number, top: number, right?: number, bottom?: number, color?: integer, scale?: number, font?: mixFont, alignX?: alignX, alignY?: alignY, clip?: boolean, wordBreak?: boolean, postGUI?: boolean, colorCoded?: boolean, subPixelPositioning?: boolean, fRotation?: number, fRotationCenterX?: number, fRotationCenterY?: number, fLineSpacing?: number): boolean) | (fun(text: string | number, left: number, top: number, right?: number, bottom?: number, color?: integer, scaleXY?: number, scaleY?: number, font?: mixFont, alignX?: alignX, alignY?: alignY, clip?: boolean, wordBreak?: boolean, postGUI?: boolean, colorCoded?: boolean, subPixelPositioning?: boolean, fRotation?: number, fRotationCenterX?: number, fRotationCenterY?: number, fLineSpacing?: number): boolean) ScaleY is optional. Returns true if successful, false otherwise.
function dxDrawText() end

---@type fun(posX: number, posY: number, width: number, height: number, u: number, v: number, usize: number, vsize: number, image: image | string, rotation?:number, rotationCenterOffsetX?: number, rotationCenterOffsetY?: number, color?: color, postGUI?: boolean): boolean Returns true if successful, false otherwise.
function dxDrawImageSection() end

---@type fun(pixels: string): width:integer, height: integer Returns width and height of the pixels if successful
function dxGetPixelsSize() end

---@type fun(theShader: element, tessellationX: integer, tessellationY: integer): boolean Returns true if the shader element's tessellation was successfully changed, false otherwise.
function dxSetShaderTessellation() end

---@type fun(width: integer, height: integer): element | false Returns a texture element if successful, may fail due to hardware or memory limitations and returns false.
function dxCreateScreenSource() end

---@type (fun(filepathOrPixels: string, textureFormat?: textureFormat, mipmaps?: boolean, textureEdge?: textureEdge): element) |  (fun(width: integer, height: integer, textureFormat?: textureFormat, textureEdge?: textureEdge, textureType?: textureType, depth?: integer): element) Returns a texture if successful
function dxCreateTexture() end

---@type fun(startX: number, startY: number, startZ: number, endX: number, endY: number, endZ: number, color?: color, width?: integer, postGUI?: dxStageOrPostGUI): boolean Returns a true if the operation was successful, false otherwise.
function dxDrawLine3D() end

---@type fun(startX: integer, startY: integer, endX: integer, endY: integer, color: integer, width?: number, postGUI?: boolean): boolean Returns a true if the operation was successful, false otherwise.
function dxDrawLine() end

---@type (fun(filepathOrRaw_data: string): shader: element | false, name:string) | (fun(filepathOrRaw_data: string, priority?: number, maxDistance?: number, layered?: boolean, elementTypes?: exampleShaderElementTypes|string): shader:element | false, name:string) | (fun(filepathOrRaw_data: string, macros?: table, priority?: number, maxDistance?: number, layered?: boolean, elementTypes?: exampleShaderElementTypes|string): shader:element | false, name:string) A shader element if successful, false if invalid arguments were passed to the function. The name of the technique that will be used. Element types: A comma seperated list of element types to restrict this shader to.
function dxCreateShader() end

---@type fun(material: element): width:integer, height:integer, depth:integer? Returns two ints representing the width and height in pixels of the material.  If the material is a volume texture, this function will return three ints representing the width, height and depth.
function dxGetMaterialSize() end

---@type (fun(texture: element, pixels?: string, x?: integer, y?: integer, width?: integer, height?: integer): boolean) | (fun(surfaceIndex:integer, texture: element, pixels?: string, x?: integer, y?: integer, width?: integer, height?: integer): boolean)
function dxSetTexturePixels() end

---@type fun(startX: number, startY: number, width: number, height: number, color?: integer, postGUI?: boolean, subPixelPositioning?: boolean): boolean Returns true if the operation was successful, false otherwise.
function dxDrawRectangle() end

---@type fun(theShader: element, rotationX: number, rotationY: number, rotationZ: number, rotationCenterOffsetX?:number, rotationCenterOffsetY?: number, rotationCenterOffsetZ?: number, bRotationCenterOffsetOriginIsScreen?: boolean, perspectiveCenterOffsetX?: number, perspectiveCenterOffsetY?: number, bPerspectiveCenterOffsetOriginIsScreen?: boolean): boolean Returns true if the shader element's transform was successfully changed, false otherwise.
function dxSetShaderTransform() end

---@type fun(testMode: testMode): boolean Returns true if the test mode was successfully set, false otherwise.
function dxSetTestMode() end

---@type fun(): blendMode Returns the current blend mode.
function dxGetBlendMode() end

---@type fun(screenSource: element, resampleNow?: boolean): boolean Returns true if the screen was successfully captured, false otherwise.
function dxUpdateScreenSource() end

---@alias dxSetShaderValue_syntax_number fun(theShader: element, parameterName: string, value1: number, value2?: number, value3?: number, value4?: number, value5?: number, value6?: number, value7?: number, value8?: number, value9?: number, value10?: number, value11?: number, value12?: number, value13?: number, value14?: number, value15?: number, value16?: number ): boolean
---@alias dxSetShaderValue_syntax_other fun(theShader: element, parameterName: string, value1: texture|boolean|number[] ): boolean
---@type dxSetShaderValue_syntax_number | dxSetShaderValue_syntax_other Returns true if the shader element's parameter was successfully changed, false otherwise.
function dxSetShaderValue() end

---@type (fun(width: integer, height: integer, withAlpha?: boolean): element | false) | (fun(width: integer, height: integer, surfaceFormat?: unknown): element | false)
function dxCreateRenderTarget() end

---@type fun(text: string, scale?: number, font?: mixFont, bColorCoded?: boolean): number Returns the float of the width of the text (in pixels).
function dxGetTextWidth() end

---@type fun(pixels: string): "plain" | "png" | "jpeg" | "dds" Returns the format of the pixels if successful ('plain' or 'png' or 'jpeg' or 'dds'.
function dxGetPixelsFormat() end

---@type fun(blendMode: blendMode): boolean Returns true if successful, or false if invalid arguments were passed to the function.
function dxSetBlendMode() end

---@type (fun(texture: element): pixels:string) | (fun(surfaceIndex: integer, texture: element): pixels: string) | (fun(texture: element, x: integer, y: integer, width: integer, height: integer): pixels:string) | (fun(surfaceIndex: integer, texture: element, x: integer, y: integer, width: integer, height: integer): pixels:string) | (fun(texture: element, pixelsFormat: pixelsFormat, textureFormat?: textureFormat, mipmaps?: boolean ): pixels:string) | (fun(surfaceIndex: integer, texture: element, pixelsFormat: pixelsFormat, textureFormat?: textureFormat, mipmaps?: boolean): pixels:string) | (fun(texture: element, pixelsFormat: pixelsFormat, textureFormat?: textureFormat, mipmaps?: boolean, x: integer, y: integer, width: integer, height: integer): pixels:string) | (fun(surfaceIndex: integer, texture: element, pixelsFormat: pixelsFormat, textureFormat?: textureFormat, mipmaps?: boolean, x: integer, y: integer, width: integer, height: integer): pixels:string) Returns pixels string if successful, false if invalid arguments were passed to the function.
function dxGetTexturePixels() end

---@type fun(pixels: string, newFormat: "plain" | "png" | "jpeg", quality?: integer): string Returns a copy of the pixels in the new format, or false if invalid arguments were passed to the function.
function dxConvertPixels() end

---@type (fun(startX: number, startY: number, startZ: number, endX: number, endY: number, endZ: number, u: number, v: number, usize: number, vsize: number, material: element, width: integer, color?: color, faceTowardX?: number, faceTowardY?: number, faceTowardZ?: number): boolean) | (fun(startX: number, startY: number, startZ: number, endX: number, endY: number, endZ: number, u: number, v: number, usize: number, vsize: number, flipUV: boolean, material: element, width: integer, color?: color, faceTowardX?: number, faceTowardY?: number, faceTowardZ?: number): boolean) | (fun(startX: number, startY: number, startZ: number, endX: number, endY: number, endZ: number, u: number, v: number, usize: number, vsize: number, material: element, width: integer, color?: color, postGUI?: boolean, faceTowardX?: number, faceTowardY?: number, faceTowardZ?: number): boolean) | (fun(startX: number, startY: number, startZ: number, endX: number, endY: number, endZ: number, u: number, v: number, usize: number, vsize: number, flipUV: boolean, material: element, width: integer, color?: color, postGUI?: boolean, faceTowardX?: number, faceTowardY?: number, faceTowardZ?: number): boolean) Returns a true if the operation was successful, false otherwise.
function dxDrawMaterialSectionLine3D() end

---@type fun(bEnabled: boolean, sourceRatio?: number): boolean Returns true when it was changed successfully, or false otherwise.
function dxSetAspectRatioAdjustmentEnabled() end

---@type fun(pixels: string, x: integer, y: integer, r: integer, g: integer, b: integer, a?: integer): boolean Returns true if successful, or false if invalid arguments were passed to the function.
function dxSetPixelColor() end

---@type fun(renderTarget?: element, clear?: boolean): boolean Returns true if the render target was successfully changed, false otherwise.
function dxSetRenderTarget() end

---@type fun(scale?: number, font?: mixFont): integer Returns an integer of the height of the text.
function dxGetFontHeight() end

---@type fun(posX: number, posY: number, width: number, height: number, image: image | string, rotation?: number, rotationCenterOffsetX?: number, rotationCenterOffsetY?: number, color?: color, postGUI?: boolean): boolean Returns true if successful, false otherwise.
function dxDrawImage() end

---@type fun(theTexture: texture, textureEdge: textureEdgeMode, borderColor?: integer): boolean
function dxSetTextureEdge() end

---@type fun(startX: number, startY: number, startZ: number, endX: number, endY: number, endZ: number, flipUV?: boolean, material?: element, width: number, color: integer, postGUI?: dxStageOrPostGUI, faceTowardX: number, faceTowardY: number, faceTowardZ: number): boolean
function dxDrawMaterialLine3D() end

---@type fun(): {[possibleDxStatusKey] : any, [string]: unknown}
function dxGetStatus() end

---@type fun(posX: number, posY: number, radius: number, startAngle?: number, stopAngle?: number, theColor?: color, theCenterColor?: color, segments?: integer, ratio?: integer, postGUI?: boolean): boolean Returns true if the creation of the 2D circle was successful, false otherwise.
function dxDrawCircle() end

---@type fun(pType: string, material: mixMaterial, postGUI: boolean, vertice1: vertex, vertice2?: vertex, ...: vertex): boolean Returns a true if the operation was successful, false otherwise.
function dxDrawMaterialPrimitive() end

---@type fun(pType: string, postGUI: boolean, vertice1: vertex, ...: vertex): boolean Returns a true if the operation was successful, false otherwise.
function dxDrawPrimitive() end

---@type fun(primitiveType: string, material: mixMaterial, postGUI: dxStageOrPostGUI, vertex1: vertex, ...: vertex): boolean Returns a true if the operation was successful, false otherwise.
function dxDrawMaterialPrimitive3D() end

---@type fun(primitiveType: "pointlist" | "linelist" | "linestrip" | "trianglefan" | "trianglelist" | "trianglestrip", postGUI: boolean, vertex1: vertex, vertex2: vertex, vertex3?: vertex, vertex4?: vertex, ...: vertex): boolean Returns a true if the operation was successful, false otherwise.
function dxDrawPrimitive3D() end

---@type fun(x: number, y: number, z: number, radius: number, theColor: color, fLineWidth: number, iterations: 1 | 2 | 3 | 4): boolean Returns a true if the operation was successful, false otherwise.
function dxDrawWiredSphere() end

---@type (fun(text: string | number): width:number, height:number) | (fun(text: string, width?: number, scaleXY?: number, font?: mixFont, wordBreak?: boolean, colorCoded?: boolean): width:number, height:number) | (fun(text: string, width?: number, scaleXY?: number, scaleY?, font?: mixFont, wordBreak?: boolean, colorCoded?: boolean): width:number, height:number) Returns two floats representing the width and height of the text in pixels.
function dxGetTextSize() end

---@type fun(): enabled:boolean, aspectRatio:number returns true when enabled by dxSetAspectRatioAdjustmentEnabled, false otherwise. And aspect ratio set by dxSetAspectRatioAdjustmentEnabled
function dxIsAspectRatioAdjustmentEnabled() end
