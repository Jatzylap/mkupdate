team add mgc-marker
team add mgc-target
team add mgc-button
team add mgc-start
team add mgc-end
team add mgc-title
team modify mgc-title color gold
team modify mgc-marker color aqua
team modify mgc-marker collisionRule never
team modify mgc-target collisionRule never
team modify mgc-button color yellow
team modify mgc-button collisionRule never
team modify mgc-start color green
team modify mgc-start collisionRule never
team modify mgc-end color light_purple
team modify mgc-end collisionRule never

execute if data block -302 15 72 {Text3:'{"bold":true,"color":"aqua","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"CUSTOM"}'} run setblock -299 4 53 structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:0b,powered:0b,seed:0L,posX:-38,mode:"LOAD",posY:-4,sizeX:48,posZ:-7,integrity:1.0f,showair:0b,name:"minecraft:minigame",sizeY:17,sizeZ:27,showboundingbox:0b} destroy
execute if data block -302 15 72 {Text3:'{"bold":true,"color":"gold","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"Template 1"}'} run setblock -299 4 53 structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:0b,powered:0b,seed:0L,posX:-38,mode:"LOAD",posY:-4,sizeX:48,posZ:-7,integrity:1.0f,showair:0b,name:"library:temp1",sizeY:17,sizeZ:27,showboundingbox:0b} destroy
execute if data block -302 15 72 {Text3:'{"bold":true,"color":"gold","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"Template 2"}'} run setblock -299 4 53 structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:0b,powered:0b,seed:0L,posX:-38,mode:"LOAD",posY:-4,sizeX:48,posZ:-7,integrity:1.0f,showair:0b,name:"library:temp2",sizeY:17,sizeZ:27,showboundingbox:0b} destroy
fill -337 2 57 -316 12 69 air
execute as @a[tag=ed1t] at @s run function clear:chat
kill @e[tag=mgc_]
kill @e[tag=it3m]
kill @e[tag=curs0r]
kill @e[type=armor_stand,x=-356,y=0,z=71,dx=19,dy=17,dz=16]
kill @e[tag=3vent]
setblock -299 3 53 redstone_block
setblock -299 3 53 nether_bricks
kill @e[type=item_frame,x=-290,y=16,z=61,dy=1]
kill @e[type=item_frame,x=-304,y=16,z=72,dy=1]
summon item_frame -289.03 16.50 61.50 {Facing:4b,Invulnerable:1b,Item:{id:"minecraft:cobweb",Count:1b,tag:{display:{Name:'{"text":"Target nearest Event","color":"gold"}'}}},TileY:16,TileX:-290,Invisible:1b,TileZ:63,Fixed:1b}
summon item_frame -303.50 16.50 72.97 {Facing:2b,Invulnerable:1b,Item:{id:"minecraft:armor_stand",Count:1b,tag:{display:{Name:'{"text":"Cursor height","color":"aqua","italic":false}'}}},TileY:16,TileX:-304,Invisible:1b,TileZ:72,Fixed:1b}
setblock -299 4 53 air
schedule function library:game/reset/markers 20
schedule function library:game/save 25