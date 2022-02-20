clone -356 1 88 -335 16 100 -337 2 57 replace force
kill @e[tag=3vent]
setblock -357 2 70 structure_block[mode=save]{ignoreEntities:0b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"SAVE",name:"minecraft:game",posX:1,posY:0,posZ:1,showair:0b,showboundingbox:0b,sizeX:17,sizeY:12,sizeZ:17}
setblock -299 4 53 structure_block[mode=load]{ignoreEntities:0b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"minecraft:game",posX:-8,posY:-4,posZ:2,showair:0b,showboundingbox:0b,sizeX:17,sizeY:12,sizeZ:17} destroy
setblock -357 1 70 redstone_block
setblock -299 3 53 redstone_block
tag @e[type=armor_stand,x=-307,y=0,z=55,dx=16,dy=20,dz=16] add 3vent
setblock -357 2 70 stone_bricks
setblock -357 1 70 grass_block
setblock -299 3 53 nether_bricks
setblock -299 4 53 structure_block[mode=save]{metadata:"",mirror:"NONE",ignoreEntities:1b,posX:-38,mode:"SAVE",posY:-4,sizeX:48,posZ:-7,integrity:1.0f,showair:0b,name:"minecraft:minigame",sizeY:17,sizeZ:27,showboundingbox:0b} destroy
forceload remove -289 53 -309 73