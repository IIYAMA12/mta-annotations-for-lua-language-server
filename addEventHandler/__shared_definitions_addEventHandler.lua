---@diagnostic disable: missing-return
---@diagnostic disable: lowercase-global

---@alias addEventHandlerPriority "high" | "normal" | "low" | string
---@alias addEventHandler_generic fun(eventName: string, attachedTo: element, handlerFunction: function, getPropagated?: boolean, priority?: addEventHandlerPriority): boolean

---@type addEventHandler_generic | addEventHandler_onClientEvent | addEventHandler_onServerEvent
function addEventHandler () end