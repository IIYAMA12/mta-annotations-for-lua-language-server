---@meta guiConfigs
---@diagnostic disable: missing-return
---@diagnostic disable: lowercase-global

--[[
    Credits to the community for all the available syntax and descriptions
]]

---@type fun(guiElement: element): boolean Returns true if the function was successful, false otherwise. 
function guiMoveToBack () end

---@type fun(guielement: element, alpha: number): boolean Returns true if the gui element's alpha was successfully changed, false otherwise. 
function guiSetAlpha () end

---@type fun(filepath: string, size?: integer): element | false Returns a GUI font element if successful, false if invalid arguments were passed to the function, or there is insufficient resources available. 
function guiCreateFont () end

---@type fun(guiElement: element): boolean Returns true if the element is enabled, false otherwise. 
function guiGetEnabled () end

---@type fun(): boolean Returns true if input is focused on GUI, false if it's focused on the game. 
function guiGetInputEnabled () end

---@type fun(guiElement: element): string | guiFont, element | nil A string containing the name of the element's current font. The custom GUI font that is used, or nil otherwise.
function guiGetFont () end

---@type fun(): inputMode
function guiGetInputMode () end

---@type fun(guiElement: element): visibility:boolean Returns true if the element is visible, false otherwise. 
function guiGetVisible () end

---@type fun(): width:number, height:number This returns two floats representing the player's screen resolution, width and height. 
function guiGetScreenSize () end

---@type fun(): cursorType
function guiGetCursorType () end

---@type fun(guiElement: element, relative: boolean): x:number, y:number Returns floats representing the x and y position of the element.
function guiGetPosition () end

---@type fun(guiElement: element): {[string] : string} If the function succeeds, the return value is a table. Its keys are property names, the corresponding values are the values of the properties (both names and values are always strings).
function guiGetProperties () end

---@type fun(guiElement: element, property: string): string If the function succeeds, it returns a string with the value of the property.
function guiGetProperty () end

---@type fun(guiElement: element): string Returns a string containing the requested element's text.
function guiGetText () end

---@type fun(guiElement: element): boolean Returns true if the function was successful, false otherwise. 
function guiBringToFront () end

---@type fun(mode: inputMode): boolean Returns true if input mode could be changed, false if invalid parameters are passed. 
function guiSetInputMode () end

---@type fun(guiElement: element): number This function returns a positive float in between 0 and 1 of the gui element's current alpha.
function guiGetAlpha () end

---@type fun(guiElement: element, state: boolean): boolean Returns true if the element's visibility could be changed, false otherwise. 
function guiSetVisible () end

---@type fun(guiElement: element, width: number, height: number, relative: boolean): boolean Returns true if the gui element's size was set successfully.
function guiSetSize () end

---@type fun(guiElement: element, font: guiFont | userdata): boolean Returns true if the font has been successfully set on the gui element, false otherwise.
function guiSetFont () end

---@type fun(theElement: element, relative: boolean): number, number Returns the GUI element size x and y if the function has been successful.
function guiGetSize () end

---@type fun(guiElement: element, enabled: boolean): boolean If the function succeeds it returns true, if it fails it returns false. 
function guiSetEnabled () end

---@type fun(guiElement: element, property: string, value: string): boolean If the function succeeds it returns true, if it fails it returns false. 
function guiSetProperty () end

---@type fun(enabled: boolean): boolean Returns true if input mode could be changed, false if invalid parameters are passed. 
function guiSetInputEnabled () end

---@type fun(guiElement: element, text: string | number): boolean Returns true if text has been successfully set on the gui element, false otherwise. 
function guiSetText () end

---@type fun(theElement: element, x: number, y: number, relative: boolean): boolean Returns true if the position has been successfully set, false otherwise. 
function guiSetPosition () end

---@type fun(x: number, y: number, width: number, height: number, isLocal: boolean, isTransparent: boolean, isRelative?: boolean, parent?: element): guiBrowser | false Returns a gui-browser element if it was created successfully. Returns also false, if the user disabled remote pages and isLocal was set to false. 
function guiCreateBrowser () end

---@type fun(theBrowser: guiBrowser): browser Returns the Browser element if a correct gui-browser has been passed.
function guiGetBrowser () end

---@type fun(x: number, y: number, width: number, height: number, text: string, relative?: boolean, parent?: element): element Returns an element of the created button if it was successfully created
function guiCreateButton () end

---@type fun(theCheckbox: element): boolean Returns true if the checkbox is selected, false if it is not. 
function guiCheckBoxGetSelected () end

---@type fun(theCheckbox: element, state: boolean): boolean Returns true if the checkbox's selection state was successfully set, false otherwise. 
function guiCheckBoxSetSelected () end

---@type fun(x: number, y: number, width: number, height: number, text: string, selected: boolean, relative?: boolean, parent?: element): element Returns element of the checkbox if it was created succesfully
function guiCreateCheckBox () end

---@type fun(x: number, y: number, width: number, height: number, caption: string, relative?: boolean, parent?: element): element Returns an element of the created combobox if it was successfully created.
function guiCreateComboBox () end

---@type fun(comboBox: element, value: string): integer Returns the item ID if it has been created, false otherwise.
function guiComboBoxAddItem () end

---@type fun(comboBox: element): boolean Returns true if the combobox element is valid and has been cleared successfully, false otherwise. 
function guiComboBoxClear () end

---@type fun(comboBox: element, itemId: integer): string Returns the text of the item if the arguments are right.
function guiComboBoxGetItemText () end

---@type fun(comboBox: element, itemId: integer, text: string): boolean Returns true if the text was set successfully, false otherwise. 
function guiComboBoxSetItemText () end

---@type fun(comboBox: element, itemId: integer): boolean Returns true if the item was removes successfully, false otherwise. 
function guiComboBoxRemoveItem () end

---@type fun(comboBox: element): integer Returns the index of the selected item if the specified combobox is valid and has a selected item, -1 if no item is selected, nil otherwise. 
function guiComboBoxGetSelected () end

---@type fun(comboBox: element, itemIndex: integer): boolean Returns true if the selected item has been changed successfully, false otherwise. 
function guiComboBoxSetSelected () end

---@type fun(x: number, y: number, width: number, height: number, text: string, relative?: boolean, parent?: element): element Returns a gui-edit element of the created edit box if it was successfully created
function guiCreateEdit () end

---@type fun(theElement: element, status: boolean): boolean Returns true if the function is successful, false otherwise. 
function guiEditSetMasked () end

---@type fun(guiEdit: element, length: integer): boolean Returns true if the max length was set successfully, false otherwise. 
function guiEditSetMaxLength () end

---@type fun(editField: element, status: boolean): boolean Returns true if edit field's read-only status was changed successfully, false otherwise. 
function guiEditSetReadOnly () end

---@type fun(theElement: element, index: integer): boolean Returns true if the index was successfully set, false otherwise. 
function guiEditSetCaretIndex () end

---@type fun(theElement: element): integer Returns the caret index on success.
function guiEditGetCaretIndex () end

---@type fun(x: number, y: number, width: number, height: number, relative?: boolean, parent?: element): element Returns an element of the created gridlist if it was successfully created.
function guiCreateGridList () end

---@type fun(gridList: element, title: string, width: number): integer Returns the column id if it was created.
function guiGridListAddColumn () end

---@type fun(gridList: element, ...: integer | string): integer Returns the row id if it has been created
function guiGridListAddRow () end

---@type fun(gridList: element, columnIndex: integer): boolean Returns true if the column was auto-sized, false otherwise. 
function guiGridListAutoSizeColumn () end

---@type fun(gridList: element): boolean Returns true if the grid list element is valid and has been cleared successfully, false otherwise. 
function guiGridListClear () end

---@type fun(gridList: element, rowIndex: integer, columnIndex: integer): unknown Returns the item data of the specified item if succesful.
function guiGridListGetItemData () end

---@type fun(gridList: element, rowIndex: integer, columnIndex: integer): string | false Returns the text of the item if the arguments are right, false otherwise. 
function guiGridListGetItemText () end

---@type fun(gridList: element): integer Returns the number of rows if the function is successful.
function guiGridListGetRowCount () end

---@type fun(gridList: element): integer, integer Returns the row and column indexes of the selected item if the specified grid list is valid and has a selected item, (-1, -1) if no item is selected.
function guiGridListGetSelectedItem () end

---@type fun(gridList: element, rowIndex: integer): integer Returns row id if the row was successfully added.
function guiGridListInsertRowAfter () end

---@type fun(gridList: element, columnIndex: integer): boolean Returns true if the grid list column was successfully removed, false otherwise. 
function guiGridListRemoveColumn () end

---@type fun(gridList: element, rowIndex: integer): boolean Returns true if the grid list row was successfully removed, false otherwise. 
function guiGridListRemoveRow () end

---@type fun(gridList: element, rowIndex: integer, columnIndex: integer, data: any): boolean Returns true if the data was set successfully, false otherwise 
function guiGridListSetItemData () end

---@type fun(gridList: element, rowIndex: integer, columnIndex: integer, text: string, section: boolean, number: boolean): boolean Returns true if the item text was set successfully, false otherwise.
function guiGridListSetItemText () end

---@type fun(guiGridlist: element, horizontalBar: boolean, verticalBar: boolean): boolean Returns true if the scrollbars were successfully set, false otherwise. 
function guiGridListSetScrollBars () end

---@type fun(gridList: element, rowIndex: integer, columnIndex: integer, bReset?: boolean): boolean Returns true if the passed arguments are correct and the item has been selected, false otherwise. 
function guiGridListSetSelectedItem () end

---@see gridSelectionMode
---@type fun(gridlist: element, mode: gridSelectionMode): boolean Returns true if the selection mode was successfully set, false otherwise. 
function guiGridListSetSelectionMode () end

---@type fun(guiGridlist: element, enabled: boolean): boolean Returns true if sorting was successfully toggled, false otherwise.
function guiGridListSetSortingEnabled () end

---@type fun(gridList: element): integer Returns an integer representing the amount of selected options if everything was successful.
function guiGridListGetSelectedCount () end

---@type fun(gridList: element): table Returns a table over the selected items in the grid list.
function guiGridListGetSelectedItems () end

---@type fun(gridList: element, columnIndex: integer, width: number, relative: boolean): boolean Returns true if the gridlist column width was successfully set, false if bad arguments were given. 
function guiGridListSetColumnWidth () end

---@type fun(gridList: element): integer Returns an integer with the amount of columns in the gridlist.
function guiGridListGetColumnCount () end

---@type fun(gridList: element, rowIndex: integer, columnIndex: integer): integer, integer, integer, integer Returns four int values, representing the amount of red, green, blue and alpha if successful.
function guiGridListGetItemColor () end

---@type fun(gridList: element, rowIndex: integer, columnIndex: integer, red: integer, green: integer, blue: integer, alpha?: integer): boolean Returns true if the item color was set successfully, false otherwise. 
function guiGridListSetItemColor () end

---@type fun(guiGridlist: element, columnIndex: integer): string Returns a string containing the column title.
function guiGridListGetColumnTitle () end

---@type fun(guiGridlist: element, columnIndex: integer, title: string): boolean Returns true if the new title was set, or false otherwise. 
function guiGridListSetColumnTitle () end

---@type fun(guiGridlist: element): number Returns a integer between 0 and 100 indicating the horizontal scroll position.
function guiGridListGetHorizontalScrollPosition () end

---@type fun(guiGridlist: element, fPosition: number): boolean Returns true if the horizontal scroll position was set, or false otherwise. 
function guiGridListSetHorizontalScrollPosition () end

---@type fun(guiGridlist: element): number Returns a integer between 0 and 100 indicating the vertical scroll position.
function guiGridListGetVerticalScrollPosition () end

---@type fun(guiGridlist: element, fPosition: number): boolean Returns true if the vertical scroll position was set, or false otherwise.
function guiGridListSetVerticalScrollPosition () end

---@type fun(gridList: element, columnIndex: integer, relative: boolean): number Returns the width of the gridlist column
function guiGridListGetColumnWidth () end

---@type fun(x: number, y: number, width: number, height: number, text: string, relative?: boolean, parent?: element): element Returns a gui-memo element of the created memo if it was successfully created
function guiCreateMemo () end

---@type fun(theMemo: element, status: boolean): boolean Returns true if the status was successfully changed, false otherwise. 
function guiMemoSetReadOnly () end

---@type fun(theMemo: element, index: integer): boolean Returns true if the caret was successfully moved, false otherwise. 
function guiMemoSetCaretIndex () end

---@type fun(theElement: element): integer Returns the caret index on success
function guiMemoGetCaretIndex () end

---@type fun(x: number, y: number, width: number, height: number, relative?: boolean, parent?: element): element Returns element of the progress bar if it was created succesfully, false otherwise. 
function guiCreateProgressBar () end

---@type fun(theProgressbar: element): number Returns a float ranging between 0 and 100. 
function guiProgressBarGetProgress () end

---@type fun(theProgressbar: element, progress: number): boolean Returns true if the progress was set, false otherwise. 
function guiProgressBarSetProgress () end

---@type fun(x: number, y: number, width: number, height: number, text: string, relative?: boolean, parent?: element): element Returns element of the radio button if it was created succesfully
function guiCreateRadioButton () end

---@type fun(guiRadioButton: element): boolean Returns true if the radio button is selected, false if it is not. 
function guiRadioButtonGetSelected () end

---@type fun(guiRadioButton: element, state: boolean): boolean Returns true if the radio button's selection state was successfully set, false otherwise. 
function guiRadioButtonSetSelected () end

---@type fun(x: number, y: number, width: number, height: number, horizontal: boolean, relative: boolean, parent?: element): guiScrollbar:element Returns a gui-scrollbar if it was created successfully.
function guiCreateScrollBar () end

---@type fun(theScrollBar: element): number Returns a float ranging between 0 and 100, representing the amount the scrollbar has been scrolled. 
function guiScrollBarGetScrollPosition () end

---@type fun(theScrollBar: element, amount: number): boolean Returns true if the scroll position was successfully set, false otherwise. 
function guiScrollBarSetScrollPosition () end

---@type fun(x: number, y: number, width: number, height: number, relative?: boolean, parent?: element): element The gui-element if created.
function guiCreateScrollPane () end

---@type fun(horizontalScrollPane: element): number Returns a float ranging between 0 and 100
function guiScrollPaneGetHorizontalScrollPosition () end

---@type fun(verticalScrollPane: element): number Returns a float ranging between 0 and 100.
function guiScrollPaneGetVerticalScrollPosition () end

---@type fun(horizontalScrollPane: element, position: number): boolean Returns true if the position was set, false otherwise. 
function guiScrollPaneSetHorizontalScrollPosition () end

---@type fun(scrollPane: element, horizontal: boolean, vertical: boolean): boolean Returns true if the call was successfully, false otherwise. 
function guiScrollPaneSetScrollBars () end

---@type fun(verticalScrollPane: element, position: number): boolean Returns true if the position was set, false otherwise. 
function guiScrollPaneSetVerticalScrollPosition () end

---@type fun(x: number, y: number, width: number, height: number, path: string, relative: boolean, parent?: element): element Returns element if image was created successfully.
function guiCreateStaticImage () end

---@type fun(theImage: element): integer, integer Returns two integers where first is the width and second the height of the image in pixels.
function guiStaticImageGetNativeSize () end

---@type fun(theElement: element, filename: string): boolean Returns a GUI tab panel element if successful.
function guiStaticImageLoadImage () end

---@type fun(x: number, y: number, width: number, height: number, relative: boolean, parent?: element): element
function guiCreateTabPanel () end

---@type fun(tabPanel: element): element | nil Returns an element of the tab if a tab was selected or nil if no tab was selected. 
function guiGetSelectedTab () end

---@type fun(tabPanel: element, theTab: element): boolean Returns true if the selected tab was changed to a new one successfully, false otherwise.
function guiSetSelectedTab () end

---@type fun(text: string, parent: element): element Returns a tab element if successful.
function guiCreateTab () end

---@type fun(tabToDelete: element, tabPanel: element): boolean Returns true the tab was successfully deleted, false otherwise. 
function guiDeleteTab () end

---@type fun(x: number, y: number, width: number, height: number, text: string, relative: boolean, parent?: element): element Returns an element of the created label if it was successfully created
function guiCreateLabel () end

---@type fun(theLabel: element): number Returns the absolute height of the font currently used in the text label if the function is successful.
function guiLabelGetFontHeight () end

---@type fun(theLabel: element): number Returns the absolute width of the current text inside the text label if the function is successful.
function guiLabelGetTextExtent () end

---@type fun(theElement: element, red: integer, green: integer, blue: integer): boolean Returns true if the the color of the gui label was successfully changed, false otherwise. 
function guiLabelSetColor () end

---@type fun(theLabel: element, align: alignX, wordwrap?: boolean): boolean Returns true on success, false otherwise. 
function guiLabelSetHorizontalAlign () end

---@type fun(theLabel: element, align: alignY): boolean Returns true on success, false otherwise.
function guiLabelSetVerticalAlign () end

---@type fun(theLabel: element): integer, integer, integer Returns a gui window element if it was created successfully.
function guiLabelGetColor () end

---@type fun(x: number, y: number, width: number, height: number, titleBarText: string, relative: boolean): element
function guiCreateWindow () end

---@type fun(theElement: element, status: boolean): boolean Returns true if the function is successful, false otherwise. 
function guiWindowSetMovable () end

---@type fun(theElement: element, status: boolean): boolean Returns true if the function is successful, false otherwise. 
function guiWindowSetSizable () end

---@type fun(theMemo: element): boolean Returns true if the memo is read only, false if the memo isn't read only.
function guiMemoIsReadOnly () end

---@type fun(guiEdit: element): boolean Returns true if the edit box is read-only, false if not.
function guiEditIsReadOnly () end

---@type fun(theMemo: element): number Returns a float ranging between 0 and 100.
function guiMemoGetVerticalScrollPosition () end

---@type fun(theMemo: element, position: number): boolean Returns true if the position was set, false otherwise. 
function guiMemoSetVerticalScrollPosition () end

---@type fun(guiEdit: element): integer Returns the maximum text length on success.
function guiEditGetMaxLength () end

---@type fun(guiEdit: element): boolean Returns true if the edit box is masked, false if not.
function guiEditIsMasked () end

---@type fun(guiWindow: element): boolean Returns true if the window is movable, false if not.
function guiWindowIsMovable () end

---@type fun(guiWindow: element): boolean Returns true if the window is sizable, false if not.
function guiWindowIsSizable () end

---@type fun(guiElement: element): boolean Returns true if the function was successful, false otherwise. 
function guiBlur () end

---@type fun(guiElement: element): boolean Returns true if the function was successful, false otherwise. 
function guiFocus () end

---@type fun(comboBox: element): integer Returns the number of items if the function is successful.
function guiComboBoxGetItemCount () end

---@type fun(comboBox: element): boolean Returns true if combobox is opened, false if combobox is closed.
function guiComboBoxIsOpen () end

---@type fun(comboBox: element, state: boolean): boolean Returns true if is successful, false otherwise. 
function guiComboBoxSetOpen () end

---@see gridSelectionMode
---@type fun(gridlist: element): gridSelectionMode Returns the ID of the current gridlist's selection mode. 
function guiGridListGetSelectionMode () end

---@type fun(guiGridlist: element): boolean Returns true if sorting is enabled, false otherwise. 
function guiGridListIsSortingEnabled () end

