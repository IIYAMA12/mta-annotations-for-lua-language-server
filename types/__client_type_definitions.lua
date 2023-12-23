---@meta clientTypeConfigs

----------------
-- Base types --
----------------

---@alias camera userdata

-- GUI
---@alias guiBrowser userdata

-- DX
---@alias image userdata
---@alias font userdata
---@alias mixFont font|"default"|"default-bold"|"clear"|"arial"|"sans"|"pricedown"|"bankgothic"|"diploma"|"beckett"|"unifont"
---@alias mixMaterial userdata|string
---@alias texture userdata

--- Engine
---@class dff
---@class col
---@class txd
---@class ifp

--------------------------
-- Predefined variables --
--------------------------

---@type userdata
local userData_
guiRoot = userData_ -- returns the root element of all GUI elements.
localPlayer = userData_ -- returns the player element of the local player.

-----------
-- Other --
-----------

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

---@alias specialEffectContainerName "feet" | "genrl" | "pain_a" | "script" | "spc_ea" | "spc_fa" | "spc_ga" | "spc_na" | "spc_pa"
---@alias radioStationName "Adverts"|"Ambience"|"Police"|"Playback FM"|"K-Rose"|"K-DST"|"Cutscene"|"Beats"|"Bounce FM"|"SF-UR"|"Radio Los Santos"|"Radio X"|"CSR 103.9"|"K-Jah West"|"Master Sounds 98.3"|"WCTR"

--[[
| ID | Name               |
|----|--------------------|
| 0  | Radio Off          |
| 1  | Playback FM        |
| 2  | K-Rose             |
| 3  | K-DST              |
| 4  | Bounce FM          |
| 5  | SF-UR              |
| 6  | Radio Los Santos   |
| 7  | Radio X            |
| 8  | CSR 103.9          |
| 9  | K-Jah West         |
| 10 | Master Sounds 98.3 |
| 11 | WCTR               |
| 12 | User Track Player  |
]]
---@alias radioChannelId 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 | 12
---@alias radioChannelName "Radio Off"|"Playback FM"|"K-Rose"|"K-DST"|"Bounce FM"|"SF-UR"|"Radio Los Santos"|"Radio X"|"CSR 103.9"|"K-Jah West"|"Master Sounds 98.3"|"WCTR"|"User Track Player"
---@alias radioChannelAsTable { [0]: "Radio Off", [1]: "Playback FM", [2]: "K-Rose", [3]: "K-DST", [4]: "Bounce FM", [5]: "SF-UR", [6]: "Radio Los Santos", [7]: "Radio X", [8]: "CSR 103.9", [9]: "K-Jah West", [10]: "Master Sounds 98.3", [11]: "WCTR", [12]: "User Track Player"   }

---@alias soundMetaTags "title"|"artist"|"album"|"genre"|"year"|"comment"|"track"|"composer"|"copyright"|"subtitle"|"album_artist"|"stream_name"|"stream_title"

---@alias trayNotificationIconType "default" | "info" | "warning" | "error"

---@alias vehicleComponent "boot_dummy" | "ug_nitro" | "wheel_rf_dummy" | "wheel_lf_dummy" | "wheel_rb_dummy" | "wheel_lb_dummy" | "chassis" | "chassis_vlo" | "ug_roof" | "door_rf_dummy" | "door_lf_dummy" | "door_rr_dummy" | "door_lr_dummy" | "bonnet_dummy" | "ug_wing_right" | "bump_front_dummy" | "bump_rear_dummy" | "windscreen_dummy" | "misc_a" | "ug_wing_left" | "exhaust_ok"

--[[
radioChannel:
* 0: Radio Off
* 1: Playback FM
* 2: K-Rose 
* 3: K-DST
* 4: Bounce FM
* 5: SF-UR
* 6: Radio Los Santos
* 7: Radio X
* 8: CSR 103.9
* 9: K-Jah West
* 10: Master Sounds 98.3
* 11: WCTR
* 12: User Track Player
]]
---@alias radioChannel 1|2|3|4|5|6|7|8|9|10|11|12

--[[
* 0: motorbike shield
* 1: rear window
* 2: right front window
* 3: right back window
* 4: left front (driver) window
* 5: left back window
* 6: windshield
]]
---@alias vehicleWindow 0|1|2|3|4|5|6

--[[
* 0: front_left
* 1: rear_left
* 2: front_right
* 3: rear_right
]]
---@alias wheelId 0|1|2|3
---@alias wheel "front_left" | "rear_left" | "front_right" | "rear_right" | wheelId

---@alias vehicleDummy "light_front_main"|"light_rear_main"|"light_front_second"|"light_rear_second"|"seat_front"|"seat_rear"|"exhaust"|"engine"|"gas_cap"|"trailer_attach"|"hand_rest"|"exhaust_second"|"wing_airtrail"|"veh_gun"
---@alias scaleBase "parent" | "root" | "world"
---@alias wheelGroup "front_axle" | "rear_axle" | "all_wheels"

--[[
* 0: Normal friction
* 1: Slip with acceleration (only for driving wheels)
* 2: Slip without acceleration
* 3: Locked wheel (on brake or handbrake).
]]
---@alias wheelFrictionState  0 | 1 | 2 | 3

-- DX

---@alias textureFormat "argb" | "dxt1" | "dxt3" | "dxt5"
---@alias pixelsFormat "plain" | "dds"
---@alias textureEdge "wrap" | "clamp" | "mirror"
---@alias textureEdgeMode "wrap" | "mirror" | "clamp" | "border" | "mirror-once"
---@alias textureType "2d" | "3d" | "cube"
---@alias blendMode "blend" | "add" | "modulate_add" | "overwrite"
---@alias testMode "none" | "no_mem" | "low_mem" | "no_shader"
---@alias vertex table There are multiple types of vertexes