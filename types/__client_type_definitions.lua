---@meta clientTypeConfigs

----------------
-- Base types --
----------------

---@alias camera userdata

-- GUI
---@alias guiBrowser userdata

--[[
### default-normal
Tahoma regular, 9px

![default-normal](..\images\type\kcg80qtn.bmp)

### default-small
Tahoma regular, 7px

![default-small](..\images\type\5009la0f.bmp)

### default-bold-small
Tahoma bold, 8px

![default-bold-small](..\images\type\02bzw9wl.bmp)

### clear-normal
Verdana regular, 9px

![default-bold-small](..\images\type\31axpzs0.bmp)

### sa-header
Diploma regular, 26px auto-scaled

![sa-header](..\images\type\3vyxyoiu.bmp)

### sa-gothic
Beckett regular, 47px auto-scaled

![sa-gothic](..\images\type\ncrd0b5y.bmp)

]]
---@alias guiFont "default-normal" | "default-small" | "default-bold-small" | "clear-normal" | "sa-header" | "sa-gothic"

-- DX
---@alias image userdata
---@alias font userdata
---@alias mixFont font|"default"|"default-bold"|"clear"|"arial"|"sans"|"pricedown"|"bankgothic"|"diploma"|"beckett"|"unifont"
---@alias mixMaterial userdata|string
---@alias texture userdata

--- Engine
---@alias dff userdata
---@alias col userdata
---@alias txd userdata
---@alias ifp userdata

--------------------------
-- Predefined variables --
--------------------------

---@type userdata
local userData_
guiRoot = userData_     -- returns the root element of all GUI elements.
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

---@alias hudComponent_ammo "ammo"
---@alias hudComponent_area_name "area_name"
---@alias hudComponent_armour "armour"
---@alias hudComponent_breath "breath"
---@alias hudComponent_clock "clock"
---@alias hudComponent_health "health"
---@alias hudComponent_money "money"
---@alias hudComponent_radar "radar"
---@alias hudComponent_vehicle_name "vehicle_name"
---@alias hudComponent_weapon "weapon"
---@alias hudComponent_radio "radio"
---@alias hudComponent_wanted "wanted"
---@alias hudComponent_crosshair "crosshair"
---@alias hudComponent hudComponent_ammo | hudComponent_area_name | hudComponent_armour | hudComponent_breath | hudComponent_clock | hudComponent_health | hudComponent_money | hudComponent_radar | hudComponent_vehicle_name | hudComponent_weapon | hudComponent_radio | hudComponent_wanted | hudComponent_crosshair
---@alias hudComponentProperty_position "position"
---@alias hudComponentProperty_size "size"
---@alias hudComponentProperty_fillColor "fillColor"
---@alias hudComponentProperty_fillColorSecondary "fillColorSecondary"
---@alias hudComponentProperty_useCustomAlpha "useCustomAlpha"
---@alias hudComponentProperty_drawBlackBorder "drawBlackBorder"
---@alias hudComponentProperty_drawPercentage "drawPercentage"
---@alias hudComponentProperty_blinkingValue "blinkingValue"
---@alias hudComponentProperty_dropColor "dropColor"
---@alias hudComponentProperty_fontOutline "fontOutline"
---@alias hudComponentProperty_fontShadow "fontShadow"
---@alias hudComponentProperty_fontStyle "fontStyle"
---@alias hudComponentProperty_fontAlignment "fontAlignment"
---@alias hudComponentProperty_proportional "proportional"
---@alias hudComponentProperty_textSize "textSize"
---@alias hudComponentProperty hudComponentProperty_position | hudComponentProperty_size | hudComponentProperty_fillColor | hudComponentProperty_fillColorSecondary | hudComponentProperty_useCustomAlpha | hudComponentProperty_drawBlackBorder | hudComponentProperty_drawPercentage | hudComponentProperty_blinkingValue | hudComponentProperty_dropColor | hudComponentProperty_fontOutline | hudComponentProperty_fontShadow | hudComponentProperty_fontStyle | hudComponentProperty_fontAlignment | hudComponentProperty_proportional | hudComponentProperty_textSize


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

---@alias grainModifierName "master" | "infrared" | "night" | "rain" | "overlay"

--[[
* "none" = cursor has no image
* "arrow" = default cursor
* "sizing_ns" = N-S (up-down) sizing cursor
* "sizing_ew" = E-W (left-right) sizing cursor
* "sizing_nwse" = NW-SE diagonal sizing cursor
* "sizing_nesw" = NE-SW diagonal sizing cursor
* "sizing_eswe" = ES-WE horizontal sizing cursor
* "move" = move cursor
* "container_drag" = drag container cursor (note: not in use)
* "segment_moving" = segment moving cursor (note: not in use)
* "segment_sizing" = segment sizing cursor (note: not in use)
]]
---@alias cursorType "none" | "arrow" | "sizing_ns" |  "sizing_ew" | "sizing_nwse" | "sizing_nesw" | "sizing_eswe" | "move" | "container_drag" | "segment_moving" | "segment_sizing"

---@alias inputMode "allow_binds" | "no_binds" | "no_binds_when_editing"

---@alias exampleShaderElementTypes "world" | "ped" | "vehicle" | "object" | "other" | "all" | "world,ped,vehicle" | string

--[[
* 0: TASK_PHYSICAL_RESPONSE
* 1: TASK_EVENT_RESPONSE_TEMP
* 2: TASK_EVENT_RESPONSE_NONTEMP
* 3: TASK_PRIMARY
* 4: TASK_DEFAULT
]]
---@alias primaryTaskType 0 | 1 | 2 | 3 | 4

--[[
* 0: TASK_SECONDARY_ATTACK
* 1: TASK_SECONDARY_DUCK
* 2: TASK_SECONDARY_SAY
* 3: TASK_SECONDARY_FACIAL_COMPLEX
* 4: TASK_SECONDARY_PARTIAL_ANIM
* 5: TASK_SECONDARY_IK
]]
---@alias secondaryTaskType 0 | 1 | 2 | 3 | 4 | 5

---@alias pedPrimaryTasks "TASK_PRIORITY_PHYSICAL_RESPONSE"|"TASK_PRIORITY_EVENT_RESPONSE_TEMP"|"TASK_PRIORITY_EVENT_RESPONSE_NONTEMP"|"TASK_PRIORITY_PRIMARY"|"TASK_PRIORITY_DEFAULT"
---@alias pedPrimaryTaskSlots 0 | 1 | 2 | 3 | 4
---@alias pedSecondaryTasks "TASK_SECONDARY_ATTACK"|"TASK_SECONDARY_DUCK"|"TASK_SECONDARY_SAY"|"TASK_SECONDARY_FACIAL_COMPLEX"|"TASK_SECONDARY_PARTIAL_ANIM"|"TASK_SECONDARY_IK"
---@alias pedSecondaryTaskSlots 0 | 1 | 2 | 3 | 4 | 5
---@alias pedComplexTask "TASK_COMPLEX_ARREST_PED"|"TASK_COMPLEX_ATTRACTOR_PARTNER_WAIT"|"TASK_COMPLEX_AVOID_BUILDING"|"TASK_COMPLEX_AVOID_ENTITY"|"TASK_COMPLEX_AVOID_OTHER_PED_WHILE_WANDERING"|"TASK_COMPLEX_BE_COP"|"TASK_COMPLEX_BE_IN_COUPLE"|"TASK_COMPLEX_BE_IN_GROUP"|"TASK_COMPLEX_BE_STILL"|"TASK_COMPLEX_CAR_DRIVE"|"TASK_COMPLEX_CAR_DRIVE_MISSION"|"TASK_COMPLEX_CAR_DRIVE_MISSION_FLEE_SCENE"|"TASK_COMPLEX_CAR_DRIVE_MISSION_KILL_PED"|"TASK_COMPLEX_CAR_DRIVE_POINT_ROUTE"|"TASK_COMPLEX_CAR_DRIVE_TO_POINT"|"TASK_COMPLEX_CAR_DRIVE_WANDER"|"TASK_COMPLEX_CAR_OPEN_DRIVER_DOOR"|"TASK_COMPLEX_CAR_OPEN_PASSENGER_DOOR"|"TASK_COMPLEX_CAR_QUICK_BE_DRAGGED_OUT"|"TASK_COMPLEX_CAR_SLOW_BE_DRAGGED_OUT"|"TASK_COMPLEX_CAR_SLOW_BE_DRAGGED_OUT_AND_STAND_UP"|"TASK_COMPLEX_CHAINED_FACIAL"|"TASK_COMPLEX_CHAT"|"TASK_COMPLEX_CLIMB"|"TASK_COMPLEX_COP_ARREST_PED"|"TASK_COMPLEX_COP_HASSLE_PED"|"TASK_COMPLEX_COP_IN_CAR"|"TASK_COMPLEX_CROSS_ROAD_LOOK_AND_ACHIEVE_HEADING"|"TASK_COMPLEX_DESTROY_CAR"|"TASK_COMPLEX_DESTROY_CAR_ARMED"|"TASK_COMPLEX_DESTROY_CAR_MELEE"|"TASK_COMPLEX_DIE"|"TASK_COMPLEX_DIE_IN_CAR"|"TASK_COMPLEX_DIVE_FROM_ATTACHED_ENTITY_AND_GET_UP"|"TASK_COMPLEX_DO_DRIVEBY"|"TASK_COMPLEX_DRAG_PED_FROM_CAR"|"TASK_COMPLEX_DRIVE_FIRE_TRUCK"|"TASK_COMPLEX_ENTER_ANY_CAR_AS_DRIVER"|"TASK_COMPLEX_ENTER_BOAT_AS_DRIVER"|"TASK_COMPLEX_ENTER_CAR_AS_DRIVER"|"TASK_COMPLEX_ENTER_CAR_AS_DRIVER_TIMED"|"TASK_COMPLEX_ENTER_CAR_AS_PASSENGER"|"TASK_COMPLEX_ENTER_CAR_AS_PASSENGER_TIMED"|"TASK_COMPLEX_ENTER_CAR_AS_PASSENGER_WAIT"|"TASK_COMPLEX_ENTER_LEADER_CAR_AS_PASSENGER"|"TASK_COMPLEX_EVASIVE_COWER"|"TASK_COMPLEX_EVASIVE_DIVE_AND_GET_UP"|"TASK_COMPLEX_EVASIVE_STEP"|"TASK_COMPLEX_EXTINGUISH_FIRES"|"TASK_COMPLEX_EXTINGUISH_FIRE_ON_FOOT"|"TASK_COMPLEX_FACIAL"|"TASK_COMPLEX_FALL_AND_GET_UP"|"TASK_COMPLEX_FALL_AND_STAY_DOWN"|"TASK_COMPLEX_FALL_TO_DEATH"|"TASK_COMPLEX_FLEE_ANY_MEANS"|"TASK_COMPLEX_FLEE_ENTITY"|"TASK_COMPLEX_FLEE_POINT"|"TASK_COMPLEX_FLEE_SHOOTING"|"TASK_COMPLEX_FOLLOW_LEADER_ANY_MEANS"|"TASK_COMPLEX_FOLLOW_LEADER_IN_FORMATION"|"TASK_COMPLEX_FOLLOW_NODE_ROUTE"|"TASK_COMPLEX_FOLLOW_NODE_ROUTE_SHOOTING"|"TASK_COMPLEX_FOLLOW_PATROL_ROUTE"|"TASK_COMPLEX_FOLLOW_PED_FOOTSTEPS"|"TASK_COMPLEX_FOLLOW_POINT_ROUTE"|"TASK_COMPLEX_FOLLOW_SEXY_PED"|"TASK_COMPLEX_GANG_FOLLOWER"|"TASK_COMPLEX_GANG_HASSLE_PED"|"TASK_COMPLEX_GANG_HASSLE_VEHICLE"|"TASK_COMPLEX_GANG_JOIN_RESPOND"|"TASK_COMPLEX_GANG_LEADER"|"TASK_COMPLEX_GET_ON_BOAT_SEAT"|"TASK_COMPLEX_GET_OUT_OF_WAY_OF_CAR"|"TASK_COMPLEX_GET_UP_AND_STAND_STILL"|"TASK_COMPLEX_GOTO_DOOR_AND_OPEN"|"TASK_COMPLEX_GOTO_VEHICLE_AND_LEAN"|"TASK_COMPLEX_GO_PICKUP_ENTITY"|"TASK_COMPLEX_GO_TO_ATTRACTOR"|"TASK_COMPLEX_GO_TO_BOAT_STEERING_WHEEL"|"TASK_COMPLEX_GO_TO_CAR_DOOR_AND_STAND_STILL"|"TASK_COMPLEX_GO_TO_POINT_AIMING"|"TASK_COMPLEX_GO_TO_POINT_AND_STAND_STILL"|"TASK_COMPLEX_GO_TO_POINT_AND_STAND_STILL_AND_ACHIEVE_HEADING"|"TASK_COMPLEX_GO_TO_POINT_ANY_MEANS"|"TASK_COMPLEX_GO_TO_POINT_SHOOTING"|"TASK_COMPLEX_HANDSIGNAL_ANIM"|"TASK_COMPLEX_HASSLED_BY_COP"|"TASK_COMPLEX_HIT_BY_GUN_RESPONSE"|"TASK_COMPLEX_HIT_PED_WITH_CAR"|"TASK_COMPLEX_HIT_RESPONSE"|"TASK_COMPLEX_INVESTIGATE_DEAD_PED"|"TASK_COMPLEX_INVESTIGATE_DISTURBANCE"|"TASK_COMPLEX_IN_AIR_AND_LAND"|"TASK_COMPLEX_IN_WATER"|"TASK_COMPLEX_JUMP"|"TASK_COMPLEX_KILL_CRIMINAL"|"TASK_COMPLEX_KILL_PED_AND_REENTER_CAR"|"TASK_COMPLEX_KILL_PED_ON_FOOT"|"TASK_COMPLEX_KILL_PED_ON_FOOT_ARMED"|"TASK_COMPLEX_KILL_PED_ON_FOOT_KINDA_STAND_STILL"|"TASK_COMPLEX_KILL_PED_ON_FOOT_MELEE"|"TASK_COMPLEX_KILL_PED_ON_FOOT_STAND_STILL"|"TASK_COMPLEX_KILL_PED_ON_FOOT_STEALTH"|"TASK_COMPLEX_KILL_PED_ON_FOOT_TIMED"|"TASK_COMPLEX_LEAN_ON_VEHICLE"|"TASK_COMPLEX_LEAVE_ANY_CAR"|"TASK_COMPLEX_LEAVE_ATTRACTOR"|"TASK_COMPLEX_LEAVE_BOAT"|"TASK_COMPLEX_LEAVE_CAR"|"TASK_COMPLEX_LEAVE_CAR_AND_DIE"|"TASK_COMPLEX_LEAVE_CAR_AND_FLEE"|"TASK_COMPLEX_LEAVE_CAR_AND_WANDER"|"TASK_COMPLEX_LEAVE_CAR_AS_PASSENGER_WAIT"|"TASK_COMPLEX_MEDIC_TREAT_INJURED_PED"|"TASK_COMPLEX_MOVE_BACK_AND_JUMP"|"TASK_COMPLEX_OBSERVE_TRAFFIC_LIGHTS"|"TASK_COMPLEX_OBSERVE_TRAFFIC_LIGHTS_AND_ACHIEVE_HEADING"|"TASK_COMPLEX_ON_FIRE"|"TASK_COMPLEX_PARTNER"|"TASK_COMPLEX_PARTNER_CHAT"|"TASK_COMPLEX_PARTNER_DEAL"|"TASK_COMPLEX_PARTNER_GREET"|"TASK_COMPLEX_PARTNER_SHOVE"|"TASK_COMPLEX_PASS_OBJECT"|"TASK_COMPLEX_POLICE_PURSUIT"|"TASK_COMPLEX_PRESENT_ID_TO_COP"|"TASK_COMPLEX_PROSTITUTE_SOLICIT"|"TASK_COMPLEX_REACT_TO_ATTACK"|"TASK_COMPLEX_REACT_TO_GUN_AIMED_AT"|"TASK_COMPLEX_ROAD_RAGE"|"TASK_COMPLEX_SCREAM_IN_CAR_THEN_LEAVE"|"TASK_COMPLEX_SEEK_ENTITY"|"TASK_COMPLEX_SEEK_ENTITY_AIMING"|"TASK_COMPLEX_SEEK_ENTITY_ANY_MEANS"|"TASK_COMPLEX_SEEK_ENTITY_SHOOTING"|"TASK_COMPLEX_SEQUENCE"|"TASK_COMPLEX_SHUFFLE_SEATS"|"TASK_COMPLEX_SIDE_STEP_AND_SHOOT"|"TASK_COMPLEX_SIGNAL_AT_PED"|"TASK_COMPLEX_SIT_DOWN_THEN_IDLE_THEN_STAND_UP"|"TASK_COMPLEX_SMART_FLEE_ENTITY"|"TASK_COMPLEX_SMART_FLEE_POINT"|"TASK_COMPLEX_STARE_AT_PED"|"TASK_COMPLEX_STEAL_CAR"|"TASK_COMPLEX_STUCK_IN_AIR"|"TASK_COMPLEX_SUNBATHE"|"TASK_COMPLEX_SWIM_AND_CLIMB_OUT"|"TASK_COMPLEX_TRACK_ENTITY"|"TASK_COMPLEX_TREAT_ACCIDENT"|"TASK_COMPLEX_TURN_TO_FACE_ENTITY"|"TASK_COMPLEX_USE_ATTRACTOR"|"TASK_COMPLEX_USE_ATTRACTOR_PARTNER"|"TASK_COMPLEX_USE_CLOSEST_FREE_SCRIPTED_ATTRACTOR"|"TASK_COMPLEX_USE_CLOSEST_FREE_SCRIPTED_ATTRACTOR_RUN"|"TASK_COMPLEX_USE_CLOSEST_FREE_SCRIPTED_ATTRACTOR_SPRINT"|"TASK_COMPLEX_USE_EFFECT"|"TASK_COMPLEX_USE_EFFECT_RUNNING"|"TASK_COMPLEX_USE_EFFECT_SPRINTING"|"TASK_COMPLEX_USE_ENTRYEXIT"|"TASK_COMPLEX_USE_GOGGLES"|"TASK_COMPLEX_USE_MOBILE_PHONE"|"TASK_COMPLEX_USE_PAIRED_ATTRACTOR"|"TASK_COMPLEX_USE_SCRIPTED_ATTRACTOR"|"TASK_COMPLEX_USE_SCRIPTED_BRAIN"|"TASK_COMPLEX_USE_SEQUENCE"|"TASK_COMPLEX_USE_SWAT_ROPE"|"TASK_COMPLEX_USE_WATER_CANNON"|"TASK_COMPLEX_WAIT_AT_ATTRACTOR"|"TASK_COMPLEX_WAIT_FOR_BACKUP"|"TASK_COMPLEX_WAIT_FOR_BUS"|"TASK_COMPLEX_WAIT_FOR_DRY_WEATHER"|"TASK_COMPLEX_WAIT_FOR_PED"|"TASK_COMPLEX_WALK_ALONGSIDE_PED"|"TASK_COMPLEX_WALK_ROUND_BUILDING_ATTEMPT"|"TASK_COMPLEX_WALK_ROUND_CAR"|"TASK_COMPLEX_WALK_ROUND_FIRE"|"TASK_COMPLEX_WALK_ROUND_OBJECT"|"TASK_COMPLEX_WALK_ROUND_SHOP"|"TASK_COMPLEX_WALK_WITH_PED"|"TASK_COMPLEX_WANDER"
---@alias pedSimpleTask "TASK_SIMPLE_ABSEIL"|"TASK_SIMPLE_ACHIEVE_HEADING"|"TASK_SIMPLE_AFFECT_SECONDARY_BEHAVIOUR"|"TASK_SIMPLE_ANIM"|"TASK_SIMPLE_ANIM_LOOPED_MIDDLE"|"TASK_SIMPLE_ARREST_PED"|"TASK_SIMPLE_BE_ARRESTED"|"TASK_SIMPLE_BE_DAMAGED"|"TASK_SIMPLE_BE_HIT"|"TASK_SIMPLE_BE_HIT_WHILE_MOVING"|"TASK_SIMPLE_BE_KICKED_ON_GROUND"|"TASK_SIMPLE_BIKE_JACKED"|"TASK_SIMPLE_BIKE_PICK_UP"|"TASK_SIMPLE_CALL_FOR_BACKUP"|"TASK_SIMPLE_CAR_ALIGN"|"TASK_SIMPLE_CAR_CLOSE_DOOR_FROM_INSIDE"|"TASK_SIMPLE_CAR_CLOSE_DOOR_FROM_OUTSIDE"|"TASK_SIMPLE_CAR_DRIVE"|"TASK_SIMPLE_CAR_DRIVE_TIMED"|"TASK_SIMPLE_CAR_FALL_OUT"|"TASK_SIMPLE_CAR_FORCE_PED_OUT"|"TASK_SIMPLE_CAR_GET_IN"|"TASK_SIMPLE_CAR_GET_OUT"|"TASK_SIMPLE_CAR_JUMP_OUT"|"TASK_SIMPLE_CAR_OPEN_DOOR_FROM_OUTSIDE"|"TASK_SIMPLE_CAR_OPEN_LOCKED_DOOR_FROM_OUTSIDE"|"TASK_SIMPLE_CAR_QUICK_BE_DRAGGED_OUT"|"TASK_SIMPLE_CAR_QUICK_DRAG_PED_OUT"|"TASK_SIMPLE_CAR_SET_PED_IN_AS_DRIVER"|"TASK_SIMPLE_CAR_SET_PED_IN_AS_PASSENGER"|"TASK_SIMPLE_CAR_SET_PED_OUT"|"TASK_SIMPLE_CAR_SET_PED_QUICK_DRAGGED_OUT"|"TASK_SIMPLE_CAR_SET_PED_SLOW_DRAGGED_OUT"|"TASK_SIMPLE_CAR_SET_TEMP_ACTION"|"TASK_SIMPLE_CAR_SHUFFLE"|"TASK_SIMPLE_CAR_SLOW_BE_DRAGGED_OUT"|"TASK_SIMPLE_CAR_SLOW_DRAG_PED_OUT"|"TASK_SIMPLE_CAR_WAIT_FOR_DOOR_NOT_TO_BE_IN_USE"|"TASK_SIMPLE_CAR_WAIT_TO_SLOW_DOWN"|"TASK_SIMPLE_CHAT"|"TASK_SIMPLE_CHOKING"|"TASK_SIMPLE_CLEAR_LOOK_AT"|"TASK_SIMPLE_CLIMB"|"TASK_SIMPLE_COWER"|"TASK_SIMPLE_CREATE_CAR_AND_GET_IN"|"TASK_SIMPLE_DEAD"|"TASK_SIMPLE_DETONATE"|"TASK_SIMPLE_DIE"|"TASK_SIMPLE_DIE_IN_CAR"|"TASK_SIMPLE_DO_HAND_SIGNAL"|"TASK_SIMPLE_DRIVEBY_SHOOT"|"TASK_SIMPLE_DRIVEBY_WATCH_FOR_TARGET"|"TASK_SIMPLE_DROWN"|"TASK_SIMPLE_DROWN_IN_CAR"|"TASK_SIMPLE_DUCK"|"TASK_SIMPLE_DUCK_FOREVER"|"TASK_SIMPLE_DUCK_TOGGLE"|"TASK_SIMPLE_DUCK_WHILE_SHOTS_WHIZZING"|"TASK_SIMPLE_EVASIVE_DIVE"|"TASK_SIMPLE_EVASIVE_STEP"|"TASK_SIMPLE_FACIAL"|"TASK_SIMPLE_FALL"|"TASK_SIMPLE_FIGHT"|"TASK_SIMPLE_FIGHT_CTRL"|"TASK_SIMPLE_FINISH_BRAIN"|"TASK_SIMPLE_GANG_DRIVEBY"|"TASK_SIMPLE_GET_UP"|"TASK_SIMPLE_GIVE_CPR"|"TASK_SIMPLE_GOGGLES_OFF"|"TASK_SIMPLE_GOGGLES_ON"|"TASK_SIMPLE_GO_TO_POINT"|"TASK_SIMPLE_GO_TO_POINT_FINE"|"TASK_SIMPLE_GO_TO_POINT_NEAR_CAR_DOOR_UNTIL_DOOR_NOT_IN_USE"|"TASK_SIMPLE_GUN_CTRL"|"TASK_SIMPLE_HAIL_TAXI"|"TASK_SIMPLE_HANDSIGNAL_ANIM"|"TASK_SIMPLE_HANDS_UP"|"TASK_SIMPLE_HIT_BACK"|"TASK_SIMPLE_HIT_BEHIND"|"TASK_SIMPLE_HIT_BY_GUN_BACK"|"TASK_SIMPLE_HIT_BY_GUN_FRONT"|"TASK_SIMPLE_HIT_BY_GUN_LEFT"|"TASK_SIMPLE_HIT_BY_GUN_RIGHT"|"TASK_SIMPLE_HIT_FRONT"|"TASK_SIMPLE_HIT_HEAD"|"TASK_SIMPLE_HIT_LEFT"|"TASK_SIMPLE_HIT_RIGHT"|"TASK_SIMPLE_HIT_WALL"|"TASK_SIMPLE_HOLD_ENTITY"|"TASK_SIMPLE_HURT_PED_WITH_CAR"|"TASK_SIMPLE_IDLE_SUNBATHING"|"TASK_SIMPLE_IK_CHAIN"|"TASK_SIMPLE_IK_LOOK_AT"|"TASK_SIMPLE_IK_MANAGER"|"TASK_SIMPLE_IK_POINT_L_ARM"|"TASK_SIMPLE_IK_POINT_R_ARM"|"TASK_SIMPLE_INFORM_GROUP"|"TASK_SIMPLE_INFORM_RESPECTED_FRIENDS"|"TASK_SIMPLE_IN_AIR"|"TASK_SIMPLE_JETPACK"|"TASK_SIMPLE_JUMP"|"TASK_SIMPLE_KILL_PED_WITH_CAR"|"TASK_SIMPLE_LAND"|"TASK_SIMPLE_LOOK_ABOUT"|"TASK_SIMPLE_LOOK_AT_ENTITY_OR_COORD"|"TASK_SIMPLE_NAMED_ANIM"|"TASK_SIMPLE_ON_ESCALATOR"|"TASK_SIMPLE_PAUSE"|"TASK_SIMPLE_PHONE_IN"|"TASK_SIMPLE_PHONE_OUT"|"TASK_SIMPLE_PHONE_TALK"|"TASK_SIMPLE_PICKUP_ENTITY"|"TASK_SIMPLE_PLAYER_IN_CAR"|"TASK_SIMPLE_PLAYER_ON_FIRE"|"TASK_SIMPLE_PLAYER_ON_FOOT"|"TASK_SIMPLE_PUTDOWN_ENTITY"|"TASK_SIMPLE_RAGDOLL"|"TASK_SIMPLE_SAY"|"TASK_SIMPLE_SCRATCH_HEAD"|"TASK_SIMPLE_SET_CHAR_DECISION_MAKER"|"TASK_SIMPLE_SET_CHAR_IGNORE_WEAPON_RANGE_FLAG"|"TASK_SIMPLE_SET_KINDA_STAY_IN_SAME_PLACE"|"TASK_SIMPLE_SET_PED_AS_AUTO_DRIVER"|"TASK_SIMPLE_SET_STAY_IN_SAME_PLACE"|"TASK_SIMPLE_SHAKE_FIST"|"TASK_SIMPLE_SIT_DOWN"|"TASK_SIMPLE_SIT_IDLE"|"TASK_SIMPLE_SLIDE_TO_COORD"|"TASK_SIMPLE_STAND_STILL"|"TASK_SIMPLE_STAND_UP"|"TASK_SIMPLE_START_SUNBATHING"|"TASK_SIMPLE_STEALTH_KILL"|"TASK_SIMPLE_STOP_SUNBATHING"|"TASK_SIMPLE_SUNBATHE"|"TASK_SIMPLE_SWIM"|"TASK_SIMPLE_THROW"|"TASK_SIMPLE_THROW_CTRL"|"TASK_SIMPLE_TIMED_ANIM"|"TASK_SIMPLE_TIRED"|"TASK_SIMPLE_TOGGLE_PED_THREAT_SCANNER"|"TASK_SIMPLE_TRIGGER_EVENT"|"TASK_SIMPLE_TRIGGER_LOOK_AT"|"TASK_SIMPLE_TURN_180"|"TASK_SIMPLE_UNINTERRUPTABLE"|"TASK_SIMPLE_USE_ATM"|"TASK_SIMPLE_USE_GUN"|"TASK_SIMPLE_WAIT_FOR_BUS"|"TASK_SIMPLE_WAIT_FOR_PIZZA"|"TASK_SIMPLE_WAIT_UNTIL_PED_IN_CAR"|"TASK_SIMPLE_WAIT_UNTIL_PED_OUT_CAR"

--[[
* 0: Single row selection
* 1: Multiple row selection
* 2: Single cell selection
* 3: Multiple cell selection
* 4: Nominated(First) single column selection
* 5: Nominated(First) multiple column selection
* 6: Single column selection
* 7: Multiple column selection
* 8: Nominated(First) single row selection
* 9: Nominated(First) multiple row selection
]]
---@alias gridSelectionMode 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

---@alias possibleDxStatusKey "TestMode"|"VideoCardName"|"VideoCardRAM"|"VideoCardPSVersion"|"VideoCardMaxAnisotropy"|"VideoCardNumRenderTargets"|"VideoMemoryFreeForMTA"|"VideoMemoryUsedByFonts"|"VideoMemoryUsedByTextures"|"VideoMemoryUsedByRenderTargets"|"SettingWindowed"|"SettingFullScreenStyle"|"SettingFXQuality"|"SettingDrawDistance"|"SettingVolumetricShadows"|"SettingStreamingVideoMemoryForGTA"|"SettingAnisotropicFiltering"|"SettingAntiAliasing"|"SettingHeatHaze"|"SettingGrassEffect"|"Setting32BitColor"|"SettingHUDMatchAspectRatio"|"SettingAspectRatio"|"SettingFOV"|"SettingHighDetailVehicles"|"SettingHighDetailPeds"|"SettingCoronaReflections"|"SettingDynamicPedShadows"|"AllowScreenUpload"|"DepthBufferFormat"|"TotalPhysicalMemory"|"UsingDepthBuffer"|"SettingDebugMode"

---@alias building userdata

--- The boolean value is legacy
---@alias dxStageOrPostGUI boolean | "prefx" | "postfx" | "postgui"

---@alias fxParticles "blood" | "boat_splash" | "bubble" | "car_debris" | "collision_smoke" | "gunshell" | "sand" | "sand2" | "huge_smoke" | "smoke" | "spark" | "spark2" | "splash" | "wake" | "water_splash" | "wheel_dirt" | "glass"

--[[
|           Name           | Default size | Resizable |                     Description                     |
|:------------------------:|:------------:|:---------:|:---------------------------------------------------:|
| building                 | 13000        | yes       | Static world objects. Terrain, roads, buildings...  |
| dummy                    | 2500         | no        | Dynamic world objects. Doors, fences, boxes         |
| ped                      | 140          | no        | Peds                                                |
| object                   | 1200         | no        | Scriptable objects                                  |
| vehicle                  | 110          | no        | Vehicles                                            |
| col-model                | 12000        | no        |                                                     |
| task                     | 5000         | no        |                                                     |
| event                    | 5000         | no        |                                                     |
| task-allocator           | 16           | no        |                                                     |
| ped-intelligence         | 64           | no        |                                                     |
| ped-attractor            | 64           | no        |                                                     |
| entry-info-node          | 72600        | no        |                                                     |
| node-route               | 64           | no        |                                                     |
| patrol-route             | 32           | no        |                                                     |
| point-route              | 64           | no        |                                                     |
| pointer-double-link-pool | 74800        | no        |                                                     |
| pointer-single-link-pool | 90000        | no        |                                                     |
| env-map-material         | 16000        | no        |                                                     |
| env-map-atomic           | 4000         | no        |                                                     |
| spec-map-material        | 16000        | no        |                                                     |
]]
---@alias enginePools "building" | "dummy" | "ped" | "object" | "vehicle" | "col-model" | "task" | "event" | "task-allocator" | "ped-intelligence" | "ped-attractor" | "entry-info-node" | "node-route" | "patrol-route" | "point-route" | "pointer-double-link-pool" | "pointer-single-link-pool" | "env-map-material" | "env-map-atomic" | "spec-map-material"

---@alias worldPropertyTypeRGB "AmbientColor" | "AmbientObjColor" | "DirectionalColor" | "BottomCloudsColor" | "LowCloudsColor"
---@alias worldPropertyTypeFloat "Illumination" | "SpriteSize" | "SpriteBrightness" | "LightsOnGround" | "ShadowsOffset" | "WetRoads" | "Foggyness" | "Fog" | "RainFog" | "WaterFog" | "Rainbow" | "Sandstorm"
---@alias worldPropertyTypeInteger "PoleShadowStrength" | "ShadowStrength" | "CloudsAlpha"

--[[
|      Property       |  Type  |                                                              Description                                                              |
|:-------------------:|:------:|:-------------------------------------------------------------------------------------------------------------------------------------:|
| AmbientColor        | RGB    | The color of ambient light on map objects (including custom objects)                                                                  |
| AmbientObjColor     | RGB    | The color of ambient light on dynamically created elements (peds, vehicles)                                                           |
| DirectionalColor    | RGB    | The color of direct light on dynamically created elements (peds, vehicles)                                                            |
| Illumination        | FLOAT  | Multiplier for the directional light (DirectionalColor)                                                                               |
| SpriteSize          | FLOAT  | Point lights corona size (traffic lights)                                                                                             |
| SpriteBrightness    | FLOAT  | Point lights corona brightness (also affects light on ground for light poles)                                                         |
| LightsOnGround      | FLOAT  | Point lights ground reflection brightness (traffic lights)                                                                            |
| PoleShadowStrength  | INT    | Pole shadows alpha (used if volumetric shadows are disabled)                                                                          |
| ShadowStrength      | INT    | Shadows alpha (all shadows)                                                                                                           |
| ShadowsOffset       | FLOAT  | Shadows height                                                                                                                        |
| BottomCloudsColor   | RGB    | Bottom (normal) clouds color                                                                                                          |
| CloudsAlpha         | INT    | Bottom (normal) clouds alpha                                                                                                          |
| LowCloudsColor      | RGB    | Low (skyline) clouds color (dependent on game hours)                                                                                  |
| WetRoads            | FLOAT  | Wet roads weather effect (noticeable during driving) Turns on lights on ground during daytime                                         |
| Foggyness           | FLOAT  | Adds light fog effect for headlights and turns on lights on ground during daytime Also affects skyline clouds and shadows visibility  |
| Fog                 | FLOAT  | Fog weather effect alpha                                                                                                              |
| RainFog             | FLOAT  | Rain fog weather effect alpha (different fog; used in rain weathers) (reset is smooth)                                                |
| WaterFog            | FLOAT  | Water fog alpha                                                                                                                       |
| Rainbow             | FLOAT  | Rainbow alpha                                                                                                                         |
| Sandstorm           | FLOAT  | Sandstorm sound volume (reset is smooth)                                                                                              |
]]
---@alias worldPropertyType worldPropertyTypeRGB | worldPropertyTypeFloat | worldPropertyTypeInteger

--[[
    http://static.cegui.org.uk/static/WindowsLookProperties.html
]]
---@alias CEGUI_property "ActiveEditSelectionColour"|"ActiveSelectionColour"|"AllowMultiplePopups"|"Alpha"|"AlwaysOnTop"|"AutoCloseNestedPopups"|"AutoPopupTimeout"|"AutoRenderingSurface"|"AutoRepeatDelay"|"AutoRepeatRate"|"AutoResizeEnabled"|"BackgroundColours"|"BackgroundEnabled"|"BlinkCaret"|"BlinkCaretTimeout"|"BorderWidth"|"CaptionColour"|"CaratIndex"|"ClickStepSize"|"Clickable"|"ClippedByParent"|"CloseButtonEnabled"|"ColumnHeader"|"ColumnsMovable"|"ColumnsSizable"|"ContentArea"|"ContentPaneAutoSized"|"CurrentProgress"|"CurrentValue"|"CustomTooltipType"|"DestroyedByParent"|"Disabled"|"DisabledTextColour"|"DisplayTime"|"DistributeCapturedInputs"|"DocumentSize"|"DragDropTarget"|"DragMovingEnabled"|"Dragable"|"DraggingEnabled"|"EWSizingCursorImage"|"EditSelectionLength"|"EditSelectionStart"|"EnableBottom"|"EnableTop"|"EndLockEnabled"|"FadeInTime"|"FadeOutTime"|"FadeTime"|"Font"|"ForceHorzScrollbar"|"ForceVertScrollbar"|"FrameColours"|"FrameEnabled"|"GroupID"|"HorizontalAlignment"|"HorzExtent"|"HorzFormatting"|"HorzFree"|"HorzOverlapSize"|"HorzRange"|"HorzScrollPosition"|"HorzScrollbar"|"HorzStepSize"|"HotTracked"|"HoverColour"|"HoverImage"|"HoverTextColour"|"HoverTime"|"ID"|"IconColours"|"IconImage"|"Image"|"ImageColours"|"InactiveEditSelectionColour"|"InactiveSelectionColour"|"InheritsAlpha"|"InheritsTooltipText"|"ItemSpacing"|"ItemTooltips"|"LookNFeel"|"Margin"|"MaskCodepoint"|"MaskText"|"MaxEditTextLength"|"MaxTextLength"|"MaximumValue"|"MinimumValue"|"MouseButtonDownAutoRepeat"|"MouseCursorImage"|"MouseInputPropagationEnabled"|"MousePassThroughEnabled"|"MovingCursorImage"|"MultiSelect"|"NESWSizingCursorImage"|"NSSizingCursorImage"|"NWSESizingCursorImage"|"NominatedSelectionColumnID"|"NominatedSelectionRow"|"NonClient"|"NormalEditTextColour"|"NormalImage"|"NormalTextColour"|"OpenedColour"|"OverlapSize"|"PageSize"|"PopupOffset"|"PushedColour"|"PushedImage"|"PushedOffColour"|"PushedTextColour"|"ReadOnly"|"ReadOnlyBGColour"|"RestoreOldCapture"|"ReversedDirection"|"ReversedProgress"|"RiseOnClick"|"RollUpEnabled"|"RollUpState"|"Rotation"|"RowCount"|"ScrollPosition"|"SegmentWidgetType"|"Selectable"|"Selected"|"SelectedEditTextColour"|"SelectedTextColour"|"SelectionBrush"|"SelectionBrushImage"|"SelectionColour"|"SelectionLength"|"SelectionMode"|"SelectionStart"|"SingleClickMode"|"Sizable"|"SizingBorderThickness"|"SizingCursorImage"|"SizingEnabled"|"Sort"|"SortColumnID"|"SortDirection"|"SortEnabled"|"SortList"|"SortMode"|"SortSettingEnabled"|"StepSize"|"TabButtonType"|"TabHeight"|"TabPanePosition"|"TabTextPadding"|"Text"|"TextColour"|"TextColours"|"TextFormatting"|"TextInputMode"|"TextPadding"|"TextParsingEnabled"|"TitlebarEnabled"|"TitlebarFont"|"Tooltip"|"UnifiedAreaRect"|"UnifiedHeight"|"UnifiedMaxSize"|"UnifiedMinSize"|"UnifiedPosition"|"UnifiedSize"|"UnifiedWidth"|"UnifiedXPosition"|"UnifiedYPosition"|"UpdateMode"|"ValidationString"|"VertExtent"|"VertFormatting"|"VertFree"|"VertOverlapSize"|"VertRange"|"VertScrollPosition"|"VertScrollbar"|"VertStepSize"|"VerticalAlignment"|"VerticalProgress"|"VerticalScrollbar"|"VerticalSlider"|"Visible"|"WantsMultiClickEvents"|"WindowRenderer"|"WordWrap"|"XRotation"|"YRotation"|"ZOrderChangeEnabled"|"ZRotation"
