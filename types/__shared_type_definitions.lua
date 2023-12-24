---@meta sharedTypeConfigs

--[[
    Credits to the community for all the available syntax and descriptions
]]

----------------
-- Base types --
----------------

---@alias element userdata
---@alias player userdata
---@alias ped userdata
---@alias vehicle userdata
---@alias object userdata
---@alias pickup userdata
---@alias marker userdata 
---@alias colshape userdata
---@alias blip userdata
---@alias projectile userdata
---@alias team userdata
---@alias console userdata
---@alias sound userdata
---@alias weapon userdata
---@alias effect userdata
---@alias browser userdata
---@alias light userdata
---@alias searchlight userdata
---@alias water userdata
---@alias radararea userdata
---@alias svg userdata
---@alias resource userdata
---@alias root userdata

---@class matrix 
---@class xmlnode

---@class vector2
---@operator add(vector2): vector2
---@operator sub(vector2): vector2
---@operator mul(vector2): vector2
---@operator div(vector2): vector2
---@operator mod(vector2): vector2
---@operator pow(vector2): vector2
---@class vector3
---@operator add(vector3): vector3
---@operator sub(vector3): vector3
---@operator mul(vector3): vector3
---@operator div(vector3): vector3
---@operator mod(vector3): vector3
---@operator pow(vector3): vector3
---@class vector4
---@operator add(vector4): vector4
---@operator sub(vector4): vector4
---@operator mul(vector4): vector4
---@operator div(vector4): vector4
---@operator mod(vector4): vector4
---@operator pow(vector4): vector4

---@class file
---@class timer
---@class uint
---@class request
---@alias color integer

--------------------------
-- Predefined variables --
--------------------------
-- https://wiki.multitheftauto.com/wiki/Predefined_variables_list

-- Fake the variable values
---@type table
local table_
---@type userdata
local userData_
---@type string
local string_

-- Global
exports = table_ -- returns a table of resource names containing all export functions
resource = userData_ -- returns a resource element of the resource the snippet was executed in
resourceRoot = userData_ -- returns a resource root element of the resource the snippet was executed in
root = userData_ -- returns the root element of the server

-- Event Handlers
source = userData_ -- The player or element the event was attached to
this = userData_ -- Element, which was attached function-handler.
eventName = string_ -- the name of the event ("onResourceStart", "onPlayerWasted" etc.)
sourceResource = userData_ -- the resource that called the event
sourceResourceRoot = userData_ -- the root of the resource that called the event

-----------
-- Other --
-----------

--[[
| ID  | Name                        |
|-----|-----------------------------|
| 400 | Landstalker                 |
| 401 | Bravura                     |
| 402 | Buffalo                     |
| 403 | Linerunner                  |
| 404 | Perennial                   |
| 405 | Sentinel                    |
| 406 | Dumper                      |
| 407 | Fire Truck                  |
| 408 | Trashmaster                 |
| 409 | Stretch                     |
| 410 | Manana                      |
| 411 | Infernus                    |
| 412 | Voodoo                      |
| 413 | Pony                        |
| 414 | Mule                        |
| 415 | Cheetah                     |
| 416 | Ambulance                   |
| 417 | Leviathan                   |
| 418 | Moonbeam                    |
| 419 | Esperanto                   |
| 420 | Taxi                        |
| 421 | Washington                  |
| 422 | Bobcat                      |
| 423 | Mr. Whoopee                 |
| 424 | BF Injection                |
| 425 | Hunter                      |
| 426 | Premier                     |
| 427 | Enforcer                    |
| 428 | Securicar                   |
| 429 | Banshee                     |
| 430 | Predator                    |
| 431 | Bus                         |
| 432 | Rhino                       |
| 433 | Barracks                    |
| 434 | Hotknife                    |
| 435 | Trailer 1                   |
| 436 | Previon                     |
| 437 | Coach                       |
| 438 | Cabbie                      |
| 439 | Stallion                    |
| 440 | Rumpo                       |
| 441 | RC Bandit                   |
| 442 | Romero                      |
| 443 | Packer                      |
| 444 | Monster                     |
| 445 | Admiral                     |
| 446 | Squalo                      |
| 447 | Seasparrow                  |
| 448 | Pizzaboy                    |
| 449 | Tram                        |
| 450 | Trailer 2                   |
| 451 | Turismo                     |
| 452 | Speeder                     |
| 453 | Reefer                      |
| 454 | Tropic                      |
| 455 | Flatbed                     |
| 456 | Yankee                      |
| 457 | Caddy                       |
| 458 | Solair                      |
| 459 | Berkley's RC Van            |
| 460 | Skimmer                     |
| 461 | PCJ-600                     |
| 462 | Faggio                      |
| 463 | Freeway                     |
| 464 | RC Baron                    |
| 465 | RC Raider                   |
| 466 | Glendale                    |
| 467 | Oceanic                     |
| 468 | Sanchez                     |
| 469 | Sparrow                     |
| 470 | Patriot                     |
| 471 | Quadbike                    |
| 472 | Coastguard                  |
| 473 | Dinghy                      |
| 474 | Hermes                      |
| 475 | Sabre                       |
| 476 | Rustler                     |
| 477 | ZR-350                      |
| 478 | Walton                      |
| 479 | Regina                      |
| 480 | Comet                       |
| 481 | BMX                         |
| 482 | Burrito                     |
| 483 | Camper                      |
| 484 | Marquis                     |
| 485 | Baggage                     |
| 486 | Dozer                       |
| 487 | Maverick                    |
| 488 | News Chopper                |
| 489 | Rancher                     |
| 490 | FBI Rancher                 |
| 491 | Virgo                       |
| 492 | Greenwood                   |
| 493 | Jetmax                      |
| 494 | Hotring Racer               |
| 495 | Sandking                    |
| 496 | Blista Compact              |
| 497 | Police Maverick             |
| 498 | Boxville                    |
| 499 | Benson                      |
| 500 | Mesa                        |
| 501 | RC Goblin                   |
| 502 | Hotring Racer 2             |
| 503 | Hotring Racer 3             |
| 504 | Bloodring Banger            |
| 505 | Rancher Lure                |
| 506 | Super GT                    |
| 507 | Elegant                     |
| 508 | Journey                     |
| 509 | Bike                        |
| 510 | Mountain Bike               |
| 511 | Beagle                      |
| 512 | Cropduster                  |
| 513 | Stuntplane                  |
| 514 | Tanker                      |
| 515 | Roadtrain                   |
| 516 | Nebula                      |
| 517 | Majestic                    |
| 518 | Buccaneer                   |
| 519 | Shamal                      |
| 520 | Hydra                       |
| 521 | FCR-900                     |
| 522 | NRG-500                     |
| 523 | HPV1000                     |
| 524 | Cement Truck                |
| 525 | Towtruck                    |
| 526 | Fortune                     |
| 527 | Cadrona                     |
| 528 | FBI Truck                   |
| 529 | Willard                     |
| 530 | Forklift                    |
| 531 | Tractor                     |
| 532 | Combine Harvester           |
| 533 | Feltzer                     |
| 534 | Remington                   |
| 535 | Slamvan                     |
| 536 | Blade                       |
| 537 | Freight                     |
| 538 | Brown Streak                |
| 539 | Vortex                      |
| 540 | Vincent                     |
| 541 | Bullet                      |
| 542 | Clover                      |
| 543 | Sadler                      |
| 544 | Fire Truck Ladder           |
| 545 | Hustler                     |
| 546 | Intruder                    |
| 547 | Primo                       |
| 548 | Cargobob                    |
| 549 | Tampa                       |
| 550 | Sunrise                     |
| 551 | Merit                       |
| 552 | Utility Van                 |
| 553 | Nevada                      |
| 554 | Yosemite                    |
| 555 | Windsor                     |
| 556 | Monster 2                   |
| 557 | Monster 3                   |
| 558 | Uranus                      |
| 559 | Jester                      |
| 560 | Sultan                      |
| 561 | Stratum                     |
| 562 | Elegy                       |
| 563 | Raindance                   |
| 564 | RC Tiger                    |
| 565 | Flash                       |
| 566 | Tahoma                      |
| 567 | Savanna                     |
| 568 | Bandito                     |
| 569 | Freight Train Flatbed       |
| 570 | Streak Train Trailer        |
| 571 | Kart                        |
| 572 | Mower                       |
| 573 | Dune                        |
| 574 | Sweeper                     |
| 575 | Broadway                    |
| 576 | Tornado                     |
| 577 | AT-400                      |
| 578 | DFT-30                      |
| 579 | Huntley                     |
| 580 | Stafford                    |
| 581 | BF-400                      |
| 582 | Newsvan                     |
| 583 | Tug                         |
| 584 | Trailer (Tanker Commando)   |
| 585 | Emperor                     |
| 586 | Wayfarer                    |
| 587 | Euros                       |
| 588 | Hotdog                      |
| 589 | Club                        |
| 590 | Box Freight                 |
| 591 | Trailer 3                   |
| 592 | Andromada                   |
| 593 | Dodo                        |
| 594 | RC Cam                      |
| 595 | Launch                      |
| 596 | Police LS                   |
| 597 | Police SF                   |
| 598 | Police LV                   |
| 599 | Police Ranger               |
| 600 | Picador                     |
| 601 | S.W.A.T.                    |
| 602 | Alpha                       |
| 603 | Phoenix                     |
| 604 | Glendale Damaged            |
| 605 | Sadler Damaged              |
| 606 | Baggage Trailer (covered)   |
| 607 | Baggage Trailer (Uncovered) |
| 608 | Trailer (Stairs)            |
| 609 | Boxville Mission            |
| 610 | Farm Trailer                |
| 611 | Street Clean Trailer        |
]]
---@alias vehicleId 400|401|402|403|404|405|406|407|408|409|410|411|412|413|414|415|416|417|418|419|420|421|422|423|424|425|426|427|428|429|430|431|432|433|434|435|436|437|438|439|440|441|442|443|444|445|446|447|448|449|450|451|452|453|454|455|456|457|458|459|460|461|462|463|464|465|466|467|468|469|470|471|472|473|474|475|476|477|478|479|480|481|482|483|484|485|486|487|488|489|490|491|492|493|494|495|496|497|498|499|500|501|502|503|504|505|506|507|508|509|510|511|512|513|514|515|516|517|518|519|520|521|522|523|524|525|526|527|528|529|530|531|532|533|534|535|536|537|538|539|540|541|542|543|544|545|546|547|548|549|550|551|552|553|554|555|556|557|558|559|560|561|562|563|564|565|566|567|568|569|570|571|572|573|574|575|576|577|578|579|580|581|582|583|584|585|586|587|588|589|590|591|592|593|594|595|596|597|598|599|600|601|602|603|604|605|606|607|608|609|610|611

---@alias vehicleName "Landstalker"|"Bravura"|"Buffalo"|"Linerunner"|"Perennial"|"Sentinel"|"Dumper"|"Fire Truck"|"Trashmaster"|"Stretch"|"Manana"|"Infernus"|"Voodoo"|"Pony"|"Mule"|"Cheetah"|"Ambulance"|"Leviathan"|"Moonbeam"|"Esperanto"|"Taxi"|"Washington"|"Bobcat"|"Mr. Whoopee"|"BF Injection"|"Hunter"|"Premier"|"Enforcer"|"Securicar"|"Banshee"|"Predator"|"Bus"|"Rhino"|"Barracks"|"Hotknife"|"Trailer 1"|"Previon"|"Coach"|"Cabbie"|"Stallion"|"Rumpo"|"RC Bandit"|"Romero"|"Packer"|"Monster"|"Admiral"|"Squalo"|"Seasparrow"|"Pizzaboy"|"Tram"|"Trailer 2"|"Turismo"|"Speeder"|"Reefer"|"Tropic"|"Flatbed"|"Yankee"|"Caddy"|"Solair"|"Berkley's RC Van"|"Skimmer"|"PCJ-600"|"Faggio"|"Freeway"|"RC Baron"|"RC Raider"|"Glendale"|"Oceanic"|"Sanchez"|"Sparrow"|"Patriot"|"Quadbike"|"Coastguard"|"Dinghy"|"Hermes"|"Sabre"|"Rustler"|"ZR-350"|"Walton"|"Regina"|"Comet"|"BMX"|"Burrito"|"Camper"|"Marquis"|"Baggage"|"Dozer"|"Maverick"|"News Chopper"|"Rancher"|"FBI Rancher"|"Virgo"|"Greenwood"|"Jetmax"|"Hotring Racer"|"Sandking"|"Blista Compact"|"Police Maverick"|"Boxville"|"Benson"|"Mesa"|"RC Goblin"|"Hotring Racer 2"|"Hotring Racer 3"|"Bloodring Banger"|"Rancher Lure"|"Super GT"|"Elegant"|"Journey"|"Bike"|"Mountain Bike"|"Beagle"|"Cropduster"|"Stuntplane"|"Tanker"|"Roadtrain"|"Nebula"|"Majestic"|"Buccaneer"|"Shamal"|"Hydra"|"FCR-900"|"NRG-500"|"HPV1000"|"Cement Truck"|"Towtruck"|"Fortune"|"Cadrona"|"FBI Truck"|"Willard"|"Forklift"|"Tractor"|"Combine Harvester"|"Feltzer"|"Remington"|"Slamvan"|"Blade"|"Freight"|"Brown Streak"|"Vortex"|"Vincent"|"Bullet"|"Clover"|"Sadler"|"Fire Truck Ladder"|"Hustler"|"Intruder"|"Primo"|"Cargobob"|"Tampa"|"Sunrise"|"Merit"|"Utility Van"|"Nevada"|"Yosemite"|"Windsor"|"Monster 2"|"Monster 3"|"Uranus"|"Jester"|"Sultan"|"Stratum"|"Elegy"|"Raindance"|"RC Tiger"|"Flash"|"Tahoma"|"Savanna"|"Bandito"|"Freight Train Flatbed"|"Streak Train Trailer"|"Kart"|"Mower"|"Dune"|"Sweeper"|"Broadway"|"Tornado"|"AT-400"|"DFT-30"|"Huntley"|"Stafford"|"BF-400"|"Newsvan"|"Tug"|"Trailer (Tanker Commando)"|"Emperor"|"Wayfarer"|"Euros"|"Hotdog"|"Club"|"Box Freight"|"Trailer 3"|"Andromada"|"Dodo"|"RC Cam"|"Launch"|"Police LS"|"Police SF"|"Police LV"|"Police Ranger"|"Picador"|"S.W.A.T."|"Alpha"|"Phoenix"|"Glendale Damaged"|"Sadler Damaged"|"Baggage Trailer (covered)"|"Baggage Trailer (Uncovered)"|"Trailer (Stairs)"|"Boxville Mission"|"Farm Trailer"|"Street Clean Trailer

--[[
| ID  | Name    |
|-----|---------|
| 0   | cj      |
| 1   | truth   |
| 2   | maccer  |
| 7   | male01  |
| 9   | bfori   |
| 10  | bfost   |
| 11  | vbfycrp |
| 12  | bfyri   |
| 13  | bfyst   |
| 14  | bmori   |
| 15  | bmost   |
| 16  | bmyap   |
| 17  | bmybu   |
| 18  | bmybe   |
| 19  | bmydj   |
| 20  | bmyri   |
| 21  | bmycr   |
| 22  | bmyst   |
| 23  | wmybmx  |
| 24  | wbdyg1  |
| 25  | wbdyg2  |
| 26  | wmybp   |
| 27  | wmycon  |
| 28  | bmydrug |
| 29  | wmydrug |
| 30  | hmydrug |
| 31  | dwfolc  |
| 32  | dwmolc1 |
| 33  | dwmolc2 |
| 34  | dwmylc1 |
| 35  | hmogar  |
| 36  | wmygol1 |
| 37  | wmygol2 |
| 38  | hfori   |
| 39  | hfost   |
| 40  | hfyri   |
| 41  | hfyst   |
| 43  | hmori   |
| 44  | hmost   |
| 45  | hmybe   |
| 46  | hmyri   |
| 47  | hmycr   |
| 48  | hmyst   |
| 49  | omokung |
| 50  | wmymech |
| 51  | bmymoun |
| 52  | wmymoun |
| 53  | ofori   |
| 54  | ofost   |
| 55  | ofyri   |
| 56  | ofyst   |
| 57  | omori   |
| 58  | omost   |
| 59  | omyri   |
| 60  | omyst   |
| 61  | wmyplt  |
| 62  | wmopj   |
| 63  | bfypro  |
| 64  | hfypro  |
| 66  | bmypol1 |
| 67  | bmypol2 |
| 68  | wmoprea |
| 69  | sbfyst  |
| 70  | wmosci  |
| 71  | wmysgrd |
| 72  | swmyhp1 |
| 73  | swmyhp2 |
| 75  | swfopro |
| 76  | wfystew |
| 77  | swmotr1 |
| 78  | wmotr1  |
| 79  | bmotr1  |
| 80  | vbmybox |
| 81  | vwmybox |
| 82  | vhmyelv |
| 83  | vbmyelv |
| 84  | vimyelv |
| 85  | vwfypro |
| 87  | vwfyst1 |
| 88  | wfori   |
| 89  | wfost   |
| 90  | wfyjg   |
| 91  | wfyri   |
| 92  | wfyro   |
| 93  | wfyst   |
| 94  | wmori   |
| 95  | wmost   |
| 96  | wmyjg   |
| 97  | wmylg   |
| 98  | wmyri   |
| 99  | wmyro   |
| 100 | wmycr   |
| 101 | wmyst   |
| 102 | ballas1 |
| 103 | ballas2 |
| 104 | ballas3 |
| 105 | fam1    |
| 106 | fam2    |
| 107 | fam3    |
| 108 | lsv1    |
| 109 | lsv2    |
| 110 | lsv3    |
| 111 | maffa   |
| 112 | maffb   |
| 113 | mafboss |
| 114 | vla1    |
| 115 | vla2    |
| 116 | vla3    |
| 117 | triada  |
| 118 | triadb  |
| 120 | triboss |
| 121 | dnb1    |
| 122 | dnb2    |
| 123 | dnb3    |
| 124 | vmaff1  |
| 125 | vmaff2  |
| 126 | vmaff3  |
| 127 | vmaff4  |
| 128 | dnmylc  |
| 129 | dnfolc1 |
| 130 | dnfolc2 |
| 131 | dnfylc  |
| 132 | dnmolc1 |
| 133 | dnmolc2 |
| 134 | sbmotr2 |
| 135 | swmotr2 |
| 136 | sbmytr3 |
| 137 | swmotr3 |
| 138 | wfybe   |
| 139 | bfybe   |
| 140 | hfybe   |
| 141 | sofybu  |
| 142 | sbmyst  |
| 143 | sbmycr  |
| 144 | bmycg   |
| 145 | wfycrk  |
| 146 | hmycm   |
| 147 | wmybu   |
| 148 | bfybu   |
| 150 | wfybu   |
| 151 | dwfylc1 |
| 152 | wfypro  |
| 153 | wmyconb |
| 154 | wmybe   |
| 155 | wmypizz |
| 156 | bmobar  |
| 157 | cwfyhb  |
| 158 | cwmofr  |
| 159 | cwmohb1 |
| 160 | cwmohb2 |
| 161 | cwmyfr  |
| 162 | cwmyhb1 |
| 163 | bmyboun |
| 164 | wmyboun |
| 165 | wmomib  |
| 166 | bmymib  |
| 167 | wmybell |
| 168 | bmochil |
| 169 | sofyri  |
| 170 | somyst  |
| 171 | vwmybjd |
| 172 | vwfycrp |
| 173 | sfr1    |
| 174 | sfr2    |
| 175 | sfr3    |
| 176 | bmybar  |
| 177 | wmybar  |
| 178 | wfysex  |
| 179 | wmyammo |
| 180 | bmytatt |
| 181 | vwmycr  |
| 182 | vbmocd  |
| 183 | vbmycr  |
| 184 | vhmycr  |
| 185 | sbmyri  |
| 186 | somyri  |
| 187 | somybu  |
| 188 | swmyst  |
| 189 | wmyva   |
| 190 | copgrl3 |
| 191 | gungrl3 |
| 192 | mecgrl3 |
| 193 | nurgrl3 |
| 194 | crogrl3 |
| 195 | gangrl3 |
| 196 | cwfofr  |
| 197 | cwfohb  |
| 198 | cwfyfr1 |
| 199 | cwfyfr2 |
| 200 | cwmyhb2 |
| 201 | dwfylc2 |
| 202 | dwmylc2 |
| 203 | omykara |
| 204 | wmykara |
| 205 | wfyburg |
| 206 | vwmycd  |
| 207 | vhfypro |
| 209 | omonood |
| 210 | omoboat |
| 211 | wfyclot |
| 212 | vwmotr1 |
| 213 | vwmotr2 |
| 214 | vwfywai |
| 215 | sbfori  |
| 216 | swfyri  |
| 217 | wmyclot |
| 218 | sbfost  |
| 219 | sbfyri  |
| 220 | sbmocd  |
| 221 | sbmori  |
| 222 | sbmost  |
| 223 | shmycr  |
| 224 | sofori  |
| 225 | sofost  |
| 226 | sofyst  |
| 227 | somobu  |
| 228 | somori  |
| 229 | somost  |
| 230 | swmotr5 |
| 231 | swfori  |
| 232 | swfost  |
| 233 | swfyst  |
| 234 | swmocd  |
| 235 | swmori  |
| 236 | swmost  |
| 237 | shfypro |
| 238 | sbfypro |
| 239 | swmotr4 |
| 240 | swmyri  |
| 241 | smyst   |
| 242 | smyst2  |
| 243 | sfypro  |
| 244 | vbfyst2 |
| 245 | vbfypro |
| 246 | vhfyst3 |
| 247 | bikera  |
| 248 | bikerb  |
| 249 | bmypimp |
| 250 | swmycr  |
| 251 | wfylg   |
| 252 | wmyva2  |
| 253 | bmosec  |
| 254 | bikdrug |
| 255 | wmych   |
| 256 | sbfystr |
| 257 | swfystr |
| 258 | heck1   |
| 259 | heck2   |
| 260 | bmycon  |
| 261 | wmycd1  |
| 262 | bmocd   |
| 263 | vwfywa2 |
| 264 | wmoice  |
| 265 | tenpen  |
| 266 | pulaski |
| 267 | hern    |
| 268 | dwayne  |
| 269 | smoke   |
| 270 | sweet   |
| 271 | ryder   |
| 272 | forelli |
| 274 | laemt1  |
| 275 | lvemt1  |
| 276 | sfemt1  |
| 277 | lafd1   |
| 278 | lvfd1   |
| 279 | sffd1   |
| 280 | lapd1   |
| 281 | sfpd1   |
| 282 | lvpd1   |
| 283 | csher   |
| 284 | lapdm1  |
| 285 | swat    |
| 286 | fbi     |
| 287 | army    |
| 288 | dsher   |
| 290 | rose    |
| 291 | paul    |
| 292 | cesar   |
| 293 | ogloc   |
| 294 | wuzimu  |
| 295 | torino  |
| 296 | jizzy   |
| 297 | maddogg |
| 298 | cat     |
| 299 | claude  |
| 300 | ryder2  |
| 301 | ryder3  |
| 302 | emmet   |
| 303 | andre   |
| 304 | kendl   |
| 305 | jethro  |
| 306 | zero    |
| 307 | tbone   |
| 308 | sindaco |
| 309 | janitor |
| 310 | bbthin  |
| 311 | smokev  |
| 312 | psycho  |
]]
---@alias pedId 0|1|2|3|4|5|7|8|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30|32|33|34|35|36|37|42|43|44|45|46|47|48|49|50|51|52|57|58|59|60|61|62|65|66|67|68|70|71|72|73|78|79|80|81|82|83|84|94|95|96|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122|123|124|125|126|127|128|132|133|134|135|136|137|142|143|144|146|147|153|154|155|156|158|159|160|161|162|163|164|165|166|167|168|170|171|173|174|175|176|177|179|180|181|182|183|184|185|186|187|188|189|200|202|203|204|206|209|210|212|213|217|220|221|222|223|227|228|229|230|234|235|236|239|240|241|242|247|248|249|250|252|253|254|255|258|259|260|261|262|264|265|266|267|268|269|270|271|272|273|274|275|276|277|278|279|280|281|282|283|284|285|286|287|288|289|290|291|292|293|294|295|296|297|299|300|301|302|303|305|306|307|308|309|310|311|312|6|9|10|11|12|13|31|38|39|40|41|53|54|55|56|63|64|69|75|76|77|85|86|87|88|89|90|91|92|93|129|130|131|138|139|140|141|145|148|150|151|152|157|169|172|178|190|191|192|193|194|195|196|197|198|199|201|205|207|211|214|215|216|218|219|224|225|226|231|232|233|237|238|243|244|245|246|251|256|257|263|298|304

---@alias worldSpecialProperty "hovercars" | "aircars" | "extrabunny" | "extrajump" | "randomfoliage" | "snipermoon" | "extraairresistance" | "underworldwarp" | "vehiclesunglare" | "coronaztest" | "watercreatures" |  "burnflippedcars" | "fireballdestruct"

--[[
| ID |        Name        |
|:--:|:------------------:|
|  0 | Fist               |
|  1 | Brassknuckle       |
|  2 | Golfclub           |
|  3 | Nightstick         |
|  4 | Knife              |
|  5 | Bat                |
|  6 | Shovel             |
|  7 | Poolstick          |
|  8 | Katana             |
|  9 | Chainsaw           |
| 22 | Colt 45            |
| 23 | Silenced           |
| 24 | Deagle             |
| 25 | Shotgun            |
| 26 | Sawed-off          |
| 27 | Combat Shotgun     |
| 28 | Uzi                |
| 29 | MP5                |
| 32 | Tec-9              |
| 30 | AK-47              |
| 31 | M4                 |
| 33 | Rifle              |
| 34 | Sniper             |
| 35 | Rocket Launcher    |
| 36 | Rocket Launcher HS |
| 37 | Flamethrower       |
| 38 | Minigun            |
| 16 | Grenade            |
| 17 | Teargas            |
| 18 | Molotov            |
| 39 | Satchel            |
| 41 | Spraycan           |
| 42 | Fire Extinguisher  |
| 43 | Camera             |
| 10 | Dildo              |
| 11 | Dildo              |
| 12 | Vibrator           |
| 14 | Flower             |
| 15 | Cane               |
| 44 | Nightvision        |
| 45 | Infrared           |
| 46 | Parachute          |
| 40 | Bomb               |
]]
---@alias weaponId 0|1|2|3|4|5|6|7|8|9|22|23|24|25|26|27|28|29|32|30|31|33|34|35|36|37|38|16|17|18|39|41|42|43|10|11|12|14|15|44|45|46|40

---@alias controlName "fire"|"aim_weapon"|"next_weapon"|"previous_weapon"|"forwards"|"backwards"|"left"|"right"|"zoom_in"|"zoom_out"|"change_camera"|"jump"|"sprint"|"look_behind"|"crouch"|"action"|"walk"|"conversation_yes"|"conversation_no"|"group_control_forwards"|"group_control_back"|"enter_exit"|"vehicle_fire"|"vehicle_secondary_fire"|"vehicle_left"|"vehicle_right"|"steer_forward"|"steer_back"|"accelerate"|"brake_reverse"|"radio_next"|"radio_previous"|"radio_user_track_skip"|"horn"|"sub_mission"|"handbrake"|"vehicle_look_left"|"vehicle_look_right"|"vehicle_look_behind"|"vehicle_mouse_look"|"special_control_left"|"special_control_right"|"special_control_down"|"special_control_up"
---@alias keyState "up" | "down" | "both"
---@alias keyName "mouse1"|"mouse2"|"mouse3"|"mouse4"|"mouse5"|"mouse_wheel_up"|"mouse_wheel_down"|"arrow_l"|"arrow_u"|"arrow_r"|"arrow_d"|"0"|"1"|"2"|"3"|"4"|"5"|"6"|"7"|"8"|"9"|"a"|"b"|"c"|"d"|"e"|"f"|"g"|"h"|"i"|"j"|"k"|"l"|"m"|"n"|"o"|"p"|"q"|"r"|"s"|"t"|"u"|"v"|"w"|"x"|"y"|"z"|"num_0"|"num_1"|"num_2"|"num_3"|"num_4"|"num_5"|"num_6"|"num_7"|"num_8"|"num_9"|"num_mul"|"num_add"|"num_sep"|"num_sub"|"num_div"|"num_dec"|"num_enter"|"F1"|"F2"|"F3"|"F4"|"F5"|"F6"|"F7"|"F8"|"F9"|"F10"|"F11"|"F12"|"escape"|"backspace"|"tab"|"lalt"|"ralt"|"enter"|"space"|"pgup"|"pgdn"|"end"|"home"|"insert"|"delete"|"lshift"|"rshift"|"lctrl"|"rctrl"|"["|"]"|"pause"|"capslock"|"scroll"|";"|","|"-"|"."|"/"|"#"|"\\"|"="


---@alias pedAnimBlockName "airport"|"attractors"|"bar"|"baseball"|"bd_fire"|"beach"|"benchpress"|"bf_injection"|"bike_dbz"|"biked"|"bikeh"|"bikeleap"|"bikes"|"bikev"|"bmx"|"bomber"|"box"|"bsktball"|"buddy"|"bus"|"camera"|"car"|"car_chat"|"carry"|"casino"|"chainsaw"|"choppa"|"clothes"|"coach"|"colt45"|"cop_ambient"|"cop_dvbyz"|"crack"|"crib"|"dam_jump"|"dancing"|"dealer"|"dildo"|"dodge"|"dozer"|"drivebys"|"fat"|"fight_b"|"fight_c"|"fight_d"|"fight_e"|"finale"|"finale2"|"flame"|"food"|"freeweights"|"gangs"|"ghands"|"ghetto_db"|"goggles"|"graffiti"|"graveyard"|"grenade"|"gymnasium"|"haircuts"|"heist9"|"int_house"|"int_office"|"int_shop"|"jst_buisness"|"kart"|"kissing"|"knife"|"lapdan1"|"lapdan2"|"lapdan3"|"lowrider"|"md_chase"|"md_end"|"medic"|"misc"|"mtb"|"muscular"|"nevada"|"on_lookers"|"otb"|"parachute"|"park"|"paulnmac"|"ped"|"player_dvbys"|"playidles"|"police"|"pool"|"poor"|"python"|"quad"|"quad_dbz"|"rapping"|"rifle"|"riot"|"rob_bank"|"rocket"|"rustler"|"ryder"|"scratching"|"shamal"|"shop"|"shotgun"|"silenced"|"skate"|"smoking"|"sniper"|"spraycan"|"strip"|"sunbathe"|"swat"|"sweet"|"swim"|"sword"|"tank"|"tattoos"|"tec"|"train"|"truck"|"uzi"|"van"|"vending"|"vortex"|"wayfarer"|"weapons"|"wuzi"

---@alias pedAnimName "2guns_crouchfire"|"abseil"|"arrestgun"|"atm"|"barcustom_get"|"barcustom_loop"|"barcustom_order"|"barman_idle"|"barserve_bottle"|"barserve_give"|"barserve_glass"|"barserve_in"|"barserve_loop"|"barserve_order"|"bat_1"|"bat_2"|"bat_3"|"bat_4"|"bat_block"|"bat_hit_1"|"bat_hit_2"|"bat_hit_3"|"bat_idle"|"bat_m"|"bat_part"|"bather"|"batherdown"|"batherup"|"bbalbat_idle_01"|"bbalbat_idle_02"|"bball_def_jump_shot"|"bball_def_loop"|"bball_def_stepl"|"bball_def_stepr"|"bball_dnk"|"bball_dnk_gli"|"bball_dnk_gli_o"|"bball_dnk_lnch"|"bball_dnk_lnch_o"|"bball_dnk_lnd"|"bball_dnk_o"|"bball_idle"|"bball_idle2"|"bball_idle2_o"|"bball_idle_o"|"bball_idleloop"|"bball_idleloop_o"|"bball_jump_cancel"|"bball_jump_cancel_o"|"bball_jump_end"|"bball_jump_shot"|"bball_jump_shot_o"|"bball_net_dnk_o"|"bball_pickup"|"bball_pickup_o"|"bball_react_miss"|"bball_react_score"|"bball_run"|"bball_run_o"|"bball_skidstop_l"|"bball_skidstop_l_o"|"bball_skidstop_r"|"bball_skidstop_r_o"|"bball_walk"|"bball_walk_o"|"bball_walk_start"|"bball_walk_start_o"|"bball_walkstop_l"|"bball_walkstop_l_o"|"bball_walkstop_r"|"bball_walkstop_r_o"|"bd_clap"|"bd_clap1"|"bd_fire1"|"bd_fire2"|"bd_fire3"|"bd_gf_wave"|"bd_gf_wave"|"bd_panic_01"|"bd_panic_02"|"bd_panic_03"|"bd_panic_04"|"bd_panic_loop"|"bed_in_l"|"bed_in_r"|"bed_loop_l"|"bed_loop_r"|"bed_out_l"|"bed_out_r"|"betslp_in"|"betslp_lkabt"|"betslp_loop"|"betslp_out"|"betslp_tnk"|"bf_getin_lhs"|"bf_getin_rhs"|"bf_getout_lhs"|"bf_getout_rhs"|"bike_elbowl"|"bike_elbowr"|"bike_fall_off"|"bike_fallr"|"bike_pickupl"|"bike_pickupr"|"bike_pullupl"|"bike_pullupr"|"biked_back"|"biked_drivebyft"|"biked_drivebylhs"|"biked_drivebyrhs"|"biked_fwd"|"biked_getoffback"|"biked_getofflhs"|"biked_getoffrhs"|"biked_hit"|"biked_jumponl"|"biked_jumponr"|"biked_kick"|"biked_left"|"biked_passenger"|"biked_pushes"|"biked_ride"|"biked_right"|"biked_shuffle"|"biked_still"|"bikeh_back"|"bikeh_drivebyft"|"bikeh_drivebylhs"|"bikeh_drivebyrhs"|"bikeh_fwd"|"bikeh_getoffback"|"bikeh_getofflhs"|"bikeh_getoffrhs"|"bikeh_hit"|"bikeh_jumponl"|"bikeh_jumponr"|"bikeh_kick"|"bikeh_left"|"bikeh_passenger"|"bikeh_pushes"|"bikeh_ride"|"bikeh_right"|"bikeh_still"|"bikes_back"|"bikes_drivebyft"|"bikes_drivebylhs"|"bikes_drivebyrhs"|"bikes_fwd"|"bikes_getoffback"|"bikes_getofflhs"|"bikes_getoffrhs"|"bikes_hit"|"bikes_jumponl"|"bikes_jumponr"|"bikes_kick"|"bikes_left"|"bikes_passenger"|"bikes_pushes"|"bikes_ride"|"bikes_right"|"bikes_snatch_l"|"bikes_snatch_r"|"bikes_still"|"bikev_back"|"bikev_drivebyft"|"bikev_drivebylhs"|"bikev_drivebyrhs"|"bikev_fwd"|"bikev_getoffback"|"bikev_getofflhs"|"bikev_getoffrhs"|"bikev_hit"|"bikev_jumponl"|"bikev_jumponr"|"bikev_kick"|"bikev_left"|"bikev_passenger"|"bikev_pushes"|"bikev_ride"|"bikev_right"|"bikev_still"|"bitchslap"|"bk_blnce_in"|"bk_blnce_out"|"bk_jmp"|"bk_rdy_in"|"bk_rdy_out"|"bmx_back"|"bmx_bunnyhop"|"bmx_celebrate"|"bmx_comeon"|"bmx_driveby_lhs"|"bmx_driveby_rhs"|"bmx_drivebyft"|"bmx_fwd"|"bmx_getoffback"|"bmx_getofflhs"|"bmx_getoffrhs"|"bmx_idleloop_01"|"bmx_idleloop_02"|"bmx_jumponl"|"bmx_jumponr"|"bmx_left"|"bmx_pedal"|"bmx_pushes"|"bmx_ride"|"bmx_right"|"bmx_sprint"|"bmx_still"|"bmx_talkleft_in"|"bmx_talkleft_loop"|"bmx_talkleft_out"|"bmx_talkright_in"|"bmx_talkright_loop"|"bmx_talkright_out"|"bng_wndw"|"bng_wndw_02"|"bom_plant"|"bom_plant_2idle"|"bom_plant_crouch_in"|"bom_plant_crouch_out"|"bom_plant_in"|"bom_plant_loop"|"bomber"|"boxhipin"|"boxhipup"|"boxshdwn"|"boxshup"|"brb_beard_01"|"brb_buy"|"brb_cut"|"brb_cut_in"|"brb_cut_out"|"brb_hair_01"|"brb_hair_02"|"brb_in"|"brb_loop"|"brb_out"|"brb_sit_in"|"brb_sit_loop"|"brb_sit_out"|"buddy_crouchfire"|"buddy_crouchreload"|"buddy_fire"|"buddy_fire_poor"|"buddy_reload"|"bus_close"|"bus_getin_lhs"|"bus_getin_rhs"|"bus_getout_lhs"|"bus_getout_rhs"|"bus_jacked_lhs"|"bus_open"|"bus_open_rhs"|"bus_pullout_lhs"|"bxhipwlk"|"bxhwlki"|"bxshwlk"|"bxshwlki"|"bxwlko"|"camcrch_cmon"|"camcrch_idleloop"|"camcrch_stay"|"camcrch_to_camstnd"|"camstnd_cmon"|"camstnd_idleloop"|"camstnd_lkabt"|"camstnd_to_camcrch"|"car_align_lhs"|"car_align_rhs"|"car_alignhi_lhs"|"car_alignhi_rhs"|"car_close_lhs"|"car_close_rhs"|"car_closedoor_lhs"|"car_closedoor_rhs"|"car_closedoorl_lhs"|"car_closedoorl_rhs"|"car_crawloutrhs"|"car_dead_lhs"|"car_dead_rhs"|"car_doorlocked_lhs"|"car_doorlocked_rhs"|"car_fallout_lhs"|"car_fallout_rhs"|"car_getin_lhs"|"car_getin_rhs"|"car_getinl_lhs"|"car_getinl_rhs"|"car_getout_lhs"|"car_getout_rhs"|"car_getoutl_lhs"|"car_getoutl_rhs"|"car_hookertalk"|"car_jackedlhs"|"car_jackedrhs"|"car_jumpin_lhs"|"car_jumpin_lhs"|"car_jumpin_rhs"|"car_lb"|"car_lb_pro"|"car_lb_weak"|"car_ljackedlhs"|"car_ljackedrhs"|"car_lshuffle_rhs"|"car_lsit"|"car_open_lhs"|"car_open_rhs"|"car_pullout_lhs"|"car_pullout_rhs"|"car_pulloutl_lhs"|"car_pulloutl_rhs"|"car_qjacked"|"car_rolldoor"|"car_rolldoorlo"|"car_rollout_lhs"|"car_rollout_rhs"|"car_sc1_bl"|"car_sc1_br"|"car_sc1_fl"|"car_sc1_fr"|"car_sc2_fl"|"car_sc3_br"|"car_sc3_fl"|"car_sc3_fr"|"car_sc4_bl"|"car_sc4_br"|"car_sc4_fl"|"car_sc4_fr"|"car_shuffle_rhs"|"car_sit"|"car_sit_pro"|"car_sit_weak"|"car_sitp"|"car_sitplo"|"car_talkm_in"|"car_talkm_loop"|"car_talkm_out"|"car_tune_radio"|"cards_in"|"cards_loop"|"cards_lose"|"cards_out"|"cards_pick_01"|"cards_pick_02"|"cards_raise"|"cards_win"|"carfone_in"|"carfone_loopa"|"carfone_loopa_to_b"|"carfone_loopb"|"carfone_loopb_to_a"|"carfone_out"|"carhit_hangon"|"carhit_tumble"|"cas_g2_gasko"|"case_pickup"|"cat_safe_end"|"cat_safe_open"|"cat_safe_open_o"|"cat_safe_rob"|"catch_box"|"choppa_back"|"choppa_bunnyhop"|"choppa_driveby_lhs"|"choppa_driveby_rhs"|"choppa_drivebyft"|"choppa_fwd"|"choppa_getoffback"|"choppa_getofflhs"|"choppa_getoffrhs"|"choppa_jumponl"|"choppa_jumponr"|"choppa_left"|"choppa_pedal"|"choppa_pushes"|"choppa_ride"|"choppa_right"|"choppa_sprint"|"choppa_still"|"climb_idle"|"climb_jump"|"climb_jump2fall"|"climb_jump_b"|"climb_pull"|"climb_stand"|"climb_stand_finish"|"clo_buy"|"clo_in"|"clo_out"|"clo_pose_hat"|"clo_pose_in"|"clo_pose_in_o"|"clo_pose_legs"|"clo_pose_loop"|"clo_pose_out"|"clo_pose_out_o"|"clo_pose_shoes"|"clo_pose_torso"|"clo_pose_watch"|"coach_inl"|"coach_inr"|"coach_opnl"|"coach_opnr"|"coach_outl"|"coach_outr"|"colt45_crouchfire"|"colt45_crouchreload"|"colt45_fire"|"colt45_fire_2hands"|"colt45_reload"|"cop_dvby_b"|"cop_dvby_ft"|"cop_dvby_l"|"cop_dvby_r"|"cop_getoutcar_lhs"|"cop_move_fwd"|"copbrowse_in"|"copbrowse_loop"|"copbrowse_nod"|"copbrowse_out"|"copbrowse_shake"|"coplook_in"|"coplook_loop"|"coplook_nod"|"coplook_out"|"coplook_shake"|"coplook_think"|"coplook_watch"|"coptraf_away"|"coptraf_come"|"coptraf_left"|"coptraf_stop"|"cover_dive_01"|"cover_dive_02"|"cower"|"cpr"|"crckdeth1"|"crckdeth2"|"crckdeth3"|"crckdeth4"|"crckidle1"|"crckidle2"|"crckidle3"|"crckidle4"|"crib_console_loop"|"crib_use_switch"|"crm_drgbst_01"|"crouch_roll_l"|"crouch_roll_r"|"crouchreload"|"crry_prtial"|"crush_jump"|"crushed"|"cs_dead_guy"|"cs_plyr_pt1"|"cs_plyr_pt2"|"cs_wuzi_pt1"|"cs_wuzi_pt2"|"csaw_1"|"csaw_2"|"csaw_3"|"csaw_g"|"csaw_hit_1"|"csaw_hit_2"|"csaw_hit_3"|"csaw_part"|"dam_arml_frmbk"|"dam_arml_frmft"|"dam_arml_frmlt"|"dam_armr_frmbk"|"dam_armr_frmft"|"dam_armr_frmrt"|"dam_dive_loop"|"dam_land"|"dam_launch"|"dam_legl_frmbk"|"dam_legl_frmft"|"dam_legl_frmlt"|"dam_legr_frmbk"|"dam_legr_frmft"|"dam_legr_frmrt"|"dam_stomach_frmbk"|"dam_stomach_frmft"|"dam_stomach_frmlt"|"dam_stomach_frmrt"|"dan_down_a"|"dan_left_a"|"dan_loop_a"|"dan_right_a"|"dan_up_a"|"dance_loop"|"dealer_deal"|"dealer_deal"|"dealer_idle"|"dealer_idle"|"dealer_idle_01"|"dealer_idle_02"|"dealer_idle_03"|"dealone"|"dildo_1"|"dildo_2"|"dildo_3"|"dildo_block"|"dildo_g"|"dildo_hit_1"|"dildo_hit_2"|"dildo_hit_3"|"dildo_idle"|"dnce_m_a"|"dnce_m_b"|"dnce_m_c"|"dnce_m_d"|"dnce_m_e"|"dnk_stndf_loop"|"dnk_stndm_loop"|"donutdrop"|"door_jet"|"door_kick"|"door_lhinge_o"|"door_rhinge_o"|"dozer_align_lhs"|"dozer_align_rhs"|"dozer_getin_lhs"|"dozer_getin_rhs"|"dozer_getout_lhs"|"dozer_getout_rhs"|"dozer_jacked_lhs"|"dozer_jacked_rhs"|"dozer_pullout_lhs"|"dozer_pullout_rhs"|"drive_boat"|"drive_boat_back"|"drive_boat_l"|"drive_boat_r"|"drive_l"|"drive_l_pro"|"drive_l_pro_slow"|"drive_l_slow"|"drive_l_weak"|"drive_l_weak_slow"|"drive_lo_l"|"drive_lo_r"|"drive_r"|"drive_r_pro"|"drive_r_pro_slow"|"drive_r_slow"|"drive_r_weak"|"drive_r_weak_slow"|"drive_truck"|"drive_truck_back"|"drive_truck_l"|"drive_truck_r"|"driveby_l"|"driveby_r"|"drivebyl_l"|"drivebyl_r"|"drnkbr_prtl"|"drnkbr_prtl_f"|"drown"|"drugs_buy"|"drugs_buy"|"duck_cower"|"eat_burger"|"eat_chicken"|"eat_pizza"|"eat_vomit_p"|"eat_vomit_sk"|"end_sc1_ply"|"end_sc1_ryd"|"end_sc1_smo"|"end_sc1_swe"|"end_sc2_ply"|"end_sc2_ryd"|"end_sc2_smo"|"end_sc2_swe"|"endchat_01"|"endchat_02"|"endchat_03"|"ev_dive"|"ev_step"|"f_smklean_loop"|"f_smklean_loop"|"facanger"|"facgum"|"facsurp"|"facsurpm"|"factalk"|"facurios"|"fall_back"|"fall_collapse"|"fall_fall"|"fall_front"|"fall_glide"|"fall_land"|"fall_skydive"|"fall_skydive"|"fall_skydive_accel"|"fall_skydive_die"|"fall_skydive_l"|"fall_skydive_r"|"fatidle"|"fatidle_armed"|"fatidle_csaw"|"fatidle_rocket"|"fatrun"|"fatrun_armed"|"fatrun_csaw"|"fatrun_rocket"|"fatsprint"|"fatwalk"|"fatwalk_armed"|"fatwalk_csaw"|"fatwalk_rocket"|"fatwalkst_armed"|"fatwalkst_rocket"|"fatwalkstart"|"fatwalkstart_csaw"|"fen_choppa_l1"|"fen_choppa_l2"|"fen_choppa_l3"|"fen_choppa_r1"|"fen_choppa_r2"|"fen_choppa_r3"|"ff_dam_bkw"|"ff_dam_fwd"|"ff_dam_fwd"|"ff_dam_left"|"ff_dam_right"|"ff_die_bkw"|"ff_die_fwd"|"ff_die_left"|"ff_die_right"|"ff_sit_eat1"|"ff_sit_eat2"|"ff_sit_eat3"|"ff_sit_in"|"ff_sit_in_l"|"ff_sit_in_r"|"ff_sit_look"|"ff_sit_loop"|"ff_sit_out_180"|"ff_sit_out_l_180"|"ff_sit_out_r_180"|"fight2idle"|"fighta_1"|"fighta_2"|"fighta_3"|"fighta_block"|"fighta_g"|"fighta_m"|"fightb_1"|"fightb_2"|"fightb_3"|"fightb_block"|"fightb_g"|"fightb_idle"|"fightb_m"|"fightc_1"|"fightc_2"|"fightc_3"|"fightc_block"|"fightc_blocking"|"fightc_g"|"fightc_idle"|"fightc_m"|"fightc_spar"|"fightd_1"|"fightd_2"|"fightd_3"|"fightd_block"|"fightd_g"|"fightd_idle"|"fightd_m"|"fightidle"|"fightkick"|"fightkick_b"|"fightsh_bwd"|"fightsh_fwd"|"fightsh_left"|"fightsh_right"|"fightshb"|"fightshf"|"fin_climb_in"|"fin_cop1_climbout"|"fin_cop1_climbout2"|"fin_cop1_fall"|"fin_cop1_loop"|"fin_cop1_loop"|"fin_cop1_shot"|"fin_cop1_stomp"|"fin_cop1_swing"|"fin_cop2_climbout"|"fin_hang_l"|"fin_hang_loop"|"fin_hang_r"|"fin_hang_slip"|"fin_jump_on"|"fin_land_car"|"fin_land_die"|"fin_legsup"|"fin_legsup_l"|"fin_legsup_loop"|"fin_legsup_r"|"fin_let_go"|"fin_switch_p"|"fin_switch_s"|"fixn_car_loop"|"fixn_car_out"|"flag_drop"|"flame_fire"|"flee_lkaround_01"|"floor_hit"|"floor_hit_f"|"flower_attack"|"flower_attack_m"|"flower_hit"|"fucku"|"gang_drivebylhs"|"gang_drivebylhs_bwd"|"gang_drivebylhs_fwd"|"gang_drivebyrhs"|"gang_drivebyrhs_bwd"|"gang_drivebyrhs_fwd"|"gang_drivebytop_lhs"|"gang_drivebytop_rhs"|"gang_gunstand"|"gas_cwr"|"gdb_car2_ply"|"gdb_car2_smo"|"gdb_car2_swe"|"gdb_car_ply"|"gdb_car_ryd"|"gdb_car_smo"|"gdb_car_swe"|"getup"|"getup_front"|"gf_carargue_01"|"gf_carargue_02"|"gf_carspot"|"gf_streetargue_01"|"gf_streetargue_02"|"gfwave2"|"gift_get"|"gift_give"|"girl_01"|"girl_02"|"gnstwall_injurd"|"goggles_put_on"|"grab_l"|"grab_r"|"graffiti_chkout"|"grlfrd_kiss_01"|"grlfrd_kiss_02"|"grlfrd_kiss_03"|"grlfrd_kiss_03"|"gsign1"|"gsign1lh"|"gsign2"|"gsign2lh"|"gsign3"|"gsign3lh"|"gsign4"|"gsign4lh"|"gsign5"|"gsign5lh"|"gum_eat"|"gun_2_idle"|"gun_butt"|"gun_butt_crouch"|"gun_stand"|"guncrouchbwd"|"guncrouchfwd"|"gunmove_bwd"|"gunmove_fwd"|"gunmove_l"|"gunmove_r"|"gym_barbell"|"gym_bike_celebrate"|"gym_bike_fast"|"gym_bike_faster"|"gym_bike_getoff"|"gym_bike_geton"|"gym_bike_pedal"|"gym_bike_slow"|"gym_bike_still"|"gym_bp_celebrate"|"gym_bp_down"|"gym_bp_getoff"|"gym_bp_geton"|"gym_bp_up_a"|"gym_bp_up_b"|"gym_bp_up_smooth"|"gym_free_a"|"gym_free_b"|"gym_free_celebrate"|"gym_free_down"|"gym_free_loop"|"gym_free_pickup"|"gym_free_putdown"|"gym_free_up_smooth"|"gym_jog_falloff"|"gym_shadowbox"|"gym_tread_celebrate"|"gym_tread_falloff"|"gym_tread_getoff"|"gym_tread_geton"|"gym_tread_jog"|"gym_tread_sprint"|"gym_tread_tired"|"gym_tread_walk"|"gym_walk_falloff"|"gymshadowbox"|"handscower"|"handsup"|"hangon_stun_loop"|"hangon_stun_turn"|"hiker_pose"|"hiker_pose_l"|"hit_back"|"hit_behind"|"hit_fightkick"|"hit_fightkick_b"|"hit_front"|"hit_gun_butt"|"hit_l"|"hit_r"|"hit_walk"|"hit_wall"|"hita_1"|"hita_2"|"hita_3"|"hitb_1"|"hitb_2"|"hitb_3"|"hitc_1"|"hitc_2"|"hitc_3"|"hitd_1"|"hitd_2"|"hitd_3"|"hndshkaa"|"hndshkba"|"hndshkca"|"hndshkcb"|"hndshkda"|"hndshkea"|"hndshkfa"|"hndshkfa_swt"|"ho_ass_slapped"|"idle_armed"|"idle_chat"|"idle_chat_02"|"idle_csaw"|"idle_csaw"|"idle_gang1"|"idle_hbhb"|"idle_rocket"|"idle_rocket"|"idle_stance"|"idle_taxi"|"idle_tired"|"idle_tired"|"idlestance_fat"|"idlestance_old"|"invite_no"|"invite_yes"|"jetpack_idle"|"jmp_wall1m_180"|"jog_femalea"|"jog_malea"|"jump_glide"|"jump_land"|"jump_launch"|"jump_launch_r"|"jump_roll"|"kart_drive"|"kart_getin_lhs"|"kart_getin_rhs"|"kart_getout_lhs"|"kart_getout_rhs"|"kart_l"|"kart_lb"|"kart_r"|"kat_throw_k"|"kat_throw_o"|"kat_throw_p"|"kd_left"|"kd_right"|"kill_knife_ped_damage"|"kill_knife_ped_die"|"kill_knife_player"|"kill_partial"|"knife_1"|"knife_2"|"knife_3"|"knife_4"|"knife_block"|"knife_g"|"knife_hit_1"|"knife_hit_2"|"knife_hit_3"|"knife_idle"|"knife_part"|"ko_shot_face"|"ko_shot_front"|"ko_shot_stom"|"ko_skid_back"|"ko_skid_front"|"ko_spin_l"|"ko_spin_r"|"lafin_player"|"lafin_sweet"|"lapdan_d"|"lapdan_d"|"lapdan_d"|"lapdan_p"|"lapdan_p"|"lapdan_p"|"laugh_01"|"lay_bac_in"|"lay_bac_loop"|"lay_bac_out"|"leanidle"|"leanin"|"leanout"|"lhgsign1"|"lhgsign2"|"lhgsign3"|"lhgsign4"|"lhgsign5"|"liftup"|"liftup05"|"liftup105"|"lkaround_in"|"lkaround_loop"|"lkaround_out"|"lkup_in"|"lkup_loop"|"lkup_out"|"lkup_point"|"lou_in"|"lou_loop"|"lou_out"|"lrgirl_bdbnce"|"lrgirl_hair"|"lrgirl_hurry"|"lrgirl_idle_to_l0"|"lrgirl_idleloop"|"lrgirl_l0_bnce"|"lrgirl_l0_loop"|"lrgirl_l0_to_l1"|"lrgirl_l12_to_l0"|"lrgirl_l1_bnce"|"lrgirl_l1_loop"|"lrgirl_l1_to_l2"|"lrgirl_l2_bnce"|"lrgirl_l2_loop"|"lrgirl_l2_to_l3"|"lrgirl_l345_to_l1"|"lrgirl_l3_bnce"|"lrgirl_l3_loop"|"lrgirl_l3_to_l4"|"lrgirl_l4_bnce"|"lrgirl_l4_loop"|"lrgirl_l4_to_l5"|"lrgirl_l5_bnce"|"lrgirl_l5_loop"|"m_smk_drag"|"m_smk_in"|"m_smk_loop"|"m_smk_out"|"m_smk_tap"|"m_smklean_loop"|"m_smklean_loop"|"m_smklean_loop"|"m_smkstnd_loop"|"m_smkstnd_loop"|"manwinb"|"manwind"|"md_bike_2_hang"|"md_bike_jmp_bl"|"md_bike_jmp_f"|"md_bike_lnd_bl"|"md_bike_lnd_die_bl"|"md_bike_lnd_die_f"|"md_bike_lnd_f"|"md_bike_lnd_roll"|"md_bike_lnd_roll_f"|"md_bike_punch"|"md_bike_punch_f"|"md_bike_shot_f"|"md_hang_lnd_roll"|"md_hang_loop"|"mrnf_loop"|"mrnm_loop"|"mscle_rckt_run"|"mscle_rckt_walkst"|"mscle_run_csaw"|"msclewalkst_armed"|"msclewalkst_csaw"|"mtb_back"|"mtb_bunnyhop"|"mtb_driveby_lhs"|"mtb_driveby_rhs"|"mtb_drivebyft"|"mtb_fwd"|"mtb_getoffback"|"mtb_getofflhs"|"mtb_getoffrhs"|"mtb_jumponl"|"mtb_jumponr"|"mtb_left"|"mtb_pedal"|"mtb_pushes"|"mtb_ride"|"mtb_right"|"mtb_sprint"|"mtb_still"|"muscleidle"|"muscleidle_armed"|"muscleidle_csaw"|"muscleidle_rocket"|"musclerun"|"musclerun_armed"|"musclesprint"|"musclewalk"|"musclewalk_armed"|"musclewalk_csaw"|"musclewalk_rocket"|"musclewalkstart"|"nevada_getin"|"nevada_getout"|"off_sit_2idle_180"|"off_sit_bored_loop"|"off_sit_crash"|"off_sit_drink"|"off_sit_idle_loop"|"off_sit_in"|"off_sit_read"|"off_sit_type_loop"|"off_sit_watch"|"panic_cower"|"panic_hide"|"panic_in"|"panic_loop"|"panic_out"|"panic_point"|"panic_shout"|"para_decel"|"para_decel_o"|"para_float"|"para_float_o"|"para_land"|"para_land_o"|"para_land_water"|"para_land_water_o"|"para_open"|"para_open_o"|"para_rip_land_o"|"para_rip_loop_o"|"para_rip_o"|"para_steerl"|"para_steerl_o"|"para_steerr"|"para_steerr_o"|"parksit_m_idlea"|"parksit_m_idleb"|"parksit_m_idlec"|"parksit_m_in"|"parksit_m_loop"|"parksit_m_out"|"parksit_w_idlea"|"parksit_w_idleb"|"parksit_w_idlec"|"parksit_w_in"|"parksit_w_loop"|"parksit_w_out"|"pass_driveby_bwd"|"pass_driveby_bwd"|"pass_driveby_fwd"|"pass_driveby_fwd"|"pass_driveby_lhs"|"pass_driveby_lhs"|"pass_driveby_rhs"|"pass_driveby_rhs"|"pass_rifle_o"|"pass_rifle_ped"|"pass_rifle_ply"|"pass_smoke_in_car"|"ped_console_loop"|"ped_console_loose"|"ped_console_win"|"pedals_fast"|"pedals_med"|"pedals_slow"|"pedals_still"|"phone_in"|"phone_out"|"phone_talk"|"piccrch_in"|"piccrch_out"|"piccrch_take"|"pickup_box"|"picstnd_in"|"picstnd_out"|"picstnd_take"|"piss_in"|"piss_loop"|"piss_out"|"plane_align_lhs"|"plane_close"|"plane_door"|"plane_exit"|"plane_getin"|"plane_getout"|"plane_hijack"|"plane_open"|"playa_kiss_01"|"playa_kiss_02"|"playa_kiss_03"|"playa_kiss_03"|"player_01"|"player_sneak"|"player_sneak_walkstart"|"plc_drgbst_01"|"plc_drgbst_02"|"plunger_01"|"ply_cash"|"plyr_drivebybwd"|"plyr_drivebyfwd"|"plyr_drivebylhs"|"plyr_drivebyrhs"|"plyr_hndshldr_01"|"plyr_shkhead"|"plyrlean_loop"|"pnm_argue1_a"|"pnm_argue1_b"|"pnm_argue2_a"|"pnm_argue2_b"|"pnm_loop_a"|"pnm_loop_b"|"point_in"|"point_loop"|"point_out"|"pointup_in"|"pointup_loop"|"pointup_out"|"pointup_shout"|"pool_chalkcue"|"pool_idle_stance"|"pool_long_shot"|"pool_long_shot_o"|"pool_long_start"|"pool_long_start_o"|"pool_med_shot"|"pool_med_shot_o"|"pool_med_start"|"pool_med_start_o"|"pool_place_white"|"pool_short_shot"|"pool_short_shot_o"|"pool_short_start"|"pool_short_start_o"|"pool_walk"|"pool_walk_start"|"pool_xlong_shot"|"pool_xlong_shot_o"|"pool_xlong_start"|"pool_xlong_start_o"|"prst_loopa"|"prtial_gngtlka"|"prtial_gngtlkb"|"prtial_gngtlkb"|"prtial_gngtlkc"|"prtial_gngtlkc"|"prtial_gngtlkd"|"prtial_gngtlkd"|"prtial_gngtlke"|"prtial_gngtlke"|"prtial_gngtlkf"|"prtial_gngtlkf"|"prtial_gngtlkg"|"prtial_gngtlkg"|"prtial_gngtlkh"|"prtial_gngtlkh"|"prtial_hndshk_01"|"prtial_hndshk_biz_01"|"pun_cash"|"pun_holler"|"pun_loop"|"putdwn"|"putdwn05"|"putdwn105"|"python_crouchfire"|"python_crouchreload"|"python_fire"|"python_fire_poor"|"python_reload"|"quad_back"|"quad_driveby_ft"|"quad_driveby_lhs"|"quad_driveby_rhs"|"quad_fwd"|"quad_getoff_b"|"quad_getoff_lhs"|"quad_getoff_rhs"|"quad_geton_lhs"|"quad_geton_rhs"|"quad_hit"|"quad_kick"|"quad_left"|"quad_passenger"|"quad_reverse"|"quad_ride"|"quad_right"|"rail_fall"|"rail_fall_crawl"|"rap_a_in"|"rap_a_loop"|"rap_a_loop"|"rap_a_out"|"rap_b_in"|"rap_b_loop"|"rap_b_loop"|"rap_b_out"|"rap_c_loop"|"rap_c_loop"|"rhgsign1"|"rhgsign2"|"rhgsign3"|"rhgsign4"|"rhgsign5"|"rifle_crouchfire"|"rifle_crouchload"|"rifle_fire"|"rifle_fire_poor"|"rifle_load"|"riot_angry"|"riot_angry_b"|"riot_challenge"|"riot_chant"|"riot_fuku"|"riot_punches"|"riot_shout"|"roadcross"|"roadcross_female"|"roadcross_gang"|"roadcross_old"|"rob_2idle"|"rob_loop"|"rob_loop_threat"|"rob_shifty"|"rob_stickup_in"|"rocketfire"|"roulette_bet"|"roulette_in"|"roulette_loop"|"roulette_lose"|"roulette_out"|"roulette_win"|"run_1armed"|"run_armed"|"run_civi"|"run_csaw"|"run_dive"|"run_fat"|"run_fatold"|"run_gang1"|"run_left"|"run_old"|"run_player"|"run_right"|"run_rocket"|"run_rocket"|"run_stop"|"run_stopr"|"run_wuzi"|"ryd_beckon_01"|"ryd_beckon_02"|"ryd_beckon_03"|"ryd_die_pt1"|"ryd_die_pt2"|"sawnoff_reload"|"sbathe_f_lieb2sit"|"sbathe_f_out"|"sc_ltor"|"sc_rtol"|"scdldlp"|"scdlulp"|"scdrdlp"|"scdrulp"|"sclng_l"|"sclng_r"|"scmid_l"|"scmid_r"|"scratchballs_01"|"scshrtl"|"scshrtr"|"seat_down"|"seat_idle"|"seat_lr"|"seat_talk_01"|"seat_talk_02"|"seat_up"|"seat_watch"|"sf_jumpwall"|"shake_cara"|"shake_cark"|"shake_carsh"|"shamal_align"|"shamal_getin_lhs"|"shamal_getout_lhs"|"shamal_open"|"shift"|"shldr"|"shop_cashier"|"shop_in"|"shop_looka"|"shop_lookb"|"shop_loop"|"shop_out"|"shop_pay"|"shop_pay"|"shop_shelf"|"shot_leftp"|"shot_partial"|"shot_partial_b"|"shot_rightp"|"shotgun_crouchfire"|"shotgun_fire"|"shotgun_fire_poor"|"shout_01"|"shout_02"|"shout_in"|"shout_loop"|"shout_out"|"shove_partial"|"shp_1h_lift"|"shp_1h_lift_end"|"shp_1h_ret"|"shp_1h_ret_s"|"shp_2h_lift"|"shp_2h_lift_end"|"shp_2h_ret"|"shp_2h_ret_s"|"shp_ar_lift"|"shp_ar_lift_end"|"shp_ar_ret"|"shp_ar_ret_s"|"shp_duck"|"shp_duck_aim"|"shp_duck_fire"|"shp_g_lift_in"|"shp_g_lift_out"|"shp_gun_aim"|"shp_gun_duck"|"shp_gun_fire"|"shp_gun_grab"|"shp_gun_threat"|"shp_handsup_scr"|"shp_handsup_scr"|"shp_jump_glide"|"shp_jump_land"|"shp_jump_launch"|"shp_rob_givecash"|"shp_rob_handsup"|"shp_rob_react"|"shp_serve_end"|"shp_serve_idle"|"shp_serve_loop"|"shp_serve_start"|"shp_thank"|"shp_tray_in"|"shp_tray_in"|"shp_tray_lift"|"shp_tray_lift_in"|"shp_tray_lift_loop"|"shp_tray_lift_out"|"shp_tray_out"|"shp_tray_out"|"shp_tray_pose"|"shp_tray_pose"|"shp_tray_return"|"silence_fire"|"silence_reload"|"silencecrouchfire"|"sit_relaxed"|"sit_relaxed"|"sitnwait_in_w"|"sitnwait_loop_w"|"sitnwait_out_w"|"skate_idle"|"skate_run"|"skate_sprint"|"slot_bet_01"|"slot_bet_02"|"slot_in"|"slot_lose_out"|"slot_plyr"|"slot_wait"|"slot_win_out"|"smalplane_door"|"smkcig_prtl"|"smkcig_prtl_f"|"smlplane_door"|"smoke_01"|"smoke_in_car"|"smoke_ryd"|"spraycan_fire"|"spraycan_fire"|"spraycan_full"|"sprint_civi"|"sprint_panic"|"sprint_wuzi"|"stepsit_in"|"stepsit_loop"|"stepsit_out"|"str_a2b"|"str_b2a"|"str_b2c"|"str_c1"|"str_c2"|"str_c2b"|"str_loop_a"|"str_loop_b"|"str_loop_c"|"stretch"|"strip_a"|"strip_b"|"strip_c"|"strip_d"|"strip_e"|"strip_f"|"strip_g"|"strleg"|"struggle_cesar"|"struggle_driver"|"swat_run"|"sweet_ass_slap"|"sweet_hndshldr_01"|"sweet_injuredloop"|"swim_breast"|"swim_crawl"|"swim_dive_under"|"swim_glide"|"swim_jumpout"|"swim_tread"|"swim_tread"|"swim_under"|"sword_1"|"sword_2"|"sword_3"|"sword_4"|"sword_block"|"sword_hit_1"|"sword_hit_2"|"sword_hit_3"|"sword_idle"|"sword_part"|"swt_breach_01"|"swt_breach_02"|"swt_breach_03"|"swt_go"|"swt_lkt"|"swt_sty"|"swt_vent_01"|"swt_vent_02"|"swt_vnt_sht_die"|"swt_vnt_sht_in"|"swt_vnt_sht_loop"|"swt_wllpk_l"|"swt_wllpk_l"|"swt_wllpk_l_back"|"swt_wllpk_l_back"|"swt_wllpk_r"|"swt_wllpk_r"|"swt_wllpk_r_back"|"swt_wllpk_r_back"|"swt_wllshoot_in_l"|"swt_wllshoot_in_l"|"swt_wllshoot_in_r"|"swt_wllshoot_in_r"|"swt_wllshoot_out_l"|"swt_wllshoot_out_l"|"swt_wllshoot_out_r"|"swt_wllshoot_out_r"|"tai_chi_in"|"tai_chi_loop"|"tai_chi_out"|"tank_align_lhs"|"tank_close_lhs"|"tank_doorlocked"|"tank_getin_lhs"|"tank_getout_lhs"|"tank_open_lhs"|"tap_hand"|"tap_hand"|"tap_hand"|"tap_handp"|"tat_arml_in_o"|"tat_arml_in_p"|"tat_arml_in_t"|"tat_arml_out_o"|"tat_arml_out_p"|"tat_arml_out_t"|"tat_arml_pose_o"|"tat_arml_pose_p"|"tat_arml_pose_t"|"tat_armr_in_o"|"tat_armr_in_p"|"tat_armr_in_t"|"tat_armr_out_o"|"tat_armr_out_p"|"tat_armr_out_t"|"tat_armr_pose_o"|"tat_armr_pose_p"|"tat_armr_pose_t"|"tat_back_in_o"|"tat_back_in_p"|"tat_back_in_t"|"tat_back_out_o"|"tat_back_out_p"|"tat_back_out_t"|"tat_back_pose_o"|"tat_back_pose_p"|"tat_back_pose_t"|"tat_back_sit_in_p"|"tat_back_sit_loop_p"|"tat_back_sit_out_p"|"tat_bel_in_o"|"tat_bel_in_t"|"tat_bel_out_o"|"tat_bel_out_t"|"tat_bel_pose_o"|"tat_bel_pose_t"|"tat_che_in_o"|"tat_che_in_p"|"tat_che_in_t"|"tat_che_out_o"|"tat_che_out_p"|"tat_che_out_t"|"tat_che_pose_o"|"tat_che_pose_p"|"tat_che_pose_t"|"tat_drop_o"|"tat_idle_loop_o"|"tat_idle_loop_t"|"tat_sit_in_o"|"tat_sit_in_p"|"tat_sit_in_t"|"tat_sit_loop_o"|"tat_sit_loop_p"|"tat_sit_loop_t"|"tat_sit_out_o"|"tat_sit_out_p"|"tat_sit_out_t"|"tec_crouchfire"|"tec_crouchreload"|"tec_fire"|"tec_reload"|"thrw_barl_thrw"|"time"|"tran_gtup"|"tran_hng"|"tran_ouch"|"tran_stmb"|"truck_align_lhs"|"truck_align_rhs"|"truck_close_lhs"|"truck_close_rhs"|"truck_closedoor_lhs"|"truck_closedoor_rhs"|"truck_driver"|"truck_getin"|"truck_getin_lhs"|"truck_getin_rhs"|"truck_getout_lhs"|"truck_getout_rhs"|"truck_jackedlhs"|"truck_jackedrhs"|"truck_open_lhs"|"truck_open_rhs"|"truck_pullout_lhs"|"truck_pullout_rhs"|"truck_shuffle"|"turn_180"|"turn_l"|"turn_r"|"tyd2car_bump"|"tyd2car_high"|"tyd2car_low"|"tyd2car_med"|"tyd2car_turnl"|"tyd2car_turnr"|"use_swipecard"|"uzi_crouchfire"|"uzi_crouchreload"|"uzi_fire"|"uzi_fire_poor"|"uzi_reload"|"van_close_back_lhs"|"van_close_back_rhs"|"van_crate_l"|"van_crate_r"|"van_fall_l"|"van_fall_r"|"van_getin_back_lhs"|"van_getin_back_rhs"|"van_getout_back_lhs"|"van_getout_back_rhs"|"van_lean_l"|"van_lean_r"|"van_open_back_lhs"|"van_open_back_rhs"|"van_pickup_e"|"van_pickup_s"|"van_stand"|"van_stand_crate"|"van_throw"|"vend_drink2_p"|"vend_drink_p"|"vend_eat1_p"|"vend_eat_p"|"vend_use"|"vend_use_pt2"|"vortex_getout_lhs"|"vortex_getout_rhs"|"walk_armed"|"walk_civi"|"walk_csaw"|"walk_doorpartial"|"walk_drunk"|"walk_fat"|"walk_fatold"|"walk_gang1"|"walk_gang2"|"walk_old"|"walk_player"|"walk_rocket"|"walk_rocket"|"walk_shuffle"|"walk_start"|"walk_start_armed"|"walk_start_csaw"|"walk_start_rocket"|"walk_start_rocket"|"walk_wuzi"|"walkstart_idle_01"|"wank_in"|"wank_loop"|"wank_out"|"wash_up"|"wash_up"|"wave_in"|"wave_loop"|"wave_out"|"weapon_crouch"|"weapon_csaw"|"weapon_csawlo"|"weapon_knifeidle"|"weapon_sniper"|"weapon_start_throw"|"weapon_throw"|"weapon_throwu"|"wf_back"|"wf_drivebyft"|"wf_drivebylhs"|"wf_drivebyrhs"|"wf_fwd"|"wf_getoffback"|"wf_getofflhs"|"wf_getoffrhs"|"wf_hit"|"wf_jumponl"|"wf_jumponr"|"wf_kick"|"wf_left"|"wf_passenger"|"wf_pushes"|"wf_ride"|"wf_right"|"wf_still"|"winwash_start"|"winwash_wash2beg"|"wof"|"woman_idlestance"|"woman_run"|"woman_runbusy"|"woman_runfatold"|"woman_runpanic"|"woman_runsexy"|"woman_walkbusy"|"woman_walkfatold"|"woman_walknorm"|"woman_walkold"|"woman_walkpro"|"woman_walksexy"|"woman_walkshop"|"wtchrace_cmon"|"wtchrace_in"|"wtchrace_loop"|"wtchrace_lose"|"wtchrace_out"|"wtchrace_win"|"wuzi_follow"|"wuzi_greet_plyr"|"wuzi_greet_wuzi"|"wuzi_grnd_chk"|"wuzi_stand_loop"|"wuzi_walk"|"xpressscratch"

--[[
| Fighting Style   | ID  |
|------------------|-----|
| STYLE_STANDARD   | 4   |
| STYLE_BOXING     | 5   |
| STYLE_KUNG_FU    | 6   |
| STYLE_KNEE_HEAD  | 7   |
| STYLE_GRAB_KICK  | 15  |
| STYLE_ELBOWS     | 16  |
]]
---@alias fightingStyleId 4 | 5 | 6 | 7 | 15 | 16


--[[
* 0: circle
* 1: cuboid
* 2: sphere
* 3: rectangle
* 4: polygon
* 5: tube
]]
---@alias colShapeTypeId 0 | 1 | 2 | 3 | 4 | 5

--[[
|           Property            |                       Value                        | Minimum value  | Maximum value  |                                                                             Notes                                                                             |
|:-----------------------------:|:--------------------------------------------------:|:--------------:|:--------------:|:-------------------------------------------------------------------------------------------------------------------------------------------------------------:|
| mass                          | Float                                              | 1.0            | 100000.0       |                                                                                                                                                               |
| turnMass                      | Float                                              | 0.0            | 1000000.0      |                                                                                                                                                               |
| dragCoeff                     | Float                                              | -200.0         | 200.0          |                                                                                                                                                               |
| centerOfMass                  | Table = { [1]=posX, [2]=posY, [3]=posZ } (floats)  | -10.0          | 10.0           | Get returns a table, set needs a table.                                                                                                                       |
| percentSubmerged              | Integer                                            | 1              | 99999          |                                                                                                                                                               |
| tractionMultiplier            | Float                                              | -100000.0      | 100000.0       |                                                                                                                                                               |
| tractionLoss                  | Float                                              | 0.0            | 100.0          |                                                                                                                                                               |
| tractionBias                  | Float                                              | 0.0            | 1.0            |                                                                                                                                                               |
| numberOfGears                 | Integer                                            | 1              | 5              |                                                                                                                                                               |
| maxVelocity                   | Float                                              | 0.1            | 200000.0       |                                                                                                                                                               |
| engineAcceleration            | Float                                              | 0.0            | 100000.0       |                                                                                                                                                               |
| engineInertia                 | Float                                              | -1000.0        | 1000.0         | Inertia of 0 can cause a LSOD. (Unable to divide by zero)                                                                                                     |
| driveType                     | String                                             | N/A            | N/A            | Use 'rwd', 'fwd' or 'awd'.                                                                                                                                    |
| engineType                    | String                                             | N/A            | N/A            | Use 'petrol', 'diesel' or 'electric'.                                                                                                                         |
| brakeDeceleration             | Float                                              | 0.1            | 100000.0       |                                                                                                                                                               |
| brakeBias                     | Float                                              | 0.0            | 1.0            |                                                                                                                                                               |
| ABS                           | Boolean                                            | true           | false          | Has no effect.                                                                                                                                                |
| steeringLock                  | Float                                              | 0.0            | 360.0          |                                                                                                                                                               |
| suspensionForceLevel          | Float                                              | 0.0            | 100.0          |                                                                                                                                                               |
| suspensionDamping             | Float                                              | 0.0            | 100.0          |                                                                                                                                                               |
| suspensionHighSpeedDamping    | Float                                              | 0.0            | 600.0          |                                                                                                                                                               |
| suspensionUpperLimit          | Float                                              | -50.0          | 50.0           | Can't be equal to suspensionLowerLimit.                                                                                                                       |
| suspensionLowerLimit          | Float                                              | -50.0          | 50.0           | Can't be equal to suspensionUpperLimit.                                                                                                                       |
| suspensionFrontRearBias       | Float                                              | 0.0            | 1.0            | Hardcoded maximum is 3.0, but values above 1.0 have no effect.                                                                                                |
| suspensionAntiDiveMultiplier  | Float                                              | 0.0            | 30.0           |                                                                                                                                                               |
| seatOffsetDistance            | Float                                              | -20.0          | 20.0           |                                                                                                                                                               |
| collisionDamageMultiplier     | Float                                              | 0.0            | 10.0           |                                                                                                                                                               |
| monetary                      | Integer                                            | 0              | 230195200      | Get works, set is disabled.                                                                                                                                   |
| modelFlags                    | Hexadecimal/Decimal                                | N/A            | N/A            | Property uses a decimal value, generated by a hexadecimal value. Either use 0x12345678 or tonumber ( "0x12345678" ). See projectcerbera for possible values.  |
| handlingFlags                 | Hexadecimal/Decimal                                | N/A            | N/A            | Property uses a decimal value, generated by a hexadecimal value. Either use 0x12345678 or tonumber ( "0x12345678" ). See projectcerbera for possible values.  |
| headLight                     | String                                             | N/A            | N/A            | Get works, set is disabled. Available values: 'long', 'small', 'big', 'tall'.                                                                                 |
| tailLight                     | String                                             | N/A            | N/A            | Get works, set is disabled. Available values: 'long', 'small', 'big', 'tall'.                                                                                 |
| animGroup                     | Integer                                            | ??             | ??             | Get works, set is disabled due to people not knowing this property was vehicle-based and caused crashes.                                                      |
]]
---@alias vehicleHandlingProperty "mass"|"turnMass"|"dragCoeff"|"centerOfMass"|"percentSubmerged"|"tractionMultiplier"|"tractionLoss"|"tractionBias"|"numberOfGears"|"maxVelocity"|"engineAcceleration"|"engineInertia"|"driveType"|"engineType"|"brakeDeceleration"|"brakeBias"|"ABS"|"steeringLock"|"suspensionForceLevel"|"suspensionDamping"|"suspensionHighSpeedDamping"|"suspensionUpperLimit"|"suspensionLowerLimit"|"suspensionFrontRearBias"|"suspensionAntiDiveMultiplier"|"seatOffsetDistance"|"collisionDamageMultiplier"|"monetary"|"modelFlags"|"handlingFlags"|"headLight"|"tailLight"|"animGroup"

--[[
* 0: Inflated
* 1: Flat
* 2: Fallen off
* 3: Collisionless
]]
---@alias vehicleWheelStateId 0 | 1 | 2 | 3

--[[
* 0: hood
* 1: trunk
* 2: front left
* 3: front right
* 4: rear left
* 5: rear right
]]
---@alias vehicleDoorId 0 | 1 | 2 | 3 | 4 | 5

--[[
* Cars:
    * 0: Front-left panel
    * 1: Front-right panel
    * 2: Rear-left panel
    * 3: Rear-right panel
    * 4: Windscreen
    * 5: Front bumper
    * 6: Rear bumper
* Planes:
    * 0: Engine Smoke (left engine for a Nevada or a Beagle)
    * 1: Engine Smoke (right engine for a Nevada or a Beagle)
    * 2: Rudder
    * 3: Elevators
    * 4: Ailerons
    * 5: Unknown
    * 6: Unknown
]]
---@alias vehiclePanelId 0 | 1 | 2 | 3 | 4 | 5 | 6

--[[
    How damaged the part is on the scale of 0 to 3, with 0 being undamaged and 3 being very damaged. How this is manifested depends on the panel and the vehicle.
]]
---@alias vehiclePanelStateId 0 | 1 | 2 | 3 

--[[
* Blade: 0,1,2
* Broadway: 0,1
* Camper: 0
* Elegy: 0,1,2
* Flash: 0,1,2
* Jester: 0,1,2
* Remington: 0,1,2
* Savanna: 0,1,2
* Slamvan: 0,1,2
* Sultan: 0,1,2
* Tornado: 0,1,2
* Uranus: 0,1,2

Use 3 to remove the paintjob.
]]
---@alias vehiclePaintjobId 0 | 1 | 2 | 3

--[[
* 0: No override, lights are set to default.
* 1: Lights are forced off.
* 2: Lights are forced on.
]]
---@alias vehicleOverrideLightStateId 0 | 1 | 2

--[[
    A whole number determining the new state of the light. 0 represents normal lights, and 1 represents broken lights.
]]
---@alias vehicleLightStateId 0 | 1

--[[
* 0: Front left
* 1: Front right
* 2: Rear right
* 3: Rear left
]]
---@alias vehicleLightId 0 | 1 | 2 | 3

--[[
* 0: Shut, intact (aka Closed, undamaged)
* 1: Ajar, intact (aka Slightly open, undamaged)
* 2: Shut, damaged (aka Closed, damaged)
* 3: Ajar, damaged (aka Slightly open, damaged)
* 4: Missing
]]
---@alias vehicleDoorStateId 0 | 1 | 2 | 3 | 4

--[[
| ID  | RGB           |
|-----|---------------|
| 0   | 0, 0, 0       |
| 1   | 245, 245, 245 |
| 2   | 42, 119, 161  |
| 3   | 132, 4, 16    |
| 4   | 38, 55, 57    |
| 5   | 134, 68, 110  |
| 6   | 215, 142, 16  |
| 7   | 76, 117, 183  |
| 8   | 189, 190, 198 |
| 9   | 94, 112, 114  |
| 10  | 70, 89, 122   |
| 11  | 101, 106, 121 |
| 12  | 93, 126, 141  |
| 13  | 88, 89, 90    |
| 14  | 214, 218, 214 |
| 15  | 156, 161, 163 |
| 16  | 51, 95, 63    |
| 17  | 115, 14, 26   |
| 18  | 123, 10, 42   |
| 19  | 159, 157, 148 |
| 20  | 59, 78, 120   |
| 21  | 115, 46, 62   |
| 22  | 105, 30, 59   |
| 23  | 150, 145, 140 |
| 24  | 81, 84, 89    |
| 25  | 63, 62, 69    |
| 26  | 165, 169, 167 |
| 27  | 99, 92, 90    |
| 28  | 61, 74, 104   |
| 29  | 151, 149, 146 |
| 30  | 66, 31, 33    |
| 31  | 95, 39, 43    |
| 32  | 132, 148, 171 |
| 33  | 118, 123, 124 |
| 34  | 100, 100, 100 |
| 35  | 90, 87, 82    |
| 36  | 37, 37, 39    |
| 37  | 45, 58, 53    |
| 38  | 147, 163, 150 |
| 39  | 109, 122, 136 |
| 40  | 34, 25, 24    |
| 41  | 111, 103, 95  |
| 42  | 124, 28, 42   |
| 43  | 95, 10, 21    |
| 44  | 25, 56, 38    |
| 45  | 93, 27, 32    |
| 46  | 157, 152, 114 |
| 47  | 122, 117, 96  |
| 48  | 152, 149, 134 |
| 49  | 173, 176, 176 |
| 50  | 132, 137, 136 |
| 51  | 48, 79, 69    |
| 52  | 77, 98, 104   |
| 53  | 22, 34, 72    |
| 54  | 39, 47, 75    |
| 55  | 125, 98, 86   |
| 56  | 158, 164, 171 |
| 57  | 156, 141, 113 |
| 58  | 109, 24, 34   |
| 59  | 78, 104, 129  |
| 60  | 156, 156, 152 |
| 61  | 145, 115, 71  |
| 62  | 102, 28, 38   |
| 63  | 148, 157, 159 |
| 64  | 164, 167, 165 |
| 65  | 142, 140, 70  |
| 66  | 52, 26, 30    |
| 67  | 106, 122, 140 |
| 68  | 170, 173, 142 |
| 69  | 171, 152, 143 |
| 70  | 133, 31, 46   |
| 71  | 111, 130, 151 |
| 72  | 88, 88, 83    |
| 73  | 154, 167, 144 |
| 74  | 96, 26, 35    |
| 75  | 32, 32, 44    |
| 76  | 164, 160, 150 |
| 77  | 170, 157, 132 |
| 78  | 120, 34, 43   |
| 79  | 14, 49, 109   |
| 80  | 114, 42, 63   |
| 81  | 123, 113, 94  |
| 82  | 116, 29, 40   |
| 83  | 30, 46, 50    |
| 84  | 77, 50, 47    |
| 85  | 124, 27, 68   |
| 86  | 46, 91, 32    |
| 87  | 57, 90, 131   |
| 88  | 109, 40, 55   |
| 89  | 167, 162, 143 |
| 90  | 175, 177, 177 |
| 91  | 54, 65, 85    |
| 92  | 109, 108, 110 |
| 93  | 15, 106, 137  |
| 94  | 32, 75, 107   |
| 95  | 43, 62, 87    |
| 96  | 155, 159, 157 |
| 97  | 108, 132, 149 |
| 98  | 77, 93, 96    |
| 99  | 174, 155, 127 |
| 100 | 64, 108, 143  |
| 101 | 31, 37, 59    |
| 102 | 171, 146, 118 |
| 103 | 19, 69, 115   |
| 104 | 150, 129, 108 |
| 105 | 100, 104, 106 |
| 106 | 16, 80, 130   |
| 107 | 161, 153, 131 |
| 108 | 56, 86, 148   |
| 109 | 82, 86, 97    |
| 110 | 127, 105, 86  |
| 111 | 140, 146, 154 |
| 112 | 89, 110, 135  |
| 113 | 71, 53, 50    |
| 114 | 68, 98, 79    |
| 115 | 115, 10, 39   |
| 116 | 34, 52, 87    |
| 117 | 100, 13, 27   |
| 118 | 163, 173, 198 |
| 119 | 105, 88, 83   |
| 120 | 155, 139, 128 |
| 121 | 98, 11, 28    |
| 122 | 91, 93, 94    |
| 123 | 98, 68, 40    |
| 124 | 115, 24, 39   |
| 125 | 27, 55, 109   |
| 126 | 236, 106, 174 |
]]
---@alias vehiclePaletteColor 0|1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30|31|32|33|34|35|36|37|38|39|40|41|42|43|44|45|46|47|48|49|50|51|52|53|54|55|56|57|58|59|60|61|62|63|64|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|84|85|86|87|88|89|90|91|92|93|94|95|96|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|116|117|118|119|120|121|122|123|124|125|126

---@alias sirenTypeId 1 | 2 | 3 | 4 | 5 | 6 

--[[
* 0: Hood
* 1: Vent
* 2: Spoiler
* 3: Sideskirt
* 4: Front Bullbars
* 5: Rear Bullbars
* 6: Headlights
* 7: Roof
* 8: Nitro
* 9: Hydraulics
* 10: Stereo
* 11: Unknown
* 12: Wheels
* 13: Exhaust
* 14: Front Bumper
* 15: Rear Bumper
* 16: Misc
]]
---@alias vehicleSlotId 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 | 12 | 14 | 14 | 15 | 16
---@alias vehicleSlotName "Hood"|"Vent"|"Spoiler"|"Sideskirt"|"Front Bullbars"|"Rear Bullbars"|"Headlights"|"Roof"|"Nitro"|"Hydraulics"|"Stereo"|"Unknown"|"Wheels"|"Exhaust"|"Front Bumper"|"Rear Bumper"|"Misc"

--[[
* Automobile: Cars, vans and trucks
* Plane
* Bike: Motorbikes
* Helicopter
* Boat
* Train
* Trailer: A trailer for a truck
* BMX
* Monster Truck
* Quad: Quadbikes
* An empty string (some trailers)
]]
---@alias vehicleType "Automobile"|"Plane"|"Bike"|"Helicopter"|"Boat"|"Train"|"Trailer"|"BMX"|"Monster Truck"|"Quad"|""

--[[
* 0: Front-left
* 1: Front-right
* 2: Rear-left
* 3: Rear-right
]]
---@alias vehicleSeatId 0 | 1 | 2 | 3