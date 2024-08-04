---@meta serverTypeConfigs

----------------
-- Base types --
----------------

---@alias account userdata
---@alias textitem userdata
---@alias ban userdata
---@alias acl userdata
---@alias aclgroup userdata
---@alias handle userdata
---@alias textdisplay userdata

---@alias databaseConnection userdata


--------------------------
-- Predefined variables --
--------------------------

---@type userdata
local userData_
client = userData_ -- the client that called the event

-----------
-- Other --
-----------

---@alias resourceStateChange "loaded" | "running" | "starting" | "stopping" | "unloaded"

---@alias changeAbleServerConfigSetting "minclientversion" | "recommendedclientversion" | "password" | "fpslimit" | "bandwidth_reduction" | "player_sync_interval" | "lightweight_sync_interval" | "camera_sync_interval" | "ped_sync_interval" | "unoccupied_vehicle_sync_interval" | "vehicle_contact_sync_radius" | "keysync_mouse_sync_interval" | "keysync_analog_sync_interval" | "bullet_sync"

--[[
    [Wiki server config](https://wiki.multitheftauto.com/wiki/Server_mtaserver.conf)
]]
---@alias serverConfigSetting "servername"|"owner_email_address"|"serverip"|"serverport"|"maxplayers"|"httpserver"|"httpport"|"httpdownloadurl"|"httpmaxconnectionsperclient"|"httpdosthreshold"|"http_dos_exclude"|"allow_gta3_img_mods"|"client_file"|"disableac"|"enablesd"|"minclientversion"|"minclientversion_auto_update"|"recommendedclientversion"|"ase"|"donotbroadcastlan"|"password"|"bandwidth_reduction"|"unoccupied_vehicle_syncer_distance"|"ped_syncer_distance"|"player_sync_interval"|"lightweight_sync_interval"|"camera_sync_interval"|"ped_sync_interval"|"ped_far_sync_interval"|"unoccupied_vehicle_sync_interval"|"keysync_mouse_sync_interval"|"keysync_analog_sync_interval"|"bullet_sync"|"vehicle_contact_sync_radius"|"vehext_percent"|"vehext_ping_limit"|"latency_reduction"|"threadnet"|"idfile"|"logfile"|"authfile"|"dbfile"|"loadstringfile"|"acl"|"scriptdebuglogfile"|"scriptdebugloglevel"|"htmldebuglevel"|"filter_duplicate_log_lines"|"fpslimit"|"voice"|"voice_samplerate"|"voice_quality"|"voice_bitrate"|"backup_path"|"backup_interval"|"backup_copies"|"compact_internal_databases"|"crash_dump_upload"|"fakelag"|"auth_serial_groups"|"auth_serial_http"|"auth_serial_http_ip_exceptions"|"database_credentials_protection"|"player_triggered_event_interval"|"max_player_triggered_events_per_interval"|"module"|"resource"

---@alias glitchNames "quickreload"|"fastmove"|"fastfire"|"crouchbug"|"highcloserangedamage"|"hitanim"|"fastsprint"|"baddrivebyhitbox"|"quickstand"|"kickoutofvehicle_onmodelreplace"
