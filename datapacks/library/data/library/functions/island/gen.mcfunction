execute if data block -372 138 -230 {Text3:'{"bold":true,"color":"gray","text":"None"}'} run scoreboard players set @s 6 1
execute if data block -372 138 -230 {Text3:'{"bold":true,"color":"gray","text":"None"}'} run tag @s add sb_gen
execute if data block -372 138 -230 {Text3:'{"bold":true,"color":"gold","text":"Tiny"}'} run setblock -379 129 -261 structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,posX:0,mode:"LOAD",posY:1,sizeX:15,posZ:0,integrity:1.0f,showair:0b,name:"library:sb1",sizeY:21,sizeZ:15,showboundingbox:0b}
execute if data block -372 138 -230 {Text3:'{"bold":true,"color":"green","text":"Small"}'} run setblock -379 129 -261 structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,posX:0,mode:"LOAD",posY:1,sizeX:15,posZ:0,integrity:1.0f,showair:0b,name:"library:sb2",sizeY:21,sizeZ:15,showboundingbox:0b}
execute if data block -372 138 -230 {Text3:'{"bold":true,"color":"light_purple","text":"Fancy"}'} run setblock -379 129 -261 structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,posX:0,mode:"LOAD",posY:1,sizeX:15,posZ:0,integrity:1.0f,showair:0b,name:"library:sb3",sizeY:21,sizeZ:15,showboundingbox:0b}
execute if data block -372 138 -230 {Text3:'{"bold":true,"color":"yellow","text":"Average"}'} run setblock -379 129 -261 structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,posX:0,mode:"LOAD",posY:1,sizeX:15,posZ:0,integrity:1.0f,showair:0b,name:"library:sb4",sizeY:21,sizeZ:15,showboundingbox:0b}
execute if data block -372 138 -230 {Text3:'{"bold":true,"color":"aqua","text":"Load Saved"}'} run setblock -379 129 -261 structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,posX:0,mode:"LOAD",posY:1,sizeX:15,posZ:0,integrity:1.0f,showair:0b,name:"mk:skyblock",sizeY:21,sizeZ:15,showboundingbox:0b}
setblock -379 130 -261 redstone_block
fill -379 129 -261 -379 130 -261 air
setblock -374 137 -234 spruce_wall_sign[facing=south]{Text4:'{"bold":true,"color":"green","text":"o----------o"}',Text3:'{"bold":true,"color":"yellow","text":"Skyblock"}',Text2:'{"bold":true,"color":"aqua","text":"Reset","clickEvent":{"action":"run_command","value":"/function library:island/reset"}}'} destroy
execute at @s[tag=!sb_gen] run setblock -379 129 -261 structure_block[mode=save]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,posX:0,mode:"SAVE",posY:1,sizeX:15,posZ:0,integrity:1.0f,showair:0b,name:"mk:skyblock",sizeY:21,sizeZ:15,showboundingbox:0b}
execute at @s[tag=!sb_gen] run setblock -379 128 -261 redstone_block
execute at @s[tag=!sb_gen] run fill -379 128 -261 -379 129 -261 air
execute at @s[tag=!sb_gen] run setblock -372 137 -235 oak_wall_sign[facing=south]{Text1:'{"bold":true,"color":"green","text":"o----------o"}',Text2:'{"bold":true,"color":"white","clickEvent":{"action":"run_command","value":"/function d3:mg15/enter"},"text":"PLAY"}',Text3:'{"bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/tag @s add D_"},"text":"o----------o"}'}
execute in void run forceload add 0 0
execute in void run setblock 0 108 0 structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,posX:0,mode:"LOAD",posY:1,sizeX:15,posZ:0,integrity:1.0f,showair:0b,name:"mk:skyblock",sizeY:21,sizeZ:15,showboundingbox:0b}
execute in void run setblock 0 107 0 redstone_block
execute in void run fill 0 107 0 0 108 0 air
execute in void run forceload remove 0 0