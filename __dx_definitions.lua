---@meta dxConfigs
---@diagnostic disable: missing-return

---@type fun(filepath: string, size?: integer, bold?: boolean, quality?: string): element
function dxCreateFont () end

---@type fun(pixels: string, x: integer, y: integer): r:integer, g:integer, b:integer, a:integer
function dxGetPixelColor () end

---@type fun(text: string, left: number, top: number, right?: number, bottom?: number, color?: integer, scale?: number, font?: mixFont, alignX?: string, alignY?: string, clip?: boolean, wordBreak?: boolean, postGUI?: boolean, colorCoded?: boolean, subPixelPositioning?: boolean, fRotation?: number, fRotationCenterX?: number, fRotationCenterY?: number, fLineSpacing?: number): boolean
function dxDrawText () end

---@type fun(posX: number, posY: number, width: number, height: number, u: number, v: number, usize: number, vsize: number, image: image, rotation?:number, rotationCenterOffsetX?: number, rotationCenterOffsetY?: number, color?: integer, postGUI?: boolean): boolean
function dxDrawImageSection () end

---@type fun(pixels: string): integer, integer
function dxGetPixelsSize () end

---@type fun(theShader: element, tessellationX: integer, tessellationY: integer): boolean
function dxSetShaderTessellation () end

---@type fun(width: integer, height: integer): element
function dxCreateScreenSource () end

---@type fun(filepath: string, textureFormat?: string, mipmaps?: boolean, textureEdge?: string): element
function dxCreateTexture () end

---@type fun(startX: number, startY: number, startZ: number, endX: number, endY: number, endZ: number, color?: integer, width?: integer, postGUI?: boolean): boolean
function dxDrawLine3D () end

---@type fun(startX: integer, startY: integer, endX: integer, endY: integer, color: integer, width?: number, postGUI?: boolean): boolean
function dxDrawLine () end

---@type (fun(filepathOrRaw_data: string): element, string) | (fun(filepathOrRaw_data: string, priority?: number, maxDistance?: number, layered?: boolean, elementTypes?: string): element, string) | (fun(filepathOrRaw_data: string, macros?: table, priority?: number, maxDistance?: number, layered?: boolean, elementTypes?: string): element, string)
function dxCreateShader () end

---@type fun(material: element): integer, integer, integer?
function dxGetMaterialSize () end

---@type (fun(texture: element, pixels?: string, x?: integer, y?: integer, width?: integer, height?: integer): boolean) | (fun(surfaceIndex:integer, texture: element, pixels?: string, x?: integer, y?: integer, width?: integer, height?: integer): boolean)
function dxSetTexturePixels () end

---@type fun(startX: number, startY: number, width: number, height: number, color?: integer, postGUI?: boolean, subPixelPositioning?: boolean): boolean
function dxDrawRectangle () end

---@type fun(theShader: element, rotationX: number, rotationY: number, rotationZ: number, rotationCenterOffsetX?:number, rotationCenterOffsetY?: number, rotationCenterOffsetZ?: number, bRotationCenterOffsetOriginIsScreen?: boolean, perspectiveCenterOffsetX?: number, perspectiveCenterOffsetY?: number, bPerspectiveCenterOffsetOriginIsScreen?: boolean): boolean
function dxSetShaderTransform () end

---@type fun(testMode: string): boolean
function dxSetTestMode () end

---@type fun(): string
function dxGetBlendMode () end

---@type fun(screenSource: element, resampleNow?: boolean): boolean
function dxUpdateScreenSource () end

---@type fun(theShader: element, parameterName: string, value : element|boolean|number, ...: element|boolean|number ): boolean
function dxSetShaderValue () end

---@type fun(width: integer, height: integer, withAlpha?: boolean): element
function dxCreateRenderTarget () end

---@type fun(text: string, scale?: number, font?: mixFont, bColorCoded?: boolean): number
function dxGetTextWidth () end

---@type fun(pixels: string): string
function dxGetPixelsFormat () end

---@type fun(blendMode: string): boolean
function dxSetBlendMode () end

---@type fun(integersurfaceIndex, texture?: element, x: integer, y: integer, width: integer, height: integer): string
function dxGetTexturePixels () end

---@type fun(pixels: string, newFormat: 'plain' | 'png' | 'jpeg', quality?: integer): string
function dxConvertPixels () end

---@type fun(startX: number, startY: number, startZ: number, endX: number, endY: number, endZ: number, u: number, v: number, usize: number, vsize: number, flipUV?: boolean, material?: element, width: integer, integercolor, faceTowardX?: number, faceTowardY?: number, faceTowardZ?: number): boolean
function dxDrawMaterialSectionLine3D () end

---@type fun(bEnabled: boolean, sourceRatio?: number): boolean
function dxSetAspectRatioAdjustmentEnabled () end

---@type fun(pixels: string, x: integer, y: integer, r: integer, g: integer, b: integer, a?: integer): boolean
function dxSetPixelColor () end

---@type fun(renderTarget?: element, clear?: boolean): boolean
function dxSetRenderTarget () end

---@type fun(scale?: number, font?: mixFont): integer
function dxGetFontHeight () end

---@type fun(posX: number, posY: number, width: number, height: number, image: element, rotation?: number, rotationCenterOffsetX?: number, rotationCenterOffsetY?: number): boolean
function dxDrawImage () end

---@type fun(theTexture: texture, textureEdge: string, border-color?: integer): boolean
function dxSetTextureEdge () end

---@type fun(startX: number, startY: number, startZ: number, endX: number, endY: number, endZ: number, flipUV?: boolean, material?: element, width: number, integercolor, postGUI?: boolean, numberfaceTowardX, faceTowardY: number, faceTowardZ: number): boolean
function dxDrawMaterialLine3D () end

---@type fun(): table
function dxGetStatus () end

---@type fun(posX: number, posY: number, radius: number, startAngle?: number, stopAngle?: number, theColor?: color, theCenterColor?: color, segments?: integer, ratio?: integer, postGUI): boolean
function dxDrawCircle () end

---@type fun(pType: string, material: mixMaterial, postGUI: boolean, vertice1: table, vertice2?: table, ...: table): boolean
function dxDrawMaterialPrimitive () end

---@type fun(pType: string, postGUI: boolean, vertice1: table, ...: table): boolean
function dxDrawPrimitive () end

---@type fun(primitiveType: string, material: mixMaterial, postGUI: boolean, vertex1: table, ...: table): boolean
function dxDrawMaterialPrimitive3D () end

---@type fun(primitiveType: string, postGUI: boolean, vertex1: table, vertex2: table, vertex3?: table, vertex4?: table, ...: table): boolean
function dxDrawPrimitive3D () end

---@type fun(x: number, y: number, z: number, radius: number, theColor: color, fLineWidth: number, iterations: 1 | 2 | 3 | 4): boolean
function dxDrawWiredSphere () end

---@type (fun(text: string): number, number) | (fun(text: string, width?: number, scaleXY?: number, font?: mixFont, wordBreak?: boolean, colorCoded?: boolean): number, number) | (fun(text: string, width?: number, scaleXY?: number, scaleY?, font?: mixFont, wordBreak?: boolean, colorCoded?: boolean): number, number)_
function dxGetTextSize () end

---@type fun(): boolean, number
function dxIsAspectRatioAdjustmentEnabled () end

