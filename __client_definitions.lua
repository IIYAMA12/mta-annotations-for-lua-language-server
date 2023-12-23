---@meta clientConfigs
---@diagnostic disable: missing-return

--[[
    Credits to the community for all the available syntax and descriptions
]]

---@alias soundEffectName "gargle" | "compressor" | "echo" | "i3dl2reverb" | "distortion" | "chorus" | "parameq" | "reverb" | "flanger"

--[[
* 0: BONE_ROOT
* 1: BONE_PELVIS1
* 2: BONE_PELVIS
* 3: BONE_SPINE1
* 4: BONE_UPPERTORSO
* 5: BONE_NECK
* 6: BONE_HEAD2
* 7: BONE_HEAD1
* 8: BONE_HEAD
* 21: BONE_RIGHTUPPERTORSO
* 22: BONE_RIGHTSHOULDER
* 23: BONE_RIGHTELBOW
* 24: BONE_RIGHTWRIST
* 25: BONE_RIGHTHAND
* 26: BONE_RIGHTTHUMB
* 31: BONE_LEFTUPPERTORSO
* 32: BONE_LEFTSHOULDER
* 33: BONE_LEFTELBOW
* 34: BONE_LEFTWRIST
* 35: BONE_LEFTHAND
* 36: BONE_LEFTTHUMB
* 41: BONE_LEFTHIP
* 42: BONE_LEFTKNEE
* 43: BONE_LEFTANKLE
* 44: BONE_LEFTFOOT
* 51: BONE_RIGHTHIP
* 52: BONE_RIGHTKNEE
* 53: BONE_RIGHTANKLE
* 54: BONE_RIGHTFOOT
* 201: BONE_BELLY
* 301: BONE_RIGHTBREAST
* 302: BONE_LEFTBREAST
]]
---@alias boneId 0|1|2|3|4|5|6|7|8|21|22|23|24|25|26|31|32|33|34|35|36|41|42|43|44|51|52|53|54|201|301|302

---@alias objectProperty "mass" | "turn_mass" | "air_resistance" | "elasticity" | "center_of_mass" | "buoyancy"
---@alias goggleEffect "normal" | "nightvision" | "thermalvision"


--[[
| Name                      | ID |
|---------------------------|----|
| BANKSLOT_FRONTEND_GAME    | 0  |
| BANKSLOT_FRONTEND_MENU    | 1  |
| BANKSLOT_COLLISIONS       | 2  |
| BANKSLOT_BULLET_SOUNDS    | 3  |
| BANKSLOT_EXPLOSIONS       | 4  |
| BANKSLOT_WEAPONS          | 5  |
| BANKSLOT_WEATHER_RAIN     | 6  |
| BANKSLOT_STREAM_ENGINE_1  | 7  |
| BANKSLOT_STREAM_ENGINE_2  | 8  |
| BANKSLOT_STREAM_ENGINE_3  | 9  |
| BANKSLOT_STREAM_ENGINE_4  | 10 |
| BANKSLOT_STREAM_ENGINE_5  | 11 |
| BANKSLOT_STREAM_ENGINE_6  | 12 |
| BANKSLOT_STREAM_ENGINE_7  | 13 |
| BANKSLOT_STREAM_ENGINE_8  | 14 |
| BANKSLOT_STREAM_ENGINE_9  | 15 |
| BANKSLOT_STREAM_ENGINE_10 | 16 |
| BANKSLOT_HORNS            | 17 |
| BANKSLOT_HELICOPTER       | 18 |
| BANKSLOT_VEHICLE_EXTRAS   | 19 |
| BANKSLOT_SPEECH_0         | 20 |
| BANKSLOT_SPEECH_1         | 21 |
| BANKSLOT_SPEECH_2         | 22 |
| BANKSLOT_SPEECH_3         | 23 |
| BANKSLOT_SPEECH_4         | 24 |
| BANKSLOT_PLAYER_SPEECH    | 25 |
| BANKSLOT_SCRIPT_SPEECH_0  | 26 |
| BANKSLOT_SCRIPT_SPEECH_1  | 27 |
| BANKSLOT_SCRIPT_SPEECH_2  | 28 |
| BANKSLOT_SCRIPT_SPEECH_3  | 29 |
| BANKSLOT_AMBIENT_RESIDENT | 30 |
| BANKSLOT_DOORS            | 31 |
| BANKSLOT_WATER            | 32 |
| BANKSLOT_33               | 33 |
| BANKSLOT_34               | 34 |
| BANKSLOT_35               | 35 |
| BANKSLOT_36               | 36 |
| BANKSLOT_37               | 37 |
| BANKSLOT_38               | 38 |
| BANKSLOT_39               | 39 |
| BANKSLOT_ENGINE_RESIDENT  | 40 |
| BANKSLOT_FEET_RESIDENT    | 41 |
| BANKSLOT_BULLET_TRAIL     | 42 |
| BANKSLOT_43               | 43 |
| BANKSLOT_44               | 44 |
]]
---@alias worldSoundGroup 0|1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30|31|32|33|34|35|36|37|38|39|40|41|42|43|44

--[[
* 0: shop
* 1: office
* 2: lounge
* 3: bedroom
* 4: kitchen
]]
---@alias roomTypeId 0|1|2|3|4 

---@alias ambientSoundType "gunfire" | "general"
---@alias weaponFlag "disable_model" | "flags" | "instant_reload" | "shoot_if_out_of_range" | "shoot_if_blocked"
---@alias weaponFlag_ "disable_model" | "instant_reload" | "shoot_if_out_of_range" | "shoot_if_blocked" Synax without "flags"
---@alias weaponState "reloading" | "firing" | "ready"
---@alias weaponCreateType "colt 45" | "silenced" | "deagle" | "uzi" | "mp5" | "ak-47" | "m4" | "tec-9" | "rifle" | "sniper" | "minigun"
---@alias cameraMode "player" | "vehicle" | "vehicle_max"

--[[
* 0: Bumper
* 1: Close external
* 2: Middle external
* 3: Far external
* 4: Low external
* 5: Cinematic
]]
---@alias vehicleCameraMode 0 | 1 | 2 | 3 | 4 | 5

--[[
* 1: Close
* 2: Middle
* 3: Far
]]
---@alias pedCameraMode 1 | 2 | 3

---@alias mouseButton "left" | "middle" | "right"

--[[
* 0: Point light, which illuminates surroundings evenly across the light radius.
* 1: Spot light, which illuminates the direction of the light defined by dirX, dirY and dirZ.
* 2: Dark light, which darkens its surrounding elements to full black.
]]
---@alias lightType 0 | 1 | 2

--[[
| ID  |                                            Garage Name (District)                                            |                    XYZ Position                     |
|:---:|:------------------------------------------------------------------------------------------------------------:|:---------------------------------------------------:|
|  0  |                                  "Life's a Beach" Mission Garage (Commerce)                                  |              1643.43, -1520.3, 14.3438              |
|  1  |                                   LSPD Police Impound Garage (not working)                                   |                          -                          |
|  2  |                                 "Los Desperados" Mission Garage (El Corona)                                  |             1877.41, -2096.51, 14.0391              |
|  3  |                                         Eight Ball Autos (El Corona)                                         |              1843.37, -1856.32, 13.875              |
|  4  |                                 "Cesar Vialpando" Mission Garage (El Corona)                                 |                1798.69, -2146.73, 14                |
|  5  |                                          Player Garage (El Corona)                                           |             1698.91, -2088.74, 14.1406              |
|  6  |                                    LS Burglary Garage (Playe del Seville)                                    |              2741.07, -2004.78, 14.875              |
|  7  |                                     LowRider Tuning Garage (Willowfield)                                     |             2644.86, -2039.23, 14.0391              |
|  8  |                                           Pay 'n' Spray (Idlewood)                                           |             2071.48, -1831.42, 14.5625              |
|  9  |                                            Player Garage (Ganton)                                            |             2505.52, -1690.99, 14.3281              |
| 10  |                                             Transfender (Temple)                                             |             1041.35, -1025.93, 32.6719              |
| 11  |                                            Pay 'n' Spray (Temple)                                            |             1024.98, -1029.35, 33.1953              |
| 12  |                                      Pay 'n' Spray (Santa Maria Beach)                                       |              488.28, -1734.7, 12.3906               |
| 13  |                                      Player Garage (Santa Maria Beach)                                       |             322.4141, -1769.0312, 5.25              |
| 14  |                                         Player Garage (Mulholland)*                                          |              1353.48, -626.63, 109.82               |
| 15  |                                        Wheel Archangels (Ocean Flats)                                        |              -2716.35, 217.48, 5.3828               |
| 16  |                                 "T-Bone Mendez" Mission Garage (Ocean Flats)                                 |               -2730.47, 72.32, 5.3516               |
| 17  |                                           Player Garage (Hashbury)                                           |             -2454.12, -123.06, 26.9844              |
| 18  |                                            Transfender (Doherty)                                             |              -1935.86, 239.53, 35.3516              |
| 19  |                                           Pay 'n' Spray (Downtown)                                           |              -1904.53, 277.9, 42.9531               |
| 20  |                                         SF Burglary Garage (Doherty)                                         |              -2102.93, -16.05, 36.4844              |
| 21  |                                           Player Garage (Doherty)                                            |              -2026.91, 129.41, 30.4531              |
| 22  |                                           Mission Garage (Doherty)                                           |              -2038.93, 178.81, 29.9375              |
| 23  |                                    "Ran Fa Li" Mission Garage (Chinatown)                                    |              -2162.03, 654.66, 53.375               |
| 24  |                                     Michelle's Pay 'n' Spray (Downtown)                                      |             -1786.81, 1209.42, 25.8359              |
| 25  |                                        Player Garage (Calton Heights)                                        |              -2105.2, 896.93, 77.4453               |
| 26  |                                   SFPD Police Impound Garage (not working)                                   |                          -                          |
| 27  |                                        Pay 'n' Spray (Juniper Hollow)                                        |             -2425.73, 1027.99, 52.2812              |
| 28  |                                           Player Garage (Paradiso)                                           |              -2696.01, 821.45, 50.8516              |
| 29  |                                   LVPD Police Impound Garage (not working)                                   |                          -                          |
| 30  |                                    Airport Hangar (Las Venturas Airport)                                     |               1586.26, 1222.7, 19.75                |
| 31  |                                         LV Burglary Garage (Pilgrim)                                         |              2609.52, 1438.37, 11.5938              |
| 32  |                                  Pay 'n' Spray (Royal Casino) (not working)                                  |                          -                          |
| 33  |                                           Transfender (Come-A-Lot)                                           |              2386.66, 1043.6, 11.5938               |
| 34  |                                        Player Garage (Rockshore West)                                        |              2449.55, 698.08, 11.6797               |
| 35  | Welding Wedding Bomb-workshop [front] (Redsands East) Welding Wedding Bomb-workshop [back] (Redsands East)   |    2006, 2303.73, 11.3125 2006, 2317.6, 11.3125     |
| 36  |                                        Pay 'n' Spray (Redsands East)                                         |              1968.74, 2162.49, 12.0938              |
| 37  |                                        Player Garage (Redsands West)                                         |              1408.64, 1902.69, 11.6797              |
| 38  |                                         Player Garage (Prickle Pine)                                         |              1278.7, 2529.81, 11.3203               |
| 39  |                                      Player Garage (Whitewood Estates)                                       |              929.55, 2012.06, 11.6797               |
| 40  |                                         Pay 'n' Spray (El Quebrados)                                         |             -1420.55, 2591.16, 57.7422              |
| 41  |                                         Pay 'n' Spray (Fort Carson)                                          |               -100, 1111.41, 21.6406                |
| 42  |                                         Player Garage (Fort Carson)                                          |              -360.77, 1194.26, 20.5938              |
| 43  |                                       Player Garage (Verdant Meadows)                                        |              429.98, 2546.52, 17.3516               |
| 44  |                           "Interdiction" Mission Garage (El Castillo del Diablo)*                            |              -389.59, 2227.91, 42.9219              |
| 45  |              Airport Hangar [right] (Verdant Meadows) Airport Hangar [left] (Verdant Meadows)                | 397.48, 2476.63, 19.5156 412.12, 2476.63, 19.5156   |
| 46  |                                "Puncture Wounds" Mission Garage (Angel Pine)*                                |             -2113.04, -2460.62, 30.9141             |
| 47  |                                          Pay 'n' Spray (Dillimore)                                           |              720.02, -462.52, 16.8594               |
| 48  |                                        Player Garage (Palomino Creek)                                        |              2231.24, 168.73, 27.7734               |
| 49  |                                          Player Garage (Dillimore)                                           |              786.01, -492.87, 17.6328               |
]]
---@alias garageId 0|1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30|31|32|33|34|35|36|37|38|39|40|41|42|43|44|45|46|47|48|49

---@alias chatBoxLayoutScale "chat_scale"
---@alias chatBoxLayoutColor "chat_color"|"chat_text_color"|"chat_input_color"|"chat_input_prefix_color"|"chat_input_text_color"
---@alias chatBoxLayoutCEGUI "chat_use_cegui"
---@alias chatBoxLayoutOther "chat_font"|"chat_lines"|"chat_position_offset_x"|"chat_position_offset_y"|"chat_position_horizontal"|"chat_position_vertical"|"chat_text_alignment"|"chat_width"|"chat_css_style_text"|"chat_css_style_background"|"chat_line_life"|"chat_line_fade_out"|"text_scale"|"chat_text_outline"

--[[
* `chat_font` - the chatbox font
* `chat_lines` - how many lines the chatbox has
* `chat_color` - the background color of the chatbox
* `chat_text_color` - the chatbox text color
* `chat_input_color` - the background color of the chatbox input
* `chat_input_prefix_color` - the color of the input prefix text
* `chat_input_text_color` - the color of the text in the chatbox input
* `chat_scale` - the scale of the text in the chatbox
* `chat_position_offset_x` - the x position offset setting
* `chat_position_offset_y` - the y position offset setting
* `chat_position_horizontal` - the horizontal alignment setting
* `chat_position_vertical` - the vertical alignment setting
* `chat_text_alignment` - the text alignment setting
* `chat_width` - the scale of the background width
* `chat_css_style_text` - whether text fades out over time
* `chat_css_style_background` - whether the background fades out over time
* `chat_line_life` - how long it takes for text to start fading out
* `chat_line_fade_out` - how long takes for text to fade out
* `chat_use_cegui` - whether CEGUI is used to render the chatbox
* `text_scale` - text scale
* `chat_text_outline` - whether text black/white outline is used
]]
---@alias chatBoxLayout chatBoxLayoutScale | chatBoxLayoutColor | chatBoxLayoutCEGUI | chatBoxLayoutOther

---@alias chatBoxLayoutAsTable { chat_color: { [1]: integer, [2]: integer, [3]: integer, [4]: integer }, chat_css_style_background: integer, chat_css_style_text : integer, chat_font: integer, chat_input_color:  { [1]: integer, [2]: integer, [3]: integer, [4]: integer }, chat_input_prefix_color: { [1]: integer, [2]: integer, [3]: integer, [4]: integer }, chat_input_text_color: { [1]: integer, [2]: integer, [3]: integer, [4]: integer }, chat_line_fade_out: integer, chat_line_life: integer, chat_lines: integer, chat_position_horizontal: number, chat_position_offset_x: number, chat_position_offset_y: number, chat_position_vertical: number, chat_scale: { [1]: number, [2]: number }, chat_text_alignment: number, chat_text_color: { [1]: integer, [2]: integer, [3]: integer, [4]: integer }, chat_text_outline: number, chat_use_cegui: false, chat_width: number, text_scale: number }

---@alias hudComponent "ammo" | "area_name" | "armour" | "breath" | "clock" | "health" | "money" | "radar" | "vehicle_name" | "weapon" | "radio" | "wanted" | "crosshair"

--[[
| ID  |                                               Name/Description                                               |
|:---:|:------------------------------------------------------------------------------------------------------------:|
| 16  |                                                   Grenade                                                    |
| 17  |                                               Tear Gas Grenade                                               |
| 18  |                                                   Molotov                                                    |
| 19  |                                               Rocket (simple)                                                |
| 20  |                                            Rocket (heat seeking)                                             |
| 21  |                                                   Air Bomb                                                   |
| 39  |                                                Satchel Charge                                                |
| 58  |                                                 Hydra flare                                                  |
]]
---@alias projectileId 16 | 17 | 18 | 19 | 20 | 21 | 39 | 58

--[[
|          Name          |                                Description                                 |
|:----------------------:|:--------------------------------------------------------------------------:|
|       blood_heli       |                              bloody explosion                              |
|       boat_prop        |                                   a surf                                   |
|        camflash        |                                small flare                                 |
|      carwashspray      |                           steam, as on a carwash                           |
|         cement         |                                   cement                                   |
|       cloudfast        |                                fast clouds                                 |
|       coke_puff        |                               puff of a coke                               |
|       coke_trail       |                              a pouring water                               |
|    cigarette_smoke     |                          a smoke from a cigarette                          |
|    explosion_barrel    |                      explosion and splinters of a box                      |
|    explosion_crate     |                  explosion and splinters of the large box                  |
|     explosion_door     |                            a smoke with sparks                             |
|         exhale         |                               a small smoke                                |
|   explosion_fuel_car   |                       explosion, as from the machine                       |
|    explosion_large     |                            the large explosion                             |
|    explosion_medium    |                             average explosion                              |
|   explosion_molotov    |                   explosion, as from a molotov cocktail                    |
|    explosion_small     |                              small explosion                               |
|     explosion_tiny     |                            very small explosion                            |
|      extinguisher      |                       foam of the fire extinguisher                        |
|         flame          |                                 small fire                                 |
|          fire          |                                    fire                                    |
|        fire_med        |                                average fire                                |
|       fire_large       |                                 large fire                                 |
|      flamethrower      |                          fire of the flamethrower                          |
|       fire_bike        |                     fire, as from a burning motorcycle                     |
|        fire_car        |                     fire, as from the burning machine                      |
|        gunflash        |                    as the bullet from a trunk takes off                    |
|        gunsmoke        |                             a smoke from a gun                             |
|        insects         |                                  insects                                   |
|       heli_dust        |                       a dust, as from the helicopter                       |
|        jetpack         |                              a jetpacks fire                               |
|       jetthrust        |      fire from the muffler of the machine, as during use of nitrogen       |
|         nitro          |                                   nitro                                    |
|     molotov_flame      |                        fire from a Molotov Cocktail                        |
|      overheat_car      |                           smoke from damaged car                           |
| overheat_car_electric  |                          wrecked electro-machine                           |
|       prt_blood        |              spark? maybe meant to be a mini red blood splash              |
|     prt_boatsplash     |                                    foam                                    |
|       prt_bubble       |                                   bubble                                   |
|     prt_cardebris      |                            splinters from a box                            |
|   prt_collisionsmoke   |                            a dense white smoke                             |
|       prt_glass        |                              a crashing glass                              |
|      prt_gunshell      |                                   shells                                   |
|        prt_sand        |                         sand, which was scattered                          |
|       prt_sand2        |               there is less sand, than in previous animation               |
|  prt_smokeII_3_expand  |                                a grey smoke                                |
|     prt_smoke_huge     |                        there is a lot of grey smoke                        |
|       prt_spark        |                                 of a spark                                 |
|      prt_spark_2       |                              the large sparks                              |
|       prt_splash       |                                   burst                                    |
|        prt_wake        |                                   a wave                                   |
|    prt_watersplash     |                                   sparks                                   |
|     prt_wheeldirt      |                       sparks from wheels of the car                        |
|       petrolcan        |                                   a jet                                    |
|          puke          |                                   belch                                    |
|       riot_smoke       |                          there is a lot of smoke                           |
|        spraycan        |                                   spray                                    |
|       smoke30lit       |                                  a smoke                                   |
|        smoke30m        |                                a rich smoke                                |
|       smoke50lit       |                             more richer smoke                              |
|       shootlight       |      a light being shot out (used for searchlights), sparks and glass      |
|      smoke_flare       | a light being shot out, sparks and glass, it makes a good firework effect  |
|       tank_fire        |                            a shot from the tank                            |
|        teargas         |                          gas, as from gas grenade                          |
|       teargasAD        |                       gas, as from small gas grenade                       |
|      tree_hit_fir      |                                leaf falling                                |
|     tree_hit_palm      |                        falling of pair large leafs                         |
|          vent          |                         slowly dissipating a smoke                         |
|         vent2          |                            practically too most                            |
|     water_hydrant      |                          the large flow of water                           |
|     water_ripples      |                              circles on water                              |
|      water_speed       |                        the large sparks from water                         |
|      water_splash      |                          small sparks from water                           |
|    water_splash_big    |                               average sparks                               |
|    water_splsh_sml     |                 sparks, only them it is not visible almost                 |
|       water_swim       |                         small sparks at navigation                         |
|     waterfall_end      |                           there is a lot of pair                           |
|     water_fnt_tme      |                          the large flow of water                           |
|     water_fountain     |                            water of a fountain                             |
|        wallbust        |                          a disappearing heap pair                          |
|    WS_factorysmoke     |                                   smoke                                    |
]]
---@alias effectName "blood_heli"|"boat_prop"|"camflash"|"carwashspray"|"cement"|"cloudfast"|"coke_puff"|"coke_trail"|"cigarette_smoke"|"explosion_barrel"|"explosion_crate"|"explosion_door"|"exhale"|"explosion_fuel_car"|"explosion_large"|"explosion_medium"|"explosion_molotov"|"explosion_small"|"explosion_tiny"|"extinguisher"|"flame"|"fire"|"fire_med"|"fire_large"|"flamethrower"|"fire_bike"|"fire_car"|"gunflash"|"gunsmoke"|"insects"|"heli_dust"|"jetpack"|"jetthrust"|"nitro"|"molotov_flame"|"overheat_car"|"overheat_car_electric"|"prt_blood"|"prt_boatsplash"|"prt_bubble"|"prt_cardebris"|"prt_collisionsmoke"|"prt_glass"|"prt_gunshell"|"prt_sand"|"prt_sand2"|"prt_smokeII_3_expand"|"prt_smoke_huge"|"prt_spark"|"prt_spark_2"|"prt_splash"|"prt_wake"|"prt_watersplash"|"prt_wheeldirt"|"petrolcan"|"puke"|"riot_smoke"|"spraycan"|"smoke30lit"|"smoke30m"|"smoke50lit"|"shootlight"|"smoke_flare"|"tank_fire"|"teargas"|"teargasAD"|"tree_hit_fir"|"tree_hit_palm"|"vent"|"vent2"|"water_hydrant"|"water_ripples"|"water_speed"|"water_splash"|"water_splash_big"|"water_splsh_sml"|"water_swim"|"waterfall_end"|"water_fnt_tme"|"water_fountain"|"wallbust"|"WS_factorysmoke"

---@type fun(shouldFlash: boolean, count?: integer): boolean Default count: 10 Returns false if the window is already in focus or the client has disabled this feature.
function setWindowFlashing () end

---@type fun(webBrowser: browser): boolean Returns true if the browser can navigate back
function canBrowserNavigateBack () end

---@type fun(webBrowser: browser): boolean
function navigateBrowserBack () end

---@type fun(webBrowser: browser): boolean
function navigateBrowserForward () end

---@type fun(webBrowser: browser): boolean
function reloadBrowserPage () end

---@type fun(webBrowser: browser, width: number, height: number): boolean
function resizeBrowser () end

---@type fun(notificationText: string, iconType?: string, useSound?: boolean): boolean
function createTrayNotification () end

---@type fun(): boolean
function isTrayNotificationEnabled () end

---@type fun(propertyName: worldSpecialProperty, enabled: boolean): boolean
function setWorldSpecialPropertyEnabled () end

---@type fun(sound: element): table
function getSoundEffects () end

---@type fun(): integer
function getRadioChannel () end

---@type fun(theSound: element): integer, integer
function getSoundLevelData () end

---@type fun(): boolean
function isPlayerMapVisible () end

---@type fun(sound: element): table
function getSoundMetaTags () end

---@type fun(creator: element, weaponType: integer, posX?: number, posY?: number, posZ?: number, force?: number, target?: element, rotX?: number, rotY?: number, rotZ?: number, velX?: number, velY?: number, velZ?: number, model?: integer): projectile
function createProjectile () end

---@type fun(sound: element, iSamples: integer, iBands?: integer): table
function getSoundFFTData () end

---@type fun(sound: element): integer
function getSoundBPM () end

---@type fun(sound: element): integer
function getSoundMaxDistance () end

---@type fun(): number, number, number, number, number
function getCursorPosition () end

---@type fun(theSound: element): number
function getSoundLength () end

---@type fun(audioContainer: string): boolean
function getSFXStatus () end

---@type fun(id: integer): string
function getRadioChannelName () end

---@type fun(sound: element, iSamples: integer): table
function getSoundWaveData () end

---@type fun(theSound: element): number
function getSoundSpeed () end

---@type fun(theSound: element): boolean
function isSoundPaused () end

---@type fun(theSound: element): number
function getSoundVolume () end

---@type fun(soundPath: string, looped?: boolean, throttled?: boolean): element
function playSound () end

---@type fun(theSound: element): number
function getSoundPan () end

---@type fun(webBrowser: browser, jsCode: string): boolean
function executeBrowserJavascript () end

---@type fun(sound: element): number, number, number, boolean
function getSoundProperties () end

---@type fun(webBrowser: browser): boolean
function focusBrowser () end

---@type fun(): element
function getCamera () end

---@type fun(theElement: element): number
function getElementDistanceFromCentreOfMassToBaseOfModel () end

---@type fun(): boolean
function isPedTargetingMarkerEnabled () end

---@type fun(theSound: element, speed: number): boolean
function setSoundSpeed () end

---@type fun(soundPath: string, x: number, y: number, z: number, looped?: boolean): element
function playSound3D () end

---@type fun(theSound: element): boolean
function isSoundPanningEnabled () end

---@type fun(sound: element, distance: integer): boolean
function setSoundMaxDistance () end

---@type fun(sound: element): integer
function getSoundMinDistance () end

---@type fun(containerName: string, bankId: integer, soundId: integer, looped?: boolean): element
function playSFX () end

---@type fun(theSound: element): number
function getSoundPosition () end

---@type fun(containerName: string, bankId: integer, soundId: integer, x: number, y: number, z: number, looped?: boolean): element
function playSFX3D () end

---@type fun(sound: element, enable: boolean): boolean
function setSoundPanningEnabled () end

---@type fun(theSound: element, pos: number): boolean
function setSoundPosition () end

---@type fun(theSound: element, paused: boolean): boolean
function setSoundPaused () end

---@type fun(theSound: element): boolean
function stopSound () end

---@type fun(sound: element, distance: integer): boolean
function setSoundMinDistance () end

---@type fun(theSound: element, pan: number): boolean
function setSoundPan () end

---@type fun(posX: number, posY: number, posZ: number, dirX: number, dirY: number, dirZ: number, smokeSize?: integer, sparkCount?: integer, smokeIntensity?: number): boolean
function fxAddBulletImpact () end

---@type fun(sound: element, effectName: string, bEnable: boolean): boolean
function setSoundEffectEnabled () end

---@type fun(posX: number, posY: number, posZ: number, colorR?: integer, colorG?: integer, colorB?: integer, colorA?: integer, scale?: number, count?: integer): boolean
function fxAddDebris () end

--[[
`volume`: A floating point number representing the desired volume level. Range is from 0.0 to 1.0. This can go above 1.0 for amplification.
]]
---@type fun(theSound: element, volume: number): boolean Returns true if the sound element volume was successfully changed
function setSoundVolume () end

---@type fun(posX: number, posY: number, posZ: number, dirX: number, dirY: number, dirZ: number): boolean Returns a true if the operation was successful
function fxAddTankFire () end

---@type fun(posX: number, posY: number, posZ: number): boolean Returns a true if the operation was successful
function fxAddFootSplash () end

---@type fun(posX: number, posY: number, posZ: number): boolean Returns a true if the operation was successful
function fxAddBulletSplash () end

---@type fun(sound: element, fSampleRate: number, fTempo: number, fPitch: number, bReverse?: boolean): boolean Returns true if the properties sucessfully set
function setSoundProperties () end

--[[
* `force`: speed factor: the higher this value, the faster and further the sparks fly.
* `count`: the number of effects to create.
* `acrossLineX`, `acrossLineY`, `acrossLineZ`: a vector starting at the pos coordinates. If specified, the sparks will be created along a line going from pos to pos - acrossLine. If not specified, all sparks originate from the point at pos.
* `blur`: if false, creates standard bullet impact-like sparks. If true, adds motion blur to the sparks.
* `spread`: determines how strongly the particles deviate from each other. With low values the particles will stay quite close together, high values will make them fly in all directions. Also affects their speed.
* `life`: the higher this value, the longer the sparks survive before they disappear.
]]
---@type fun(posX: number, posY: number, posZ: number, dirX: number, dirY: number, dirZ: number, force?: number, count?: integer, acrossLineX?: number, acrossLineY?: number, acrossLineZ?: number, blur?: boolean, spread?: number, life?: number): boolean Returns a true if the operation was successful
function fxAddSparks () end

--[[
If the player's map is showing, it returns four integers: minX, minY, maxX, maxY. These are absolute position coordinates of where the player's map is drawn on the screen.
* `min_x`, `min_y` represent the world coordinates -3000, 3000 (upper-left corner of the world map).
* `max_x`, `max_y` represent the world coordinates 3000, -3000 (lower-right corner of the world map).
Negative values may be returned if these coordinates are off screen.  
]]
--[[
    If the map is not showing, a false boolean value is returned.
]]
---@type (fun(): min_x: integer, min_y: integer, max_x: integer, max_y: integer) | (fun(): false)
function getPlayerMapBoundingBox () end

---@type fun(theElement: element): boolean Returns true if the passed element is local
function isElementLocal () end

--[[
    Accepted elements are peds and vehicles.
]]
---@type fun(theElement: element): boolean Returns true if the passed element is synced by the local player
function isElementSyncer () end

---@type fun(posX: number, posY: number, posZ: number, dirX: number, dirY: number, dirZ: number): boolean Returns a true if the operation was successful
function fxAddTyreBurst () end

---@type fun(cursorX: integer, cursorY: integer): boolean Returns true if the position has been successfully set
function setCursorPosition () end

---@type fun(posX: number, posY: number, posZ: number): boolean Returns a true if the operation was successful
function fxAddWaterHydrant () end

---@type fun(theEffect: effect): density:number Return the density of an effect
function getEffectDensity () end

---@type fun(posX: number, posY: number, posZ: number, colorR?: integer, colorG?: integer, colorB?: integer, colorA?: integer, scale?: number, count?: integer): boolean Returns a true if the operation was successful
function fxAddGlass () end

---@type (fun(theElement: element): false) | (fun(theElement: element): min_x: number, min_y: number, min_z: number, max_x: number, max_y: number, max_z: number) Returns min x, min y, min z, max x, max y, max z if the passed element is valid and streamed in, false otherwise.
function getElementBoundingBox () end

---@type fun(width: integer, height: integer, isLocal: boolean, transparent?: boolean): texture | false Returns a texture of the browser if it was created successfully, false otherwise. Returns also false, if the user disabled remote pages and isLocal was set to false. 
function createBrowser () end

--[[
* `count`: the number of flying droplets to create.
* `brightness`: the brightness. Ranges from 0 (almost black) to 1 (normal color).
]]
---@type fun(posX: number, posY: number, posZ: number, dirX: number, dirY: number, dirZ: number, count?: integer, brightness?: number): boolean Returns a true if the operation was successful
function fxAddWood () end

---@type fun(posX: number, posY: number, posZ: number, dirX: number, dirY: number, dirZ: number, includeSparks?: boolean): boolean Returns a true if the operation was successful
function fxAddGunshot () end

--[[
* `count`: the number of flying droplets to create.
* `brightness`: the brightness. Ranges from 0 (almost black) to 1 (normal color).
]]
---@type fun(posX: number, posY: number, posZ: number, dirX: number, dirY: number, dirZ: number, count?: integer, brightness?: number): boolean
function fxAddBlood () end

---@type fun(posX: number, posY: number, posZ: number): boolean Returns a true if the operation was successful
function fxAddWaterSplash () end

---@type fun(x: number, y: number, z: number, size?: number): boolean Returns true if successful, false if bad arguments were passed or the limit of active fires was reached. There can be a maximum of 60 active fires. 
function createFire () end

---@type fun(posX: number, posY: number, posZ: number, dirX: number, dirY: number, dirZ: number): boolean Returns a true if the operation was successful
function fxAddPunchImpact () end

---@type fun(theEffect: effect, speed: number): boolean Returns true if the effect speed was succesfuly changed
function setEffectSpeed () end

--[[
    `drawDistance`: A floating point number between 1 and 8191 which represents the draw distance of the effect, or 0 to use the default draw distance.
]]
---@see effectName for definitions
---@type fun(name: effectName, x: number, y: number, z: number, rX?: number, rY?: number, rZ?: number, drawDistance?: number, soundEnabled?: boolean): effect
function createEffect () end

---@type fun(theObject: object): number Returns A float representing the mass of the object. -1 if object was never streamed in.
function getObjectMass () end

---@type fun(x: number, y: number, z: number): z:number Returns a float with the highest ground-level Z coord if parameters are valid, 0 if the point you tried to test is outside the loaded world map
function getGroundPosition () end

--[[
* Rockets and Grenades will explode when it hits 0
* Teargas may be a duration timer
* Satchels unknown
* Molotov will explode with search ground level when it hits 0
]]
---@type fun(projectile: projectile, timeToDetonate: integer): boolean Returns true on success
function setProjectileCounter () end

---@type fun(garageId: garageId): western_x_position:number, eastern_x_position:number, southern_y_position:number, northern_y_position: number
function getGarageBoundingBox () end

--[[
Note <time datetime="2023-12-23">2023-12-23</time>: You can only use this function with the element types listed below.
* Player
* Ped
* Vehicle
* Object
* Weapon
]]
---@type fun(theElement: element, withElement: element, enabled: boolean): boolean Returns true if the collisions were set succesfully
function setElementCollidableWith () end

---@type fun(theElement: element): radius:number Returns a float containing the radius if the element is valid
function getElementRadius () end

---@type fun(thePlayer: element, enabled: boolean): boolean Returns true if changing the ped's bloody feet status worked. 
function setPedFootBloodEnabled () end

---@type fun(theElement: element): boolean Returns true if the passed element is currently streamed in, false if it is virtualized
function isElementStreamedIn () end

---@type fun(theEffect: effect, density: number): boolean Returns true if the density was succesfully changed
function setEffectDensity () end

---@type fun(theEffect: effect): speed:number Returns float containing the effect's speed
function getEffectSpeed () end

---@type fun(theElement: element): boolean Returns true if the specified element is frozen waiting for collisions of custom map objects to load. Returns false if it's not or if the specified element is invalid. 
function isElementWaitingForGroundToLoad () end

---@type fun(event: string, theElement: element, arguments...): boolean Returns true if the event trigger has been sent, false if invalid arguments were specified or a client side element was a parameter. 
function triggerServerEvent () end

---@type fun(theLight: light, radius: number): boolean Returns true if the function was successful
function setLightRadius () end

---@type fun(theElement: element): boolean Returns true if the passed element is streamable like normal, false if this element must always be streamed in. 
function isElementStreamable () end

--- Note: You can also use the predefined variable localPlayer <br>
---@type fun(): player Returns the local player element. 
function getLocalPlayer () end

--[[
Note <time datetime="2023-12-23">2023-12-23</time>: You can only use this function with the element types listed below.
* Player
* Ped
* Vehicle
* Object
* Weapon
]]
---@type fun(theElement: element, withElement: element): boolean Returns true if the elements collide with each other
function isElementCollidableWith () end

---@type fun(theSearchLight: searchlight): x:number, y:number, z:number This function will return three float values, which are the three coordinates of searchlight's end position
function getSearchLightEndPosition () end

---@type fun(control: controlName, state?: number, forceOverrideNextFrame?: boolean): boolean Returns true if the control state was successfully set
function setAnalogControlState () end

---@type fun(theSearchLight: searchlight): radius:number
function getSearchLightEndRadius () end

--[[
    Returns the element which is the projectile's target if the projectile is valid and can have a target (like a heat-seeking rocket), false otherwise.
    If the projectile is a satchel charge, returns the element at which it is glued to (or nil if it isn't glued to any). 
]]
---@type fun(theProjectile: projectile): target: element
function getProjectileTarget () end

---@type fun(theObject: object, respawn: boolean): boolean Returns true when the it was changed successfully.
function toggleObjectRespawn () end

---@type (fun(event: string, arguments...): boolean) | (fun(event: string, bandwidth: integer, persist: boolean, arguments...): boolean) Returns true if the event trigger has been sent
function triggerLatentServerEvent () end

---@type fun(theElement: element, streamable: boolean): boolean Returns whether the element could be set to be streamable.
function setElementStreamable () end

---@type fun(theObject: object, mass: number): boolean Returns true if the new mass value has been.
function setObjectMass () end

---@type fun(theElement: element): boolean Returns true if element is on screen
function isElementOnScreen () end

---@type fun(theSearchLight: searchlight, startX: number, startY: number, startZ: number): true If every argument is correct, this function returns true.
function setSearchLightStartPosition () end

---@see projectile for definitions
---@type fun(theProjectile: projectile): projectileId Returns an integer over the type of the projectile.
function getProjectileType () end

---@type fun(component: hudComponent): boolean Returns true if the component is visable
function isPlayerHudComponentVisible () end

---@type fun(roomId: roomTypeId): boolean Returns true if interior furniture is enabled
function getInteriorFurnitureEnabled () end

---@type fun(theLight: light, x: number, y: number, z: number): boolean Returns true if the function was successful
function setLightDirection () end

---@type fun(): boolean Returns true if the birds are enabled
function getBirdsEnabled () end

---@type fun(): boolean Returns true if music is playing
function getInteriorSoundsEnabled () end

---@see garageId for definitions
---@type fun(garageId: garageId): x:number, y:number, z:number Returns three floats indicating the position of the garage, x, y and z respectively
function getGaragePosition () end

---@see chatBoxLayout for definitions
--[[
Returns
* 4 numbers if the CVar contains "color"
* 2 numbers if chat_scale was entered
* boolean if CVar is "chat_use_cegui"
* 1 number if any other CVar was specified
* a table of all CVar values, if CVar was not specified
* false if an invalid CVar was specified
]]
---@type (fun(): chatBoxLayoutAsTable) | (fun(CVar: chatBoxLayoutScale): x:integer, y:integer) | (fun(CVar: chatBoxLayoutColor): r:integer, g:integer, b:integer, a:integer) | (fun(CVar: chatBoxLayoutOther): number)  | (fun(CVar: chatBoxLayoutCEGUI): boolean) 
function getChatboxLayout () end

---@type fun(x: number, y: number, z: number, duration: integer): boolean Returns true if the function was successful.
function createSWATRope () end

---@type fun(garageId: garageId): x:number, y:number, z:number Returns three floats indicating the size of the garage
function getGarageSize () end

---@type fun(commandControl: string | controlName): {[keyName]: "down" | "up"} | false If one or more keys are bound to the specified control or console command, a table is returned indexed by the names of the keys and containing key states as values. If no keys are bound or an invalid name was passed, returns false. 
function getBoundKeys () end

---@type fun(keyName: keyName): boolean Returns true if the specified key is pressed
function getKeyState () end

---@type fun(theLight: light, r: number, g: number, b: number): boolean Returns true if the function was successful.
function setLightColor () end

---@type fun(lightType: lightType, posX: number, posY: number, posZ: number, radius?: number, r?: integer, g?: integer, b?: integer, dirX?: number, dirY?: number, dirZ?: number, createsShadow?: boolean): light Returns the light element if creation was successful
function createLight () end

---@type fun(): boolean Returns true if the chatbox is receiving input
function isChatBoxInputActive () end

---@type fun(theProjectile: projectile): element Returns the element which created the projectile if successful
function getProjectileCreator () end

---@type fun(enabled: boolean): true
function setDebugViewActive () end

---@type fun(theLight: light): lightType Returns an integer containing the type of the specified light.
function getLightType () end

---@type fun(theLight: light): x:number, y:number, z:number Returns three ints corresponding to the x, y and z coordinates (respectively) of the light direction
function getLightDirection () end

---@type fun(theLight: light): radius:number Returns a float containing the radius of the specified light.
function getLightRadius () end

---@type fun(theLight: light): r:integer, g:integer, b:integer Returns three ints corresponding to the amount of red, green and blue (respectively) of the light
function getLightColor () end

--[[
Returns true if the focus is on any the MTA window

This includes:
* Chatbox input
* Console window
* Main menu
* Transferbox
]]
---@type fun(): boolean 
function isMTAWindowActive () end

---@type fun(theSearchLight: searchlight, endX: number, endY: number, endZ: number): boolean If every argument is correct, this function returns true.
function setSearchLightEndPosition () end

---@type fun(theSearchLight: searchlight): radius:number This function will return one float, which is the searchlight's start radius.
function getSearchLightStartRadius () end

---@type fun(theSearchlight: searchlight, startRadius: number): boolean If every argument is correct, this function returns true.
function setSearchLightStartRadius () end

---@type fun(): boolean Returns true if the console is visible
function isConsoleActive () end

---@type fun(): boolean Returns true if the mainmenu is visible
function isMainMenuActive () end

---@type fun(startX: number, startY: number, startZ: number, endX: number, endY: number, endZ: number, startRadius: number, endRadius: number, renderSpot?: boolean): searchlight If every argument is correct and the limit of 1000 searchlights has not been reached, this function returns a searchlight element.
function createSearchLight () end

---@type fun(): boolean Returns true if the debug view is visible
function isDebugViewActive () end

---@type fun(theSearchlight: searchlight, endRadius: number): boolean If every argument is correct, this function returns true.
function setSearchLightEndRadius () end

--[[
Returns the the time in milliseconds to detonation which depending on the projectile type will do different things:

* Grenades will explode when it hits 0
* Teargas may be a duration timer
* Both types of rockets will explode when it hits 0
* Satchels unknown
]]
---@type fun(projectile: projectile): integer
function getProjectileCounter () end

---@type fun(theProjectile: projectile): number This function returns the force of the specified projectile. 
function getProjectileForce () end

---@type fun(theSearchLight: searchlight): x:number, y: number, z:number Return three float values, which are the three coordinates of searchlight's start position.
function getSearchLightStartPosition () end

---@type fun(): boolean Returns true if the file transfer box is visible
function isTransferBoxActive () end

--[[
Returns
* true if the object was successfully broken.
* false if the object is not breakable, or a wrong object was given.
]]
---@type fun(theObject: object): boolean
function breakObject () end

---@type fun(theObject: object): boolean Returns true if the object is breakable.
function isObjectBreakable () end

---@type fun(theObject: object): boolean Returns true if the object was sucessfully respawned.
function respawnObject () end

---@type fun(address: string, isURL?: boolean): boolean Returns false if the URL is able to be loaded, true if it is blocked
function isBrowserDomainBlocked () end

---@type fun(webBrowser: browser): boolean Returns true if the browser is focused
function isBrowserFocused () end

---@type fun(webBrowser: browser): boolean Returns true if the browser is loading a website
function isBrowserLoading () end

---@type fun(theBrowser: browser, key: "mobile"): boolean Returns the value if the property was successfully found
function getBrowserProperty () end

--[[
Returns a table having the following keys:
* RemoteEnabled: true if remote websites are enabled, false otherwise
* RemoteJavascript: true if Javascript is enabled on remote websites, false otherwise
* PluginsEnabled: true if plugins such as Flash, Silverlight (but not Java) are enabled, false otherwise. This setting is false by default.
]]
---@type fun(): {RemoteEnabled: boolean, RemoteJavascript: boolean, PluginsEnabled: boolean}
function getBrowserSettings () end

---@type fun(webBrowser: browser): string Returns the title as a string
function getBrowserTitle () end

---@type fun(webBrowser: browser): string Returns the web browser URL. 
function getBrowserURL () end

---@type fun(webBrowser: browser, mouseButton: mouseButton): boolean Returns true if the click was successfully injected
function injectBrowserMouseDown () end

---@type fun(webBrowser: browser, posX: integer, posY: integer): boolean Returns true if the movement was injected successfully
function injectBrowserMouseMove () end

---@type fun(webBrowser: browser, mouseButton: mouseButton): boolean Returns true if the click was successfully injected
function injectBrowserMouseUp () end

---@type fun(webBrowser: browser, verticalScroll: integer, horizontalScroll: integer): boolean Returns true if the mouse action was successfully injected
function injectBrowserMouseWheel () end

---@type fun(webBrowser: browser, url: string, postData?: string, urlEncoded?: boolean): boolean Returns true if the URL was successfully loaded. 
function loadBrowserURL () end

---@type fun(webBrowser: browser): boolean Returns true if the browser can go to the next page
function canBrowserNavigateForward () end

---@type fun(theBrowser: browser, key: "mobile", value: "0" | "1"): boolean Returns true if the property was successfully set
function setBrowserProperty () end

---@type fun(webBrowser: browser, paused: boolean): boolean
function setBrowserRenderingPaused () end

--- `volume`: A floating point number representing the desired volume level. Range is from 0.0 to 1.0
---@type (fun(webBrowser: browser, volume: number): boolean) | (fun( volume: number): boolean)
function setBrowserVolume () end

---@type fun(pages: {[integer] : string}, parseAsURL?: boolean, callback?: fun (wasAccepted: boolean, newDomains: {[integer] : string}) ): boolean Returns true, if the string was successfully read
function requestBrowserDomains () end

---@type fun(webBrowser: browser, url: string, handler?: fun (get: {[string]: unknown}, post:  {[string]: unknown}): string? ): boolean Returns true if the ajax handler could be created/removed.
function setBrowserAjaxHandler () end

---@type fun(webBrowser: browser, callback: fun( code: string ) ): boolean Returns true if valid arguments have been passed
function getBrowserSource () end

---@type fun(webBrowser: browser, visible: boolean): boolean Returns true if the visibility was successfully toggled
function toggleBrowserDevTools () end

--[[
Returns
* `objects`: if you want the camera to clip on objects.
* `vehicles`: if you want the camera to clip on vehicles.
]]
---@type fun(): objects:boolean, vehicles:boolean
function getCameraClip () end

---@type fun(): goggleEffect Returns a string indicating the current camera goggle effect. 
function getCameraGoggleEffect () end

--[[
### `vehicleCameraMode`
0. Bumper
1. Close external
2. Middle external
3. Far external
4. Low external
5. Cinematic

<hr>

### `pedCameraMode`
1. Close
2. Middle
3. Far
]]
---@type fun(): vehicleCameraMode:vehicleCameraMode, pedCameraMode:pedCameraMode
function getCameraViewMode () end

---@type fun(cameraMode: cameraMode): number Returns one float - the field of view angle 
function getCameraFieldOfView () end

---@type fun(): integer Returns an integer representing the camera drunk level, from 0 (no drunk effect) to 255 (maximum drunk effect). By default, the camera has no drunk effect
function getCameraDrunkLevel () end

--- Please use getCameraDrunkLevel instead. Deprecated as of 1.6.0 r21795. 
---@type fun(): integer Returns an integer representing the camera shake level, from 0 (no shaking effect) to 255 (maximum shaking effect). By default, the camera has no shaking effect. 
function getCameraShakeLevel () end

--[[
* `objects`: Sets if you want the camera to clip on objects.
* `vehicles`: Sets if you want the camera to clip on vehicles.
]]
---@type fun(objects?: boolean, vehicles?: boolean): true Always returns true.
function setCameraClip () end

--[[
### `vehicleCameraMode`
0. Bumper
1. Close external
2. Middle external
3. Far external
4. Low external
5. Cinematic

<hr>

### `pedCameraMode`
1. Close
2. Middle
3. Far
]]
---@type fun(vehicleCameraMode: vehicleCameraMode, pedCameraMode?: pedCameraMode): boolean eturns true if the view(s) were set correctly
function setCameraViewMode () end

--- `fieldOfView`: The field of view angle, 0 to 179.
---@type fun(cameraMode: cameraMode, fieldOfView: number): boolean Returns true if the arguments are valid
function setCameraFieldOfView () end

---@type fun(shakeLevel: integer): boolean Returns true if the camera drunk level was changed
function setCameraDrunkLevel () end

-- Deprecated as of 1.6.0 r21795. Use setCameraShakeLevel instead.
---@type fun(shakeLevel: integer): boolean Returns true if the camera shake level was changed.
function setCameraShakeLevel () end

--- The `alpha` value can be 0-255, where 255 is fully opaque and 0 is fully transparent.
---@type fun(alpha: integer): boolean Returns true if the new alpha value was set.
function setCursorAlpha () end

---@type fun(): integer Returns a int between 0 and 255, where 255 is fully opaque and 0 is fully transparent. 
function getCursorAlpha () end

---@type fun(theKey: keyName, keyState: keyState): { [string]?: controlName } Returns a table of the commands bound on that key. 
function getCommandsBoundToKey () end

---@type fun(command: string): keyName | false Returns a string of first key binded to current command. 
function getKeyBoundToCommand () end

---@type fun(control: controlName, rawValue?: boolean): number Returns a float between 0 and 1 indicating the amount the control is pressed. 
function getAnalogControlState () end

---@type fun(): boolean Returns true if the chat is visible
function isChatVisible () end

---@type fun(theResource?: resource): element Returns the root GUI element that contains all the other GUI elements. 
function getResourceGUIElement () end

---@type fun(): { code: string, name: string} Returns a table
function getLocalization () end

---@type fun(theText: string): boolean Returns true if the text in the clip board was set correctly. 
function setClipboard () end

---@type (fun(posX: number, posY: number, posZ: number, ignoreDistanceToWaterThreshold: false): waterLevel: number | false) | (fun(posX: number, posY: number, posZ: number, ignoreDistanceToWaterThreshold: true): waterLevel: number) | (fun(waterElement: water): waterLevel: number) Returns an integer of the water level if the localPlayer/position is near the water (-3 to 20 on the Z coordinate) else false if there's no water near the localPlayer/position. 
function getWaterLevel () end

---@type fun(): boolean Returns true if water is drawn last in the rendering order
function isWaterDrawnLast () end

---@type fun(bEnabled: boolean): boolean Returns true if the rendering order was changed successfully
function setWaterDrawnLast () end

---@type fun(theType: weaponCreateType, x: number, y: number, z: number): weapon Returns a custom weapon element
function createWeapon () end

---@type fun(theWeapon: weapon): boolean Returns true if the shot weapon is valid and therefore the shot was fired
function fireWeapon () end

---@type fun(theWeapon: weapon): weaponState A string if the weapon is valid, indicating the weapon state
function getWeaponState () end

---@type (fun(theWeapon: weapon): target: nil | element) | (fun(theWeapon: weapon): x:number, y:number, z:number) Returns the target of the custom weapon, which can be: `nil` if the weapon is in rotation based targeting. `3 floats` if the weapon is firing at a fixed point. An `element` if the weapon is firing an entity.
function getWeaponTarget () end

---@type fun(theWeapon: weapon): boolean This function was intended to return the player which owns the custom weapon
function getWeaponOwner () end

---@type (fun(theWeapon: weapon, theFlag: weaponFlag_): enabled: boolean) | (fun(theWeapon: weapon, theFlag: "flags"):  checkBuildings: boolean, checkCarTires: boolean, checkDummies: boolean, checkObjects: boolean, checkPeds: boolean, checkVehicles: boolean, checkSeeThroughStuff: boolean, checkShootThroughStuff: boolean) Returns the true or false on success (flags flag returns 8 values) if the flag is enabled or not.
function getWeaponFlags () end

---@type fun(theWeapon: weapon): integer Returns an integer with the firing rate of the custom weapon
function getWeaponFiringRate () end

---@type fun(theWeapon: weapon): integer Returns an integer containing how many ammo left has the weapon
function getWeaponAmmo () end

---@type fun(theWeapon: weapon): integer Returns the amount of ammo in the custom weapon's clip
function getWeaponClipAmmo () end

---@type fun(theWeapon: weapon): boolean Returns true on success
function resetWeaponFiringRate () end

---@type fun(theWeapon: weapon, theState: weaponState): boolean Returns true on success
function setWeaponState () end

---@type (fun(theWeapon: weapon, theTarget: element, theComponent?: boneId | wheelId | 255): boolean) | (fun(theWeapon: weapon, targetX: number, targetY: number, targetZ: number): boolean) | (fun(theWeapon: weapon, reset: nil): boolean) Returns true on success
function setWeaponTarget () end

---@type (fun(theWeapon: weapon, theFlag: weaponFlag_, enable: boolean): boolean) |  (fun(theWeapon: weapon, theFlag: "flags", checkBuildings: boolean, checkCarTires: boolean, checkDummies: boolean, checkObjects: boolean, checkPeds: boolean, checkVehicles: boolean, checkSeeThroughStuff: boolean, checkShootThroughStuff: boolean ): boolean) Returns true if all arguments are valid and the flags where changed
function setWeaponFlags () end

---@type fun(theWeapon: weapon, firingRate: integer): boolean Returns true on success
function setWeaponFiringRate () end

---@type fun(theWeapon: weapon, clipAmmo: integer): boolean This function returns true if the arguments are valid and the weapon clip ammo could be changed
function setWeaponClipAmmo () end

---@type fun(): number This function returns a float containing the actual near clip distance. 
function getNearClipDistance () end

---@type (fun(x: number, y: number, z: number, edgeTolerance?: number, relative?: boolean): number|false, number?, number?) Returns two x, y floats indicating the screen position and float distance between screen and given position if successful
function getScreenFromWorldPosition () end

---@type fun(x: number, y: number, depth: number): number, number, number Returns three x, y, z floats indicating the world position if successful
function getWorldFromScreenPosition () end

---@type fun(theType: ambientSoundType): boolean Returns true if the ambient sound is enabled
function isAmbientSoundEnabled () end

---@type fun(startX: number, startY: number, startZ: number, endX: number, endY: number, endZ: number, checkBuildings?: boolean, checkVehicles?: boolean, checkPeds?: boolean, checkObjects?: boolean, checkDummies?: boolean, seeThroughStuff?: boolean, ignoreSomeObjectsForCamera?: boolean, ignoredElement?: element): boolean Returns true if the line between the specified points is clear
function isLineOfSightClear () end

---@type fun(group: worldSoundGroup, index: integer): boolean Returns true if the world sounds are enabled
function isWorldSoundEnabled () end

---@type fun(propname: worldSpecialProperty): boolean Returns true if the property is enabled
function isWorldSpecialPropertyEnabled () end

---@type fun(startX: number, startY: number, startZ: number, endX: number, endY: number, endZ: number, checkBuildings?: boolean, checkVehicles?: boolean, checkPlayers?: boolean, checkObjects?: boolean, checkDummies?: boolean, seeThroughStuff?: boolean, ignoreSomeObjectsForCamera?: boolean, shootThroughStuff?: boolean, ignoredElement?: element, includeWorldModelInformation?: boolean, bIncludeCarTyres?: boolean): hit:boolean, x:number, y:number, z:number, element, nx:number, ny:number, nz:number, mat:integer, lighting:number, piece:integer, worldModel:integer, x:number, y:number, z:number, rx:number, ry:number, rz:number, worldLOD:integer
function processLineOfSight () end

---@type fun(): boolean Returns true if the ambient sounds were reset
function resetAmbientSounds () end

---@type fun(): boolean Returns true if the world sounds were reset
function resetWorldSounds () end

---@type fun(theType: ambientSoundType, enable: boolean): boolean Returns true if the ambient sound was set correctly
function setAmbientSoundEnabled () end

---@type fun(enable: boolean): boolean Returns true if the birds state was changed succesfully
function setBirdsEnabled () end

--[[
###  `roomId`: The room type which you want disable or enable the furniture in:
0. shop
1. office
2. lounge
3. bedroom
4. kitchen
]]
---@type fun(roomId: roomTypeId, enabled: boolean): boolean Returns true if successful.
function setInteriorFurnitureEnabled () end

--[[
    `distance` must be between 0.1 and 20 for the function to do any effect. Default value is 0.3.
]]
---@type fun(distance: number): boolean This function returns true if the argument is valid.
function setNearClipDistance () end

---@type fun(startX: number, startY: number, startZ: number, endX: number, endY: number, endZ: number): boolean, x:number, y:number, z:number Returns true and the position of the intersection point of the line and the water surface if there is a collision
function testLineAgainstWater () end

---@type (fun(): boolean) |  (fun(x: number, y: number, z: number, radius?: number): boolean) Returns true if successful
function extinguishFire () end

---@type (fun(group: worldSoundGroup, enable: boolean, immediate? : boolean) : boolean) | (fun(group: worldSoundGroup, index: integer, enable: boolean, immediate? : boolean) : boolean) Returns true if the world sound was correctly enabled/disabled
function setWorldSoundEnabled () end

---@type fun(goggleEffect: goggleEffect, noiseEnabled?: boolean): boolean Returns true if the effect was set correctly.
function setCameraGoggleEffect () end

---@type fun(theSound: sound): number | false Returns a float value indicating the buffer playback length of the sound in seconds or false if the sound is not a stream.
function getSoundBufferLength () end

--- Returns on success: table for all, 3 floats for center_of_mass or float for other properties 
---@type (fun(theObject: object, property: 'all' ): table) | (fun(theObject: object, property: 'center_of_mass' ): number, number, number) | (fun(theObject: object, property: "mass" | "turn_mass" | "air_resistance" | "elasticity" | "buoyancy" ): number)
function getObjectProperty () end

---@type (fun(theObject: object, property: "mass" | "turn_mass" | "air_resistance" | "elasticity" | "buoyancy", value: number): boolean) | (fun(theObject: object, property: "center_of_mass", x: number, y: number, z: number): boolean) Returns true if the property was set successfully
function setObjectProperty () end

---@type fun(fileName: string): boolean Returns true if file download has been queued
function downloadFile () end

---@type fun(): {["readingLayout"]: "ltr" | "rtl" | "ttb-rtl-ltr" | "ttb-ltr"} Returns a table with keyboard layout
function getKeyboardLayout () end

---@type fun(): true Returns always true.
function resetNearClipDistance () end

--- Player element has to be provided on serverside.
---@type (fun(): integer) | (fun(player: player): integer) Returns the blur level. 
function getBlurLevel () end

---@type fun(): boolean Default blur level is 36. Returns true if the blur level was reset successfully
function resetBlurLevel () end

--- Player element has to be provided on serverside. Level between 0-255.
---@type (fun(level: integer): boolean) | (fun(player: player, level: integer): boolean) Returns true if the function was successful
function setBlurLevel () end

---@type fun(aRed: integer, aGreen: integer, aBlue: integer, aAlpha: integer, bRed: integer, bGreen: integer, bBlue: integer, bAlpha: integer): boolean Values between 0-255. Returns true if the color filter was set
function setColorFilter () end

---@type fun(): boolean Returns true if the color filtering was reset
function resetColorFilter () end

---@type fun(theElement: element, bone: boneId): table Returns a multi-dimensional array (which can be transformed into a proper matrix class using Matrix.create method) containing a 4x4 matrix.
function getElementBoneMatrix () end

---@type fun(theElement: element, bone: boneId): x:number, y:number, z:number Returns 3 floats, representing the X, Y, Z world position of the bone. 
function getElementBonePosition () end

---@type fun(theElement: element, bone: boneId): yaw:number, pitch:number, roll:number Returns 3 floats, representing the yaw, pitch, roll rotation values. 
function getElementBoneRotation () end

---@type fun(theElement: element, bone: boneId, matrix: matrix): boolean Returns true if the function was successful
function setElementBoneMatrix () end

---@type fun(theElement: element, bone: boneId, x: number, y: number, z: number): boolean Returns true if the function was successful
function setElementBonePosition () end

---@type fun(theElement: element, bone: boneId, yaw: number, pitch: number, roll: number): boolean Returns true if the function was successful
function setElementBoneRotation () end

---@type fun(theElement: element): boolean Returns true if successful
function updateElementRpHAnim () end

---@type fun(x: number, y: number, z: number): number|false Returns a float with the lowest roof-level Z coord if parameters are valid, false if the point you tried to test is outside the loaded world map. 
function getRoofPosition () end

---@type fun(theSound: sound, loop: boolean): boolean Returns true if the sound element loop state was successfully changed
function setSoundLooped () end

---@type fun(theSound: sound): boolean Returns true if the sound element is looped
function isSoundLooped () end

---@type fun(theObject: object): boolean Returns true if the object is moving
function isObjectMoving () end

---@type fun(webBrowser: browser): boolean Returns true if the browser rendering is paused
function isBrowserRenderingPaused () end

---@type fun(sound: sound, effectName: soundEffectName, effectParam: string, paramValue: integer|number|boolean): boolean Returns true if effect have been set successfully
function setSoundEffectParameter () end

---@type fun(sound: sound, effectName: soundEffectName): {[string]: integer|number|boolean} Returns a table with the parameter names as the keys, and their values.
function getSoundEffectParameters () end

---@type fun(): true Always returns true.
function clearDebugBox () end

---@type fun(): boolean Returns true if the chat input is blocked, false otherwise. 
function isChatInputBlocked () end

---@type fun(): integer Returns an integer with a value from 0 to 255, where 0 is fully transparent and 255 is fully opaque. 
function getPlayerMapOpacity () end

---@type fun(): boolean Returns true if the collision previews are enabled.  (This function only works in development mode.)
function isShowCollisionsEnabled () end

---@type fun(): boolean Returns true if world sound IDs should be printed in the debug window.  (This function only works in development mode.)
function isShowSoundEnabled () end

---@type fun(state: boolean): boolean Returns true if the function is successful. (This function only works in development mode.)
function showSound () end

---@type fun(state: boolean): boolean Returns true if the function is successful. (This function only works in development mode.)
function showCol () end

---@type (fun( width: integer,  height: integer, pathOrRawdata?: string, callback?: fun(svgElement: svg)): svgElement:svg) Returns an svg if created successfully
function svgCreate () end

---@type fun(svgElement: svg): xmlnode Returns an xmlnode if successful
function svgGetDocumentXML () end

---@type fun(svgElement: svg): width:integer, height:integer Returns two ints, representing width and height
function svgGetSize () end

---@type fun(svgElement: svg, xmlDocument: xmlnode, callBack?: fun(svg: svg) ): boolean Returns true if successful
function svgSetDocumentXML () end

---@type fun(svgElement: svg, width: integer, height: integer, callBack?: fun(svgElement: svg) ): boolean Returns true if successful
function svgSetSize () end

---@type fun(): boolean
function isTransferBoxAlwaysVisible () end

-- See status for implementation of this function: https://github.com/multitheftauto/mtasa-blue/pull/2595
---@type fun(svgElement: svg): function
function svgGetUpdateCallback () end

---@type fun(svgElement: svg, callback: function | boolean): boolean Returns true if successful
function svgSetUpdateCallback () end

