---@meta guiConfigs
---@diagnostic disable: missing-return
---@diagnostic disable: lowercase-global

--[[
    Credits to the community for all the available syntax and descriptions
]]

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiMoveToBack)
]]
---@type fun(guiElement: element): boolean Returns true if the function was successful, false otherwise.
function guiMoveToBack() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiSetAlpha)
]]
---@type fun(guielement: element, alpha: number): boolean Returns true if the gui element's alpha was successfully changed, false otherwise.
function guiSetAlpha() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiCreateFont)
]]
---@type fun(filepath: string, size?: integer): element | false Returns a GUI font element if successful, false if invalid arguments were passed to the function, or there is insufficient resources available.
function guiCreateFont() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiGetEnabled)
]]
---@type fun(guiElement: element): boolean Returns true if the element is enabled, false otherwise.
function guiGetEnabled() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiGetInputEnabled)
]]
---@type fun(): boolean Returns true if input is focused on GUI, false if it's focused on the game.
function guiGetInputEnabled() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiGetFont)
]]
---@type fun(guiElement: element): string | guiFont, element | nil A string containing the name of the element's current font. The custom GUI font that is used, or nil otherwise.
function guiGetFont() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiGetInputMode)
]]
---@type fun(): inputMode
function guiGetInputMode() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiGetVisible)
]]
---@type fun(guiElement: element): visibility: boolean Returns true if the element is visible, false otherwise.
function guiGetVisible() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiGetScreenSize)
]]
---@type fun(): width: number, height: number This returns two floats representing the player's screen resolution, width and height.
function guiGetScreenSize() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiGetCursorType)
]]
---@type fun(): cursorType
function guiGetCursorType() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiGetPosition)
]]
---@type fun(guiElement: element, relative: boolean): x: number, y: number Returns floats representing the x and y position of the element.
function guiGetPosition() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiGetProperties)
]]
---@type fun(guiElement: element): {[string] : string} If the function succeeds, the return value is a table. Its keys are property names, the corresponding values are the values of the properties (both names and values are always strings).
function guiGetProperties() end

--- [WindowsLookProperties](http://static.cegui.org.uk/static/WindowsLookProperties.html)
---@see CEGUI_property
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiGetProperty)
]]
---@type fun(guiElement: element, property: CEGUI_property): string If the function succeeds, it returns a string with the value of the property.
function guiGetProperty() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiGetText)
]]
---@type fun(guiElement: element): string Returns a string containing the requested element's text.
function guiGetText() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiBringToFront)
]]
---@type fun(guiElement: element): boolean Returns true if the function was successful, false otherwise.
function guiBringToFront() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiSetInputMode)
]]
---@type fun(mode: inputMode): boolean Returns true if input mode could be changed, false if invalid parameters are passed.
function guiSetInputMode() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiGetAlpha)
]]
---@type fun(guiElement: element): number This function returns a positive float in between 0 and 1 of the gui element's current alpha.
function guiGetAlpha() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiSetVisible)
]]
---@type fun(guiElement: element, state: boolean): boolean Returns true if the element's visibility could be changed, false otherwise.
function guiSetVisible() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiSetSize)
]]
---@type fun(guiElement: element, width: number, height: number, relative: boolean): boolean Returns true if the gui element's size was set successfully.
function guiSetSize() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiSetFont)
]]
---@type fun(guiElement: element, font: guiFont | userdata): boolean Returns true if the font has been successfully set on the gui element, false otherwise.
function guiSetFont() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiGetSize)
]]
---@type fun(theElement: element, relative: boolean): number, number Returns the GUI element size x and y if the function has been successful.
function guiGetSize() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiSetEnabled)
]]
---@type fun(guiElement: element, enabled: boolean): boolean If the function succeeds it returns true, if it fails it returns false.
function guiSetEnabled() end

--- [WindowsLookProperties](http://static.cegui.org.uk/static/WindowsLookProperties.html)
---@see CEGUI_property
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiSetProperty)
]]
---@type fun(guiElement: element, property: CEGUI_property, value: string): boolean If the function succeeds it returns true, if it fails it returns false.
function guiSetProperty() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiSetInputEnabled)
]]
---@type fun(enabled: boolean): boolean Returns true if input mode could be changed, false if invalid parameters are passed.
function guiSetInputEnabled() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiSetText)
]]
---@type fun(guiElement: element, text: string | number): boolean Returns true if text has been successfully set on the gui element, false otherwise.
function guiSetText() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiSetPosition)
]]
---@type fun(theElement: element, x: number, y: number, relative: boolean): boolean Returns true if the position has been successfully set, false otherwise.
function guiSetPosition() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiCreateBrowser)
]]
---@type fun(x: number, y: number, width: number, height: number, isLocal: boolean, isTransparent: boolean, isRelative?: boolean, parent?: element): guiBrowser | false Returns a gui-browser element if it was created successfully. Returns also false, if the user disabled remote pages and isLocal was set to false.
function guiCreateBrowser() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiGetBrowser)
]]
---@type fun(theBrowser: guiBrowser): browser Returns the Browser element if a correct gui-browser has been passed.
function guiGetBrowser() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiCreateButton)
]]
---@type fun(x: number, y: number, width: number, height: number, text: string, relative?: boolean, parent?: element): element Returns an element of the created button if it was successfully created
function guiCreateButton() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiCheckBoxGetSelected)
]]
---@type fun(theCheckbox: element): boolean Returns true if the checkbox is selected, false if it is not.
function guiCheckBoxGetSelected() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiCheckBoxSetSelected)
]]
---@type fun(theCheckbox: element, state: boolean): boolean Returns true if the checkbox's selection state was successfully set, false otherwise.
function guiCheckBoxSetSelected() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiCreateCheckBox)
]]
---@type fun(x: number, y: number, width: number, height: number, text: string, selected: boolean, relative?: boolean, parent?: element): element Returns element of the checkbox if it was created succesfully
function guiCreateCheckBox() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiCreateComboBox)
]]
---@type fun(x: number, y: number, width: number, height: number, caption: string, relative?: boolean, parent?: element): element Returns an element of the created combobox if it was successfully created.
function guiCreateComboBox() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiComboBoxAddItem)
]]
---@type fun(comboBox: element, value: string): integer Returns the item ID if it has been created, false otherwise.
function guiComboBoxAddItem() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiComboBoxClear)
]]
---@type fun(comboBox: element): boolean Returns true if the combobox element is valid and has been cleared successfully, false otherwise.
function guiComboBoxClear() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiComboBoxGetItemText)
]]
---@type fun(comboBox: element, itemId: integer): string Returns the text of the item if the arguments are right.
function guiComboBoxGetItemText() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiComboBoxSetItemText)
]]
---@type fun(comboBox: element, itemId: integer, text: string): boolean Returns true if the text was set successfully, false otherwise.
function guiComboBoxSetItemText() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiComboBoxRemoveItem)
]]
---@type fun(comboBox: element, itemId: integer): boolean Returns true if the item was removes successfully, false otherwise.
function guiComboBoxRemoveItem() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiComboBoxGetSelected)
]]
---@type fun(comboBox: element): integer Returns the index of the selected item if the specified combobox is valid and has a selected item, -1 if no item is selected, nil otherwise.
function guiComboBoxGetSelected() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiComboBoxSetSelected)
]]
---@type fun(comboBox: element, itemIndex: integer): boolean Returns true if the selected item has been changed successfully, false otherwise.
function guiComboBoxSetSelected() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiCreateEdit)
]]
---@type fun(x: number, y: number, width: number, height: number, text: string, relative?: boolean, parent?: element): element Returns a gui-edit element of the created edit box if it was successfully created
function guiCreateEdit() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiEditSetMasked)
]]
---@type fun(theElement: element, status: boolean): boolean Returns true if the function is successful, false otherwise.
function guiEditSetMasked() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiEditSetMaxLength)
]]
---@type fun(guiEdit: element, length: integer): boolean Returns true if the max length was set successfully, false otherwise.
function guiEditSetMaxLength() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiEditSetReadOnly)
]]
---@type fun(editField: element, status: boolean): boolean Returns true if edit field's read-only status was changed successfully, false otherwise.
function guiEditSetReadOnly() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiEditSetCaretIndex)
]]
---@type fun(theElement: element, index: integer): boolean Returns true if the index was successfully set, false otherwise.
function guiEditSetCaretIndex() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiEditGetCaretIndex)
]]
---@type fun(theElement: element): integer Returns the caret index on success.
function guiEditGetCaretIndex() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiCreateGridList)
]]
---@type fun(x: number, y: number, width: number, height: number, relative?: boolean, parent?: element): element Returns an element of the created gridlist if it was successfully created.
function guiCreateGridList() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiGridListAddColumn)
]]
---@type fun(gridList: element, title: string, width: number): integer Returns the column id if it was created.
function guiGridListAddColumn() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiGridListAddRow)
]]
---@type fun(gridList: element, ...: integer | string): integer Returns the row id if it has been created
function guiGridListAddRow() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiGridListAutoSizeColumn)
]]
---@type fun(gridList: element, columnIndex: integer): boolean Returns true if the column was auto-sized, false otherwise.
function guiGridListAutoSizeColumn() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiGridListClear)
]]
---@type fun(gridList: element): boolean Returns true if the grid list element is valid and has been cleared successfully, false otherwise.
function guiGridListClear() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiGridListGetItemData)
]]
---@type fun(gridList: element, rowIndex: integer, columnIndex: integer): unknownSyncAble Returns the item data of the specified item if succesful.
function guiGridListGetItemData() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiGridListGetItemText)
]]
---@type fun(gridList: element, rowIndex: integer, columnIndex: integer): string | false Returns the text of the item if the arguments are right, false otherwise.
function guiGridListGetItemText() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiGridListGetRowCount)
]]
---@type fun(gridList: element): integer Returns the number of rows if the function is successful.
function guiGridListGetRowCount() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiGridListGetSelectedItem)
]]
---@type fun(gridList: element): rowIndex: integer, columnIndex: integer Returns the row and column indexes of the selected item if the specified grid list is valid and has a selected item, (-1, -1) if no item is selected.
function guiGridListGetSelectedItem() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiGridListInsertRowAfter)
]]
---@type fun(gridList: element, rowIndex: integer, itemText1?: string|integer, itemText2?: string|integer, itemText3?: string|integer, itemText4?: string|integer, itemText5?: string|integer, itemText6?: string|integer, itemText7?: string|integer, itemText8?: string|integer, itemText9?: string|integer, itemText10?: string|integer, ...): integer Returns row id if the row was successfully added.
function guiGridListInsertRowAfter() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiGridListRemoveColumn)
]]
---@type fun(gridList: element, columnIndex: integer): boolean Returns true if the grid list column was successfully removed, false otherwise.
function guiGridListRemoveColumn() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiGridListRemoveRow)
]]
---@type fun(gridList: element, rowIndex: integer): boolean Returns true if the grid list row was successfully removed, false otherwise.
function guiGridListRemoveRow() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiGridListSetItemData)
]]
---@type fun(gridList: element, rowIndex: integer, columnIndex: integer, data: unknownSyncAble): boolean Returns true if the data was set successfully, false otherwise
function guiGridListSetItemData() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiGridListSetItemText)
]]
---@type fun(gridList: element, rowIndex: integer, columnIndex: integer, text: string, section: boolean, number: boolean): boolean Returns true if the item text was set successfully, false otherwise.
function guiGridListSetItemText() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiGridListSetScrollBars)
]]
---@type fun(guiGridlist: element, horizontalBar: boolean, verticalBar: boolean): boolean Returns true if the scrollbars were successfully set, false otherwise.
function guiGridListSetScrollBars() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiGridListSetSelectedItem)
]]
---@type fun(gridList: element, rowIndex: integer, columnIndex: integer, bReset?: boolean): boolean Returns true if the passed arguments are correct and the item has been selected, false otherwise.
function guiGridListSetSelectedItem() end

---@see gridSelectionMode
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiGridListSetSelectionMode)
]]
---@type fun(gridlist: element, mode: gridSelectionMode): boolean Returns true if the selection mode was successfully set, false otherwise.
function guiGridListSetSelectionMode() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiGridListSetSortingEnabled)
]]
---@type fun(guiGridlist: element, enabled: boolean): boolean Returns true if sorting was successfully toggled, false otherwise.
function guiGridListSetSortingEnabled() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiGridListGetSelectedCount)
]]
---@type fun(gridList: element): integer Returns an integer representing the amount of selected options if everything was successful.
function guiGridListGetSelectedCount() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiGridListGetSelectedItems)
]]
---@type fun(gridList: element): {column: integer, row: integer}[] Returns a table over the selected items in the grid list.
function guiGridListGetSelectedItems() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiGridListSetColumnWidth)
]]
---@type fun(gridList: element, columnIndex: integer, width: number, relative: boolean): boolean Returns true if the gridlist column width was successfully set, false if bad arguments were given.
function guiGridListSetColumnWidth() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiGridListGetColumnCount)
]]
---@type fun(gridList: element): integer Returns an integer with the amount of columns in the gridlist.
function guiGridListGetColumnCount() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiGridListGetItemColor)
]]
---@type fun(gridList: element, rowIndex: integer, columnIndex: integer): integer, integer, integer, integer Returns four int values, representing the amount of red, green, blue and alpha if successful.
function guiGridListGetItemColor() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiGridListSetItemColor)
]]
---@type fun(gridList: element, rowIndex: integer, columnIndex: integer, red: integer, green: integer, blue: integer, alpha?: integer): boolean Returns true if the item color was set successfully, false otherwise.
function guiGridListSetItemColor() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiGridListGetColumnTitle)
]]
---@type fun(guiGridlist: element, columnIndex: integer): string Returns a string containing the column title.
function guiGridListGetColumnTitle() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiGridListSetColumnTitle)
]]
---@type fun(guiGridlist: element, columnIndex: integer, title: string): boolean Returns true if the new title was set, or false otherwise.
function guiGridListSetColumnTitle() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiGridListGetHorizontalScrollPosition)
]]
---@type fun(guiGridlist: element): number Returns a integer between 0 and 100 indicating the horizontal scroll position.
function guiGridListGetHorizontalScrollPosition() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiGridListSetHorizontalScrollPosition)
]]
---@type fun(guiGridlist: element, fPosition: number): boolean Returns true if the horizontal scroll position was set, or false otherwise.
function guiGridListSetHorizontalScrollPosition() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiGridListGetVerticalScrollPosition)
]]
---@type fun(guiGridlist: element): number Returns a integer between 0 and 100 indicating the vertical scroll position.
function guiGridListGetVerticalScrollPosition() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiGridListSetVerticalScrollPosition)
]]
---@type fun(guiGridlist: element, fPosition: number): boolean Returns true if the vertical scroll position was set, or false otherwise.
function guiGridListSetVerticalScrollPosition() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiGridListGetColumnWidth)
]]
---@type fun(gridList: element, columnIndex: integer, relative: boolean): number Returns the width of the gridlist column
function guiGridListGetColumnWidth() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiCreateMemo)
]]
---@type fun(x: number, y: number, width: number, height: number, text: string, relative?: boolean, parent?: element): element Returns a gui-memo element of the created memo if it was successfully created
function guiCreateMemo() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiMemoSetReadOnly)
]]
---@type fun(theMemo: element, status: boolean): boolean Returns true if the status was successfully changed, false otherwise.
function guiMemoSetReadOnly() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiMemoSetCaretIndex)
]]
---@type fun(theMemo: element, index: integer): boolean Returns true if the caret was successfully moved, false otherwise.
function guiMemoSetCaretIndex() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiMemoGetCaretIndex)
]]
---@type fun(theElement: element): integer Returns the caret index on success
function guiMemoGetCaretIndex() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiCreateProgressBar)
]]
---@type fun(x: number, y: number, width: number, height: number, relative?: boolean, parent?: element): element Returns element of the progress bar if it was created succesfully, false otherwise.
function guiCreateProgressBar() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiProgressBarGetProgress)
]]
---@type fun(theProgressbar: element): number Returns a float ranging between 0 and 100.
function guiProgressBarGetProgress() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiProgressBarSetProgress)
]]
---@type fun(theProgressbar: element, progress: number): boolean Returns true if the progress was set, false otherwise.
function guiProgressBarSetProgress() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiCreateRadioButton)
]]
---@type fun(x: number, y: number, width: number, height: number, text: string, relative?: boolean, parent?: element): element Returns element of the radio button if it was created succesfully
function guiCreateRadioButton() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiRadioButtonGetSelected)
]]
---@type fun(guiRadioButton: element): boolean Returns true if the radio button is selected, false if it is not.
function guiRadioButtonGetSelected() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiRadioButtonSetSelected)
]]
---@type fun(guiRadioButton: element, state: boolean): boolean Returns true if the radio button's selection state was successfully set, false otherwise.
function guiRadioButtonSetSelected() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiCreateScrollBar)
]]
---@type fun(x: number, y: number, width: number, height: number, horizontal: boolean, relative: boolean, parent?: element): guiScrollbar:element Returns a gui-scrollbar if it was created successfully.
function guiCreateScrollBar() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiScrollBarGetScrollPosition)
]]
---@type fun(theScrollBar: element): number Returns a float ranging between 0 and 100, representing the amount the scrollbar has been scrolled.
function guiScrollBarGetScrollPosition() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiScrollBarSetScrollPosition)
]]
---@type fun(theScrollBar: element, amount: number): boolean Returns true if the scroll position was successfully set, false otherwise.
function guiScrollBarSetScrollPosition() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiCreateScrollPane)
]]
---@type fun(x: number, y: number, width: number, height: number, relative?: boolean, parent?: element): element The gui-element if created.
function guiCreateScrollPane() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiScrollPaneGetHorizontalScrollPosition)
]]
---@type fun(horizontalScrollPane: element): number Returns a float ranging between 0 and 100
function guiScrollPaneGetHorizontalScrollPosition() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiScrollPaneGetVerticalScrollPosition)
]]
---@type fun(verticalScrollPane: element): number Returns a float ranging between 0 and 100.
function guiScrollPaneGetVerticalScrollPosition() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiScrollPaneSetHorizontalScrollPosition)
]]
---@type fun(horizontalScrollPane: element, position: number): boolean Returns true if the position was set, false otherwise.
function guiScrollPaneSetHorizontalScrollPosition() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiScrollPaneSetScrollBars)
]]
---@type fun(scrollPane: element, horizontal: boolean, vertical: boolean): boolean Returns true if the call was successfully, false otherwise.
function guiScrollPaneSetScrollBars() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiScrollPaneSetVerticalScrollPosition)
]]
---@type fun(verticalScrollPane: element, position: number): boolean Returns true if the position was set, false otherwise.
function guiScrollPaneSetVerticalScrollPosition() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiCreateStaticImage)
]]
---@type fun(x: number, y: number, width: number, height: number, path: string, relative: boolean, parent?: element): element Returns element if image was created successfully.
function guiCreateStaticImage() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiStaticImageGetNativeSize)
]]
---@type fun(theImage: element): integer, integer Returns two integers where first is the width and second the height of the image in pixels.
function guiStaticImageGetNativeSize() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiStaticImageLoadImage)
]]
---@type fun(theElement: element, filename: string): boolean Returns a GUI tab panel element if successful.
function guiStaticImageLoadImage() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiCreateTabPanel)
]]
---@type fun(x: number, y: number, width: number, height: number, relative: boolean, parent?: element): element
function guiCreateTabPanel() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiGetSelectedTab)
]]
---@type fun(tabPanel: element): element | nil Returns an element of the tab if a tab was selected or nil if no tab was selected.
function guiGetSelectedTab() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiSetSelectedTab)
]]
---@type fun(tabPanel: element, theTab: element): boolean Returns true if the selected tab was changed to a new one successfully, false otherwise.
function guiSetSelectedTab() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiCreateTab)
]]
---@type fun(text: string, parent: element): element Returns a tab element if successful.
function guiCreateTab() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiDeleteTab)
]]
---@type fun(tabToDelete: element, tabPanel: element): boolean Returns true the tab was successfully deleted, false otherwise.
function guiDeleteTab() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiCreateLabel)
]]
---@type fun(x: number, y: number, width: number, height: number, text: string, relative: boolean, parent?: element): element Returns an element of the created label if it was successfully created
function guiCreateLabel() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiLabelGetFontHeight)
]]
---@type fun(theLabel: element): number Returns the absolute height of the font currently used in the text label if the function is successful.
function guiLabelGetFontHeight() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiLabelGetTextExtent)
]]
---@type fun(theLabel: element): number Returns the absolute width of the current text inside the text label if the function is successful.
function guiLabelGetTextExtent() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiLabelSetColor)
]]
---@type fun(theElement: element, red: integer, green: integer, blue: integer): boolean Returns true if the the color of the gui label was successfully changed, false otherwise.
function guiLabelSetColor() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiLabelSetHorizontalAlign)
]]
---@type fun(theLabel: element, align: alignX, wordwrap?: boolean): boolean Returns true on success, false otherwise.
function guiLabelSetHorizontalAlign() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiLabelSetVerticalAlign)
]]
---@type fun(theLabel: element, align: alignY): boolean Returns true on success, false otherwise.
function guiLabelSetVerticalAlign() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiLabelGetColor)
]]
---@type fun(theLabel: element): integer, integer, integer Returns a gui window element if it was created successfully.
function guiLabelGetColor() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiCreateWindow)
]]
---@type fun(x: number, y: number, width: number, height: number, titleBarText: string, relative?: boolean): element
function guiCreateWindow() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiWindowSetMovable)
]]
---@type fun(theElement: element, status: boolean): boolean Returns true if the function is successful, false otherwise.
function guiWindowSetMovable() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiWindowSetSizable)
]]
---@type fun(theElement: element, status: boolean): boolean Returns true if the function is successful, false otherwise.
function guiWindowSetSizable() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiMemoIsReadOnly)
]]
---@type fun(theMemo: element): boolean Returns true if the memo is read only, false if the memo isn't read only.
function guiMemoIsReadOnly() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiEditIsReadOnly)
]]
---@type fun(guiEdit: element): boolean Returns true if the edit box is read-only, false if not.
function guiEditIsReadOnly() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiMemoGetVerticalScrollPosition)
]]
---@type fun(theMemo: element): number Returns a float ranging between 0 and 100.
function guiMemoGetVerticalScrollPosition() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiMemoSetVerticalScrollPosition)
]]
---@type fun(theMemo: element, position: number): boolean Returns true if the position was set, false otherwise.
function guiMemoSetVerticalScrollPosition() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiEditGetMaxLength)
]]
---@type fun(guiEdit: element): integer Returns the maximum text length on success.
function guiEditGetMaxLength() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiEditIsMasked)
]]
---@type fun(guiEdit: element): boolean Returns true if the edit box is masked, false if not.
function guiEditIsMasked() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiWindowIsMovable)
]]
---@type fun(guiWindow: element): boolean Returns true if the window is movable, false if not.
function guiWindowIsMovable() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiWindowIsSizable)
]]
---@type fun(guiWindow: element): boolean Returns true if the window is sizable, false if not.
function guiWindowIsSizable() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiBlur)
]]
---@type fun(guiElement: element): boolean Returns true if the function was successful, false otherwise.
function guiBlur() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiFocus)
]]
---@type fun(guiElement: element): boolean Returns true if the function was successful, false otherwise.
function guiFocus() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiComboBoxGetItemCount)
]]
---@type fun(comboBox: element): integer Returns the number of items if the function is successful.
function guiComboBoxGetItemCount() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiComboBoxIsOpen)
]]
---@type fun(comboBox: element): boolean Returns true if combobox is opened, false if combobox is closed.
function guiComboBoxIsOpen() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiComboBoxSetOpen)
]]
---@type fun(comboBox: element, state: boolean): boolean Returns true if is successful, false otherwise.
function guiComboBoxSetOpen() end

---@see gridSelectionMode
--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiGridListGetSelectionMode)
]]
---@type fun(gridlist: element): gridSelectionMode Returns the ID of the current gridlist's selection mode.
function guiGridListGetSelectionMode() end

--[[
[Wiki](https://wiki.multitheftauto.com/wiki/GuiGridListIsSortingEnabled)
]]
---@type fun(guiGridlist: element): boolean Returns true if sorting is enabled, false otherwise.
function guiGridListIsSortingEnabled() end

