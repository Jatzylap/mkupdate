kill @e[type=armor_stand,x=-356,y=0,z=71,dx=19,dy=17,dz=16]
kill @e[tag=curs0r]
clone -337 2 57 -316 12 69 -356 1 88 replace force
setblock -299 4 53 structure_block[mode=save]{ignoreEntities:0b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"SAVE",name:"minecraft:game",posX:-8,posY:-4,posZ:2,showair:0b,showboundingbox:0b,sizeX:17,sizeY:12,sizeZ:17} destroy
setblock -299 3 53 redstone_block
setblock -357 2 70 structure_block[mode=load]{ignoreEntities:0b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"minecraft:game",posX:1,posY:0,posZ:1,showair:0b,showboundingbox:0b,sizeX:17,sizeY:12,sizeZ:17}
setblock -357 1 70 redstone_block
tag @e[type=armor_stand,x=-356,y=0,z=71,dx=19,dy=17,dz=16] remove 3vent
tellraw @s ["",{"text":"[","color":"light_purple","bold":true},{"text":"@","color":"gold","obfuscated":true},{"text":"]","color":"light_purple","bold":true},{"text":" Saving platform settings...","color":"aqua"}]
execute unless data block -308 15 68 {Text2:'{"bold":true,"color":"aqua","text":"Branch?"}'} run tellraw @s ["",{"text":"\n[","color":"light_purple","bold":true},{"text":"@","color":"gold","obfuscated":true},{"text":"]","color":"light_purple","bold":true},{"text":" Successfully routed the Game to:\n","color":"green"},{"text":" "},{"text":" Branch: "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"nbt":"Text2","block":"-308 15 68","interpret":true},{"text":"\n "},{"text":" Category: "},{"text":" "},{"text":" "},{"text":" "},{"nbt":"Text2","block":"-308 15 69","interpret":true},{"text":"\n "},{"text":" "},{"text":"Game tower: "},{"text":" "},{"nbt":"Text2","block":"-308 15 70","interpret":true},{"text":" \n","color":"green"}]
execute unless data block -308 15 68 {Text2:'{"bold":true,"color":"aqua","text":"Branch?"}'} run tag @e[name="M@K",limit=1] add MGCroute
setblock -357 2 70 stone_bricks
setblock -357 1 70 grass_block
setblock -299 3 53 nether_bricks
setblock -299 4 53 structure_block[mode=save]{metadata:"",mirror:"NONE",ignoreEntities:0b,posX:-38,mode:"SAVE",posY:-4,sizeX:48,posZ:-7,integrity:1.0f,showair:0b,name:"minecraft:minigame",sizeY:17,sizeZ:27,showboundingbox:0b} destroy

#Set Game Location
forceload add -15 -25 -15 -1
forceload add -42 17
forceload add -50 59
forceload add -77 82
forceload add -48 35 -48 71
forceload add -78 -94 -102 -94
forceload add -66 -93
forceload add -132 -103
forceload add -40 -67
forceload add -163 -90 -127 -90

setblock -14 6 -25 air destroy
setblock -14 6 -13 air destroy
setblock -14 6 -1 air destroy
setblock -42 8 16 air destroy
setblock -50 13 58 air destroy
setblock -77 10 81 air destroy
setblock -47 7 35 air destroy
setblock -47 7 47 air destroy
setblock -47 7 59 air destroy
setblock -47 7 71 air destroy
setblock -78 5 -93 air destroy
setblock -90 5 -93 air destroy
setblock -102 5 -93 air destroy
setblock -66 7 -94 air destroy
setblock -132 12 -104 air destroy
setblock -40 7 -68 air destroy
setblock -151 4 -89 air destroy
setblock -139 6 -89 air destroy
setblock -163 6 -89 air destroy
setblock -127 6 -89 air destroy

execute if data block -308 15 70 {Text2:'{"bold":true,"color":"green","text":"CLASSIC"}'} if data block -308 15 69 {Text2:'{"bold":true,"color":"aqua","text":"Battle"}'} if data block -308 15 68 {Text2:'{"bold":true,"color":"aqua","text":"PvE"}'} run setblock -14 6 -25 oak_wall_sign[facing=west]
execute if block -14 6 -25 #signs if block -308 16 69 birch_wall_sign run setblock -14 6 -25 birch_wall_sign[facing=west]
data merge block -14 6 -25 {Text4:'{"text":"Right-Click","color":"aqua","italic":true,"clickEvent":{"action":"run_command","value":"/function library:game/start"}}'}
execute if data block -308 15 70 {Text2:'{"bold":true,"color":"green","text":"CLASSIC"}'} if data block -308 15 69 {Text2:'{"bold":true,"color":"aqua","text":"Battle"}'} if data block -308 15 68 {Text2:'{"bold":true,"color":"aqua","text":"PvE"}'} run data modify block -14 6 -25 Text1 set from block -299 7 46 Text2
execute if data block -308 15 70 {Text2:'{"bold":true,"color":"green","text":"CLASSIC"}'} if data block -308 15 69 {Text2:'{"bold":true,"color":"aqua","text":"Battle"}'} if data block -308 15 68 {Text2:'{"bold":true,"color":"aqua","text":"PvE"}'} run data modify block -14 6 -25 Text2 set from block -299 7 46 Text3

execute if data block -308 15 70 {Text2:'{"bold":true,"color":"green","text":"CLASSIC"}'} if data block -308 15 69 {Text2:'{"bold":true,"color":"aqua","text":"Battle"}'} if data block -308 15 68 {Text2:'{"bold":true,"color":"aqua","text":"PvP"}'} run setblock -14 6 -13 oak_wall_sign[facing=west]
execute if block -14 6 -25 #signs if block -308 16 69 birch_wall_sign run setblock -14 6 -13 birch_wall_sign[facing=west]
data merge block -14 6 -13 {Text4:'{"text":"Right-Click","color":"aqua","italic":true,"clickEvent":{"action":"run_command","value":"/function library:game/start"}}'}
execute if data block -308 15 70 {Text2:'{"bold":true,"color":"green","text":"CLASSIC"}'} if data block -308 15 69 {Text2:'{"bold":true,"color":"aqua","text":"Battle"}'} if data block -308 15 68 {Text2:'{"bold":true,"color":"aqua","text":"PvP"}'} run data modify block -14 6 -13 Text1 set from block -299 7 46 Text2
execute if data block -308 15 70 {Text2:'{"bold":true,"color":"green","text":"CLASSIC"}'} if data block -308 15 69 {Text2:'{"bold":true,"color":"aqua","text":"Battle"}'} if data block -308 15 68 {Text2:'{"bold":true,"color":"aqua","text":"PvP"}'} run data modify block -14 6 -13 Text2 set from block -299 7 46 Text3

execute if data block -308 15 70 {Text2:'{"bold":true,"color":"green","text":"CLASSIC"}'} if data block -308 15 69 {Text2:'{"bold":true,"color":"aqua","text":"Battle"}'} if data block -308 15 68 {Text2:'{"bold":true,"color":"aqua","text":"EvE"}'} run setblock -14 6 -1 oak_wall_sign[facing=west]
execute if block -14 6 -1 #signs if block -308 16 69 birch_wall_sign run setblock -14 6 -1 birch_wall_sign[facing=west]
data merge block -14 6 -1 {Text4:'{"text":"Right-Click","color":"aqua","italic":true,"clickEvent":{"action":"run_command","value":"/function library:game/start"}}'}
execute if data block -308 15 70 {Text2:'{"bold":true,"color":"green","text":"CLASSIC"}'} if data block -308 15 69 {Text2:'{"bold":true,"color":"aqua","text":"Battle"}'} if data block -308 15 68 {Text2:'{"bold":true,"color":"aqua","text":"EvE"}'} run data modify block -14 6 -1 Text1 set from block -299 7 46 Text2
execute if data block -308 15 70 {Text2:'{"bold":true,"color":"green","text":"CLASSIC"}'} if data block -308 15 69 {Text2:'{"bold":true,"color":"aqua","text":"Battle"}'} if data block -308 15 68 {Text2:'{"bold":true,"color":"aqua","text":"EvE"}'} run data modify block -14 6 -1 Text2 set from block -299 7 46 Text3

execute if data block -308 15 70 {Text2:'{"bold":true,"color":"green","text":"CLASSIC"}'} if data block -308 15 69 {Text2:'{"bold":true,"color":"light_purple","text":"Party"}'} if data block -308 15 68 {Text2:'{"bold":true,"color":"aqua","text":"Race"}'} run setblock -42 8 16 spruce_wall_sign[facing=south]
execute if block -42 8 16 #signs if block -308 16 69 birch_wall_sign run setblock -42 8 16 birch_wall_sign[facing=south]
data merge block -42 8 16 {Text4:'{"text":"Right-Click","color":"aqua","italic":true,"clickEvent":{"action":"run_command","value":"/function library:game/start"}}'}
execute if data block -308 15 70 {Text2:'{"bold":true,"color":"green","text":"CLASSIC"}'} if data block -308 15 69 {Text2:'{"bold":true,"color":"light_purple","text":"Party"}'} if data block -308 15 68 {Text2:'{"bold":true,"color":"aqua","text":"Race"}'} run data modify block -42 8 16 Text1 set from block -299 7 46 Text2
execute if data block -308 15 70 {Text2:'{"bold":true,"color":"green","text":"CLASSIC"}'} if data block -308 15 69 {Text2:'{"bold":true,"color":"light_purple","text":"Party"}'} if data block -308 15 68 {Text2:'{"bold":true,"color":"aqua","text":"Race"}'} run data modify block -42 8 16 Text2 set from block -299 7 46 Text3

execute if data block -308 15 70 {Text2:'{"bold":true,"color":"green","text":"CLASSIC"}'} if data block -308 15 69 {Text2:'{"bold":true,"color":"light_purple","text":"Party"}'} if data block -308 15 68 {Text2:'{"bold":true,"color":"light_purple","text":"Miscellaneous"}'} run setblock -50 13 58 spruce_wall_sign[facing=south]
execute if block -50 13 58 #signs if block -308 16 69 birch_wall_sign run setblock -50 13 58 birch_wall_sign[facing=south]
data merge block -50 13 58 {Text4:'{"text":"Right-Click","color":"aqua","italic":true,"clickEvent":{"action":"run_command","value":"/function library:game/start"}}'}
execute if data block -308 15 70 {Text2:'{"bold":true,"color":"green","text":"CLASSIC"}'} if data block -308 15 69 {Text2:'{"bold":true,"color":"light_purple","text":"Party"}'} if data block -308 15 68 {Text2:'{"bold":true,"color":"light_purple","text":"Miscellaneous"}'} run data modify block -50 13 58 Text1 set from block -299 7 46 Text2
execute if data block -308 15 70 {Text2:'{"bold":true,"color":"green","text":"CLASSIC"}'} if data block -308 15 69 {Text2:'{"bold":true,"color":"light_purple","text":"Party"}'} if data block -308 15 68 {Text2:'{"bold":true,"color":"light_purple","text":"Miscellaneous"}'} run data modify block -50 13 58 Text2 set from block -299 7 46 Text3

execute if data block -308 15 70 {Text2:'{"bold":true,"color":"green","text":"CLASSIC"}'} if data block -308 15 69 {Text2:'{"bold":true,"color":"light_purple","text":"Party"}'} if data block -308 15 68 {Text2:'{"bold":true,"color":"light_purple","text":"Skill"}'} run setblock -77 10 81 spruce_wall_sign[facing=south]
execute if block -77 10 81 #signs if block -308 16 69 birch_wall_sign run setblock -77 10 81 birch_wall_sign[facing=south]
data merge block -77 10 81 {Text4:'{"text":"Right-Click","color":"aqua","italic":true,"clickEvent":{"action":"run_command","value":"/function library:game/start"}}'}
execute if data block -308 15 70 {Text2:'{"bold":true,"color":"green","text":"CLASSIC"}'} if data block -308 15 69 {Text2:'{"bold":true,"color":"light_purple","text":"Party"}'} if data block -308 15 68 {Text2:'{"bold":true,"color":"light_purple","text":"Skill"}'} run data modify block -77 10 81 Text1 set from block -299 7 46 Text2
execute if data block -308 15 70 {Text2:'{"bold":true,"color":"green","text":"CLASSIC"}'} if data block -308 15 69 {Text2:'{"bold":true,"color":"light_purple","text":"Party"}'} if data block -308 15 68 {Text2:'{"bold":true,"color":"light_purple","text":"Skill"}'} run data modify block -77 10 81 Text2 set from block -299 7 46 Text3

execute if data block -308 15 70 {Text2:'{"bold":true,"color":"green","text":"CLASSIC"}'} if data block -308 15 69 {Text2:'{"bold":true,"color":"yellow","text":"Challenge"}'} if data block -308 15 68 {Text2:'{"bold":true,"color":"yellow","text":"Survival"}'} run setblock -47 7 35 oak_wall_sign[facing=west]
execute if block -47 7 35 #signs if block -308 16 69 birch_wall_sign run setblock -47 7 35 birch_wall_sign[facing=west]
data merge block -47 7 35 {Text4:'{"text":"Right-Click","color":"aqua","italic":true,"clickEvent":{"action":"run_command","value":"/function library:game/start"}}'}
execute if data block -308 15 70 {Text2:'{"bold":true,"color":"green","text":"CLASSIC"}'} if data block -308 15 69 {Text2:'{"bold":true,"color":"yellow","text":"Challenge"}'} if data block -308 15 68 {Text2:'{"bold":true,"color":"yellow","text":"Survival"}'} run data modify block -47 7 35 Text1 set from block -299 7 46 Text2
execute if data block -308 15 70 {Text2:'{"bold":true,"color":"green","text":"CLASSIC"}'} if data block -308 15 69 {Text2:'{"bold":true,"color":"yellow","text":"Challenge"}'} if data block -308 15 68 {Text2:'{"bold":true,"color":"yellow","text":"Survival"}'} run data modify block -47 7 35 Text2 set from block -299 7 46 Text3

execute if data block -308 15 70 {Text2:'{"bold":true,"color":"green","text":"CLASSIC"}'} if data block -308 15 69 {Text2:'{"bold":true,"color":"yellow","text":"Challenge"}'} if data block -308 15 68 {Text2:'{"bold":true,"color":"yellow","text":"Strategy"}'} run setblock -47 7 47 oak_wall_sign[facing=west]
execute if block -47 7 47 #signs if block -308 16 69 birch_wall_sign run setblock -47 7 47 birch_wall_sign[facing=west]
data merge block -47 7 47 {Text4:'{"text":"Right-Click","color":"aqua","italic":true,"clickEvent":{"action":"run_command","value":"/function library:game/start"}}'}
execute if data block -308 15 70 {Text2:'{"bold":true,"color":"green","text":"CLASSIC"}'} if data block -308 15 69 {Text2:'{"bold":true,"color":"yellow","text":"Challenge"}'} if data block -308 15 68 {Text2:'{"bold":true,"color":"yellow","text":"Strategy"}'} run data modify block -47 7 47 Text1 set from block -299 7 46 Text2
execute if data block -308 15 70 {Text2:'{"bold":true,"color":"green","text":"CLASSIC"}'} if data block -308 15 69 {Text2:'{"bold":true,"color":"yellow","text":"Challenge"}'} if data block -308 15 68 {Text2:'{"bold":true,"color":"yellow","text":"Strategy"}'} run data modify block -47 7 47 Text2 set from block -299 7 46 Text3

execute if data block -308 15 70 {Text2:'{"bold":true,"color":"green","text":"CLASSIC"}'} if data block -308 15 69 {Text2:'{"bold":true,"color":"yellow","text":"Challenge"}'} if data block -308 15 68 {Text2:'{"bold":true,"color":"yellow","text":"Parkour"}'} run setblock -47 7 59 oak_wall_sign[facing=west]
execute if block -47 7 59 #signs if block -308 16 69 birch_wall_sign run setblock -47 7 59 birch_wall_sign[facing=west]
data merge block -47 7 59 {Text4:'{"text":"Right-Click","color":"aqua","italic":true,"clickEvent":{"action":"run_command","value":"/function library:game/start"}}'}
execute if data block -308 15 70 {Text2:'{"bold":true,"color":"green","text":"CLASSIC"}'} if data block -308 15 69 {Text2:'{"bold":true,"color":"yellow","text":"Challenge"}'} if data block -308 15 68 {Text2:'{"bold":true,"color":"yellow","text":"Parkour"}'} run data modify block -47 7 59 Text1 set from block -299 7 46 Text2
execute if data block -308 15 70 {Text2:'{"bold":true,"color":"green","text":"CLASSIC"}'} if data block -308 15 69 {Text2:'{"bold":true,"color":"yellow","text":"Challenge"}'} if data block -308 15 68 {Text2:'{"bold":true,"color":"yellow","text":"Parkour"}'} run data modify block -47 7 59 Text2 set from block -299 7 46 Text3

execute if data block -308 15 70 {Text2:'{"bold":true,"color":"green","text":"CLASSIC"}'} if data block -308 15 69 {Text2:'{"bold":true,"color":"yellow","text":"Challenge"}'} if data block -308 15 68 {Text2:'{"bold":true,"color":"yellow","text":"Logic"}'} run setblock -47 7 71 oak_wall_sign[facing=west]
execute if block -47 7 71 #signs if block -308 16 69 birch_wall_sign run setblock -47 7 71 birch_wall_sign[facing=west]
data merge block -47 7 71 {Text4:'{"text":"Right-Click","color":"aqua","italic":true,"clickEvent":{"action":"run_command","value":"/function library:game/start"}}'}
execute if data block -308 15 70 {Text2:'{"bold":true,"color":"green","text":"CLASSIC"}'} if data block -308 15 69 {Text2:'{"bold":true,"color":"yellow","text":"Challenge"}'} if data block -308 15 68 {Text2:'{"bold":true,"color":"yellow","text":"Logic"}'} run data modify block -47 7 71 Text1 set from block -299 7 46 Text2
execute if data block -308 15 70 {Text2:'{"bold":true,"color":"green","text":"CLASSIC"}'} if data block -308 15 69 {Text2:'{"bold":true,"color":"yellow","text":"Challenge"}'} if data block -308 15 68 {Text2:'{"bold":true,"color":"yellow","text":"Logic"}'} run data modify block -47 7 71 Text2 set from block -299 7 46 Text3

execute if data block -308 15 70 {Text2:'{"bold":true,"color":"light_purple","text":"DEFAULT"}'} if data block -308 15 69 {Text2:'{"bold":true,"color":"aqua","text":"Battle"}'} if data block -308 15 68 {Text2:'{"bold":true,"color":"aqua","text":"PvE"}'} run setblock -78 5 -93 oak_wall_sign
execute if block -78 5 -93 #signs if block -308 16 69 birch_wall_sign run setblock -78 5 -93 birch_wall_sign
data merge block -78 5 -93 {Text4:'{"text":"Right-Click","color":"aqua","italic":true,"clickEvent":{"action":"run_command","value":"/function library:game/start"}}'}
execute if data block -308 15 70 {Text2:'{"bold":true,"color":"light_purple","text":"DEFAULT"}'} if data block -308 15 69 {Text2:'{"bold":true,"color":"aqua","text":"Battle"}'} if data block -308 15 68 {Text2:'{"bold":true,"color":"aqua","text":"PvE"}'} run data modify block -78 5 -93 Text1 set from block -299 7 46 Text2
execute if data block -308 15 70 {Text2:'{"bold":true,"color":"light_purple","text":"DEFAULT"}'} if data block -308 15 69 {Text2:'{"bold":true,"color":"aqua","text":"Battle"}'} if data block -308 15 68 {Text2:'{"bold":true,"color":"aqua","text":"PvE"}'} run data modify block -78 5 -93 Text2 set from block -299 7 46 Text3

execute if data block -308 15 70 {Text2:'{"bold":true,"color":"light_purple","text":"DEFAULT"}'} if data block -308 15 69 {Text2:'{"bold":true,"color":"aqua","text":"Battle"}'} if data block -308 15 68 {Text2:'{"bold":true,"color":"aqua","text":"PvP"}'} run setblock -90 5 -93 oak_wall_sign
execute if block -90 5 -93 #signs if block -308 16 69 birch_wall_sign run setblock -90 5 -93 birch_wall_sign
data merge block -90 5 -93 {Text4:'{"text":"Right-Click","color":"aqua","italic":true,"clickEvent":{"action":"run_command","value":"/function library:game/start"}}'}
execute if data block -308 15 70 {Text2:'{"bold":true,"color":"light_purple","text":"DEFAULT"}'} if data block -308 15 69 {Text2:'{"bold":true,"color":"aqua","text":"Battle"}'} if data block -308 15 68 {Text2:'{"bold":true,"color":"aqua","text":"PvP"}'} run data modify block -90 5 -93 Text1 set from block -299 7 46 Text2
execute if data block -308 15 70 {Text2:'{"bold":true,"color":"light_purple","text":"DEFAULT"}'} if data block -308 15 69 {Text2:'{"bold":true,"color":"aqua","text":"Battle"}'} if data block -308 15 68 {Text2:'{"bold":true,"color":"aqua","text":"PvP"}'} run data modify block -90 5 -93 Text2 set from block -299 7 46 Text3

execute if data block -308 15 70 {Text2:'{"bold":true,"color":"light_purple","text":"DEFAULT"}'} if data block -308 15 69 {Text2:'{"bold":true,"color":"aqua","text":"Battle"}'} if data block -308 15 68 {Text2:'{"bold":true,"color":"aqua","text":"BvB"}'} run setblock -102 5 -93 oak_wall_sign
execute if block -102 5 -93 #signs if block -308 16 69 birch_wall_sign run setblock -102 5 -93 birch_wall_sign
data merge block -102 5 -93 {Text4:'{"text":"Right-Click","color":"aqua","italic":true,"clickEvent":{"action":"run_command","value":"/function library:game/start"}}'}
execute if data block -308 15 70 {Text2:'{"bold":true,"color":"light_purple","text":"DEFAULT"}'} if data block -308 15 69 {Text2:'{"bold":true,"color":"aqua","text":"Battle"}'} if data block -308 15 68 {Text2:'{"bold":true,"color":"aqua","text":"BvB"}'} run data modify block -102 5 -93 Text1 set from block -299 7 46 Text2
execute if data block -308 15 70 {Text2:'{"bold":true,"color":"light_purple","text":"DEFAULT"}'} if data block -308 15 69 {Text2:'{"bold":true,"color":"aqua","text":"Battle"}'} if data block -308 15 68 {Text2:'{"bold":true,"color":"aqua","text":"BvB"}'} run data modify block -102 5 -93 Text2 set from block -299 7 46 Text3

execute if data block -308 15 70 {Text2:'{"bold":true,"color":"light_purple","text":"DEFAULT"}'} if data block -308 15 69 {Text2:'{"bold":true,"color":"light_purple","text":"Party"}'} if data block -308 15 68 {Text2:'{"bold":true,"color":"light_purple","text":"Race"}'} run setblock -66 7 -94 spruce_wall_sign[facing=south]
execute if block -66 7 -94 #signs if block -308 16 69 birch_wall_sign run setblock -66 7 -94 birch_wall_sign[facing=south]
data merge block -66 7 -94 {Text4:'{"text":"Right-Click","color":"aqua","italic":true,"clickEvent":{"action":"run_command","value":"/function library:game/start"}}'}
execute if data block -308 15 70 {Text2:'{"bold":true,"color":"light_purple","text":"DEFAULT"}'} if data block -308 15 69 {Text2:'{"bold":true,"color":"light_purple","text":"Party"}'} if data block -308 15 68 {Text2:'{"bold":true,"color":"light_purple","text":"Race"}'} run data modify block -66 7 -94 Text1 set from block -299 7 46 Text2
execute if data block -308 15 70 {Text2:'{"bold":true,"color":"light_purple","text":"DEFAULT"}'} if data block -308 15 69 {Text2:'{"bold":true,"color":"light_purple","text":"Party"}'} if data block -308 15 68 {Text2:'{"bold":true,"color":"light_purple","text":"Race"}'} run data modify block -66 7 -94 Text2 set from block -299 7 46 Text3

execute if data block -308 15 70 {Text2:'{"bold":true,"color":"light_purple","text":"DEFAULT"}'} if data block -308 15 69 {Text2:'{"bold":true,"color":"light_purple","text":"Party"}'} if data block -308 15 68 {Text2:'{"bold":true,"color":"light_purple","text":"Creative"}'} run setblock -132 12 -104 spruce_wall_sign[facing=south]
execute if block -132 12 -104 #signs if block -308 16 69 birch_wall_sign run setblock -132 12 -104 birch_wall_sign[facing=south]
data merge block -132 12 -104 {Text4:'{"text":"Right-Click","color":"aqua","italic":true,"clickEvent":{"action":"run_command","value":"/function library:game/start"}}'}
execute if data block -308 15 70 {Text2:'{"bold":true,"color":"light_purple","text":"DEFAULT"}'} if data block -308 15 69 {Text2:'{"bold":true,"color":"light_purple","text":"Party"}'} if data block -308 15 68 {Text2:'{"bold":true,"color":"light_purple","text":"Creative"}'} run data modify block -132 12 -104 Text1 set from block -299 7 46 Text2
execute if data block -308 15 70 {Text2:'{"bold":true,"color":"light_purple","text":"DEFAULT"}'} if data block -308 15 69 {Text2:'{"bold":true,"color":"light_purple","text":"Party"}'} if data block -308 15 68 {Text2:'{"bold":true,"color":"light_purple","text":"Creative"}'} run data modify block -132 12 -104 Text2 set from block -299 7 46 Text3

execute if data block -308 15 70 {Text2:'{"bold":true,"color":"light_purple","text":"DEFAULT"}'} if data block -308 15 69 {Text2:'{"bold":true,"color":"light_purple","text":"Party"}'} if data block -308 15 68 {Text2:'{"bold":true,"color":"light_purple","text":"Skill"}'} run setblock -40 7 -68 spruce_wall_sign[facing=south]
execute if block -40 7 -68 #signs if block -308 16 69 birch_wall_sign run setblock -40 7 -68 birch_wall_sign[facing=south]
data merge block -40 7 -68 {Text4:'{"text":"Right-Click","color":"aqua","italic":true,"clickEvent":{"action":"run_command","value":"/function library:game/start"}}'}
execute if data block -308 15 70 {Text2:'{"bold":true,"color":"light_purple","text":"DEFAULT"}'} if data block -308 15 69 {Text2:'{"bold":true,"color":"light_purple","text":"Party"}'} if data block -308 15 68 {Text2:'{"bold":true,"color":"light_purple","text":"Skill"}'} run data modify block -40 7 -68 Text1 set from block -299 7 46 Text2
execute if data block -308 15 70 {Text2:'{"bold":true,"color":"light_purple","text":"DEFAULT"}'} if data block -308 15 69 {Text2:'{"bold":true,"color":"light_purple","text":"Party"}'} if data block -308 15 68 {Text2:'{"bold":true,"color":"light_purple","text":"Skill"}'} run data modify block -40 7 -68 Text2 set from block -299 7 46 Text3

execute if data block -308 15 70 {Text2:'{"bold":true,"color":"light_purple","text":"DEFAULT"}'} if data block -308 15 69 {Text2:'{"bold":true,"color":"yellow","text":"Challenge"}'} if data block -308 15 68 {Text2:'{"bold":true,"color":"yellow","text":"Survival"}'} run setblock -151 4 -89 oak_wall_sign
execute if block -151 4 -89 #signs if block -308 16 69 birch_wall_sign run setblock -151 4 -89 birch_wall_sign
data merge block -151 4 -89 {Text4:'{"text":"Right-Click","color":"aqua","italic":true,"clickEvent":{"action":"run_command","value":"/function library:game/start"}}'}
execute if data block -308 15 70 {Text2:'{"bold":true,"color":"light_purple","text":"DEFAULT"}'} if data block -308 15 69 {Text2:'{"bold":true,"color":"yellow","text":"Challenge"}'} if data block -308 15 68 {Text2:'{"bold":true,"color":"yellow","text":"Survival"}'} run data modify block -151 4 -89 Text1 set from block -299 7 46 Text2
execute if data block -308 15 70 {Text2:'{"bold":true,"color":"light_purple","text":"DEFAULT"}'} if data block -308 15 69 {Text2:'{"bold":true,"color":"yellow","text":"Challenge"}'} if data block -308 15 68 {Text2:'{"bold":true,"color":"yellow","text":"Survival"}'} run data modify block -151 4 -89 Text2 set from block -299 7 46 Text3

execute if data block -308 15 70 {Text2:'{"bold":true,"color":"light_purple","text":"DEFAULT"}'} if data block -308 15 69 {Text2:'{"bold":true,"color":"yellow","text":"Challenge"}'} if data block -308 15 68 {Text2:'{"bold":true,"color":"yellow","text":"Strategy"}'} run setblock -151 4 -89 oak_wall_sign
execute if block -151 4 -89 #signs if block -308 16 69 birch_wall_sign run setblock -151 4 -89 birch_wall_sign
data merge block -151 4 -89 {Text4:'{"text":"Right-Click","color":"aqua","italic":true,"clickEvent":{"action":"run_command","value":"/function library:game/start"}}'}
execute if data block -308 15 70 {Text2:'{"bold":true,"color":"light_purple","text":"DEFAULT"}'} if data block -308 15 69 {Text2:'{"bold":true,"color":"yellow","text":"Challenge"}'} if data block -308 15 68 {Text2:'{"bold":true,"color":"yellow","text":"Strategy"}'} run data modify block -139 6 -89 Text1 set from block -299 7 46 Text2
execute if data block -308 15 70 {Text2:'{"bold":true,"color":"light_purple","text":"DEFAULT"}'} if data block -308 15 69 {Text2:'{"bold":true,"color":"yellow","text":"Challenge"}'} if data block -308 15 68 {Text2:'{"bold":true,"color":"yellow","text":"Strategy"}'} run data modify block -139 6 -89 Text2 set from block -299 7 46 Text3

execute if data block -308 15 70 {Text2:'{"bold":true,"color":"light_purple","text":"DEFAULT"}'} if data block -308 15 69 {Text2:'{"bold":true,"color":"yellow","text":"Challenge"}'} if data block -308 15 68 {Text2:'{"bold":true,"color":"yellow","text":"Logic"}'} run setblock -127 6 -89 oak_wall_sign
execute if block -127 6 -89 #signs if block -308 16 69 birch_wall_sign run setblock -127 6 -89 birch_wall_sign
data merge block -127 6 -89 {Text4:'{"text":"Right-Click","color":"aqua","italic":true,"clickEvent":{"action":"run_command","value":"/function library:game/start"}}'}
execute if data block -308 15 70 {Text2:'{"bold":true,"color":"light_purple","text":"DEFAULT"}'} if data block -308 15 69 {Text2:'{"bold":true,"color":"yellow","text":"Challenge"}'} if data block -308 15 68 {Text2:'{"bold":true,"color":"yellow","text":"Logic"}'} run data modify block -127 6 -89 Text1 set from block -299 7 46 Text2
execute if data block -308 15 70 {Text2:'{"bold":true,"color":"light_purple","text":"DEFAULT"}'} if data block -308 15 69 {Text2:'{"bold":true,"color":"yellow","text":"Challenge"}'} if data block -308 15 68 {Text2:'{"bold":true,"color":"yellow","text":"Logic"}'} run data modify block -127 6 -89 Text2 set from block -299 7 46 Text3

forceload remove -15 -25 -15 -1
forceload remove -42 17
forceload remove -50 59
forceload remove -77 82
forceload remove -48 35 -48 71
forceload remove -78 -94 -102 -94
forceload remove -66 -93
forceload remove -132 -103
forceload remove -40 -67
forceload remove -163 -90 -127 -90