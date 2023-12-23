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


