#Debug (nbt memory loss)
function library:game/reset/backup

clone -356 1 88 -337 12 100 -335 2 57 replace force
kill @e[tag=3vent]
setblock -357 2 70 structure_block[mode=save]{ignoreEntities:0b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"SAVE",name:"mk:game",posX:1,posY:-14,posZ:1,showair:0b,showboundingbox:0b,sizeX:17,sizeY:21,sizeZ:17}
setblock -299 4 53 structure_block[mode=load]{ignoreEntities:0b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"mk:game",posX:-8,posY:-14,posZ:2,showair:0b,showboundingbox:0b,sizeX:17,sizeY:21,sizeZ:17} destroy
setblock -357 1 70 redstone_block
setblock -299 3 53 redstone_block
tag @e[type=armor_stand,tag=!st0rage,x=-307,y=-13,z=55,dx=16,dy=35,dz=16] add 3vent
setblock -357 2 70 stone_bricks
setblock -357 1 70 grass_block
setblock -299 3 53 nether_bricks
setblock -299 4 53 chiseled_stone_bricks
fill -339 0 71 -363 12 87 air replace bedrock
fill -339 0 71 -363 12 87 air replace barrier
forceload remove -289 53 -309 73