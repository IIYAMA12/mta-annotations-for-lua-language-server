---@meta guiConfigs
---@diagnostic disable: missing-return

---@type fun(guiElement: element): boolean
function guiMoveToBack () end

---@type fun(guielement: element, alpha: number): boolean
function guiSetAlpha () end

---@type fun(filepath?: string, size?: integer): element
function guiCreateFont () end

---@type fun(guiElement: element): boolean
function guiGetEnabled () end

---@type fun(): boolean
function guiGetInputEnabled () end

---@type fun(guiElement: element): string, element
function guiGetFont () end

---@type fun(): string
function guiGetInputMode () end

---@type fun(guiElement: element): boolean
function guiGetVisible () end

---@type fun(): number, number
function guiGetScreenSize () end

---@type fun(): string
function guiGetCursorType () end

---@type fun(guiElement: element, relative: boolean): number, number
function guiGetPosition () end

---@type fun(guiElement: element): table
function guiGetProperties () end

---@type fun(guiElement: element, property: string): string
function guiGetProperty () end

---@type fun(guiElement: element): string
function guiGetText () end

---@type fun(guiElement: element): boolean
function guiBringToFront () end

---@type fun(mode: string): boolean
function guiSetInputMode () end

---@type fun(guiElement: element): number
function guiGetAlpha () end

---@type fun(guiElement: element, state: boolean): boolean
function guiSetVisible () end

---@type fun(guiElement: element, width: number, height: number, relative: boolean): boolean
function guiSetSize () end

---@type fun(guiElement: element, font: mixFont): boolean
function guiSetFont () end

---@type fun(theElement: element, relative: boolean): number, number
function guiGetSize () end

---@type fun(guiElement: element, enabled: boolean): boolean
function guiSetEnabled () end

---@type fun(guiElement: element, property: string, value: string): boolean
function guiSetProperty () end

---@type fun(enabled: boolean): boolean
function guiSetInputEnabled () end

---@type fun(guiElement: element, text: string): boolean
function guiSetText () end

---@type fun(theElement: element, x: number, y: number, relative: boolean): boolean
function guiSetPosition () end

---@type fun(x: number, y: number, width: number, height: number, isLocal: boolean, isTransparent: boolean, isRelative: boolean, parent?: element): guiBrowser
function guiCreateBrowser () end

---@type fun(theBrowser: guiBrowser): browser
function guiGetBrowser () end

---@type fun(x: number, y: number, width: number, height: number, text: string, relative: boolean, parent?: element): element
function guiCreateButton () end

---@type fun(theCheckbox: element): boolean
function guiCheckBoxGetSelected () end

---@type fun(theCheckbox: element, state: boolean): boolean
function guiCheckBoxSetSelected () end

---@type fun(x: number, y: number, width: number, height: number, text: string, selected: boolean, relative: boolean, parent?: element): element
function guiCreateCheckBox () end

---@type fun(x: number, y: number, width: number, height: number, caption: string, relative: boolean, parent?: element): element
function guiCreateComboBox () end

---@type fun(comboBox: element, value: string): integer
function guiComboBoxAddItem () end

---@type fun(comboBox: element): boolean
function guiComboBoxClear () end

---@type fun(comboBox: element, itemId: integer): string
function guiComboBoxGetItemText () end

---@type fun(comboBox: element, itemId: integer, text: string): boolean
function guiComboBoxSetItemText () end

---@type fun(comboBox: element, itemId: integer): boolean
function guiComboBoxRemoveItem () end

---@type fun(comboBox: element): integer
function guiComboBoxGetSelected () end

---@type fun(comboBox: element, itemIndex: integer): boolean
function guiComboBoxSetSelected () end

---@type fun(x: number, y: number, width: number, height: number, text: string, relative?: boolean, parent?: element): element
function guiCreateEdit () end

---@type fun(theElement: element, status: boolean): boolean
function guiEditSetMasked () end

---@type fun(guiEdit: element, length: integer): boolean
function guiEditSetMaxLength () end

---@type fun(editField: element, status: boolean): boolean
function guiEditSetReadOnly () end

---@type fun(theElement: element, index: integer): boolean
function guiEditSetCaretIndex () end

---@type fun(theElement: element): integer
function guiEditGetCaretIndex () end

---@type fun(x: number, y: number, width: number, height: number, relative: boolean, parent?: element): element
function guiCreateGridList () end

---@type fun(gridList: element, title: string, width: number): integer
function guiGridListAddColumn () end

---@type fun(gridList?: element, itemText1?: integer | string, itemText2?: integer | string, ...?: integer | string): integer
function guiGridListAddRow () end

---@type fun(gridList: element, columnIndex: integer): boolean
function guiGridListAutoSizeColumn () end

---@type fun(gridList: element): boolean
function guiGridListClear () end

---@type fun(gridList: element, rowIndex: integer, columnIndex: integer): unknown
function guiGridListGetItemData () end

---@type fun(gridList: element, rowIndex: integer, columnIndex: integer): string
function guiGridListGetItemText () end

---@type fun(gridList: element): integer
function guiGridListGetRowCount () end

---@type fun(gridList: element): integer, integer
function guiGridListGetSelectedItem () end

---@type fun(gridList: element, rowIndex: integer): integer
function guiGridListInsertRowAfter () end

---@type fun(gridList: element, columnIndex: integer): boolean
function guiGridListRemoveColumn () end

---@type fun(gridList: element, rowIndex: integer): boolean
function guiGridListRemoveRow () end

---@type fun(gridList: element, rowIndex: integer, columnIndex: integer, data: any): boolean
function guiGridListSetItemData () end

---@type fun(gridList: element, rowIndex: integer, columnIndex: integer, text: string, section: boolean, number: boolean): boolean
function guiGridListSetItemText () end

---@type fun(guiGridlist: element, horizontalBar: boolean, verticalBar: boolean): boolean
function guiGridListSetScrollBars () end

---@type fun(gridList: element, rowIndex: integer, columnIndex?: integer, bReset?: boolean): boolean
function guiGridListSetSelectedItem () end

---@type fun(gridlist: element, mode: integer): boolean
function guiGridListSetSelectionMode () end

---@type fun(guiGridlist: element, enabled: boolean): boolean
function guiGridListSetSortingEnabled () end

---@type fun(gridList: element): integer
function guiGridListGetSelectedCount () end

---@type fun(gridList: element): table
function guiGridListGetSelectedItems () end

---@type fun(gridList: element, columnIndex: integer, width: number, relative: boolean): boolean
function guiGridListSetColumnWidth () end

---@type fun(gridList: element): integer
function guiGridListGetColumnCount () end

---@type fun(gridList: element, rowIndex: integer, columnIndex: integer): integer, integer, integer, integer
function guiGridListGetItemColor () end

---@type fun(gridList: element, rowIndex: integer, columnIndex: integer, red: integer, green: integer, blue?: integer, alpha?: integer): boolean
function guiGridListSetItemColor () end

---@type fun(guiGridlist: element, columnIndex: integer): string
function guiGridListGetColumnTitle () end

---@type fun(guiGridlist: element, columnIndex: integer, title: string): boolean
function guiGridListSetColumnTitle () end

---@type fun(guiGridlist: element): number
function guiGridListGetHorizontalScrollPosition () end

---@type fun(guiGridlist: element, fPosition: number): boolean
function guiGridListSetHorizontalScrollPosition () end

---@type fun(guiGridlist: element): number
function guiGridListGetVerticalScrollPosition () end

---@type fun(guiGridlist: element, fPosition: number): boolean
function guiGridListSetVerticalScrollPosition () end

---@type fun(gridList: element, columnIndex: integer, relative: boolean): boolean
function guiGridListGetColumnWidth () end

---@type fun(x: number, y: number, width: number, height: number, text: string, relative?: boolean, parent?: element): element
function guiCreateMemo () end

---@type fun(theMemo: element, status: boolean): boolean
function guiMemoSetReadOnly () end

---@type fun(theMemo: element, index: integer): boolean
function guiMemoSetCaretIndex () end

---@type fun(theElement: element): integer
function guiMemoGetCaretIndex () end

---@type fun(x: number, y: number, width: number, height: number, relative: boolean, parent?: element): element
function guiCreateProgressBar () end

---@type fun(theProgressbar: element): number
function guiProgressBarGetProgress () end

---@type fun(theProgressbar: element, progress: number): boolean
function guiProgressBarSetProgress () end

---@type fun(x: number, y: number, width: number, height: number, text: string, relative: boolean, parent?: element): element
function guiCreateRadioButton () end

---@type fun(guiRadioButton: element): boolean
function guiRadioButtonGetSelected () end

---@type fun(guiRadioButton: element, state: boolean): boolean
function guiRadioButtonSetSelected () end

---@type fun(x: number, y: number, width: number, height: number, horizontal: boolean, relative: boolean, parent?: element): guiScrollbar:element
function guiCreateScrollBar () end

---@type fun(theScrollBar: element): number
function guiScrollBarGetScrollPosition () end

---@type fun(theScrollBar: element, amount: number): boolean
function guiScrollBarSetScrollPosition () end

---@type fun(x: number, y: number, width: number, height: number, relative: boolean, parent?: element): element
function guiCreateScrollPane () end

---@type fun(horizontalScrollPane: element): number
function guiScrollPaneGetHorizontalScrollPosition () end

---@type fun(verticalScrollPane: element): number
function guiScrollPaneGetVerticalScrollPosition () end

---@type fun(horizontalScrollPane: element, position: number): boolean
function guiScrollPaneSetHorizontalScrollPosition () end

---@type fun(scrollPane: element, horizontal: boolean, vertical: boolean): boolean
function guiScrollPaneSetScrollBars () end

---@type fun(verticalScrollPane: element, position: number): boolean
function guiScrollPaneSetVerticalScrollPosition () end

---@type fun(x: number, y: number, width: number, height: number, path: string, relative: boolean, parent?: element): element
function guiCreateStaticImage () end

---@type fun(theImage: element): integer, integer
function guiStaticImageGetNativeSize () end

---@type fun(theElement: element, filename: string): boolean
function guiStaticImageLoadImage () end

---@type fun(x: number, y: number, width: number, height: number, relative: boolean, parent?: element): element
function guiCreateTabPanel () end

---@type fun(tabPanel: element): element
function guiGetSelectedTab () end

---@type fun(tabPanel: element, theTab: element): boolean
function guiSetSelectedTab () end

---@type fun(text: string, parent: element): element
function guiCreateTab () end

---@type fun(tabToDelete: element, tabPanel: element): boolean
function guiDeleteTab () end

---@type fun(x: number, y: number, width: number, height: number, text: string, relative: boolean, parent?: element): element
function guiCreateLabel () end

---@type fun(theLabel: element): number
function guiLabelGetFontHeight () end

---@type fun(theLabel: element): number
function guiLabelGetTextExtent () end

---@type fun(theElement: element, red: integer, green: integer, blue: integer): boolean
function guiLabelSetColor () end

---@type fun(theLabel: element, align: string, wordwrap?: boolean): boolean
function guiLabelSetHorizontalAlign () end

---@type fun(theLabel: element, align: string): boolean
function guiLabelSetVerticalAlign () end

---@type fun(theLabel: element): integer, integer, integer
function guiLabelGetColor () end

---@type fun(x: number, y: number, width: number, height: number, titleBarText: string, relative: boolean): element
function guiCreateWindow () end

---@type fun(theElement: element, status: boolean): boolean
function guiWindowSetMovable () end

---@type fun(theElement: element, status: boolean): boolean
function guiWindowSetSizable () end

---@type fun(theMemo: element): boolean
function guiMemoIsReadOnly () end

---@type fun(guiEdit: element): boolean
function guiEditIsReadOnly () end

---@type fun(theMemo: element): number
function guiMemoGetVerticalScrollPosition () end

---@type fun(theMemo: element, position: number): boolean
function guiMemoSetVerticalScrollPosition () end

---@type fun(guiEdit: element): integer
function guiEditGetMaxLength () end

---@type fun(guiEdit: element): boolean
function guiEditIsMasked () end

---@type fun(guiWindow: element): boolean
function guiWindowIsMovable () end

---@type fun(guiWindow: element): boolean
function guiWindowIsSizable () end

---@type fun(guiElement: element): boolean
function guiBlur () end

---@type fun(guiElement: element): boolean
function guiFocus () end

---@type fun(comboBox: element): integer
function guiComboBoxGetItemCount () end

---@type fun(comboBox: element): boolean
function guiComboBoxIsOpen () end

---@type fun(comboBox: element, state: boolean): boolean
function guiComboBoxSetOpen () end

---@type fun(gridlist: element): integer
function guiGridListGetSelectionMode () end

---@type fun(guiGridlist: element): boolean
function guiGridListIsSortingEnabled () end

