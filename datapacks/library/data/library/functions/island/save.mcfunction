setblock -379 129 -261 structure_block[mode=save]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,posX:0,mode:"SAVE",posY:1,sizeX:15,posZ:0,integrity:1.0f,showair:0b,name:"mk:skyblock",sizeY:21,sizeZ:15,showboundingbox:0b}
setblock -379 128 -261 redstone_block
fill -379 128 -261 -379 129 -261 air
scoreboard players set @a[tag=sb_gen] 6 129
title @s actionbar ["",{"text":"[","color":"light_purple","bold":true},{"text":"@","color":"gold","obfuscated":true},{"text":"]","color":"light_purple","bold":true},{"text":" Saving Island...","color":"aqua","bold":true}]
setblock -372 137 -235 oak_wall_sign[facing=south]{Text1:'{"bold":true,"color":"green","text":"o----------o"}',Text2:'{"bold":true,"color":"white","clickEvent":{"action":"run_command","value":"/function d3:mg15/enter"},"text":"PLAY"}',Text3:'{"bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/tag @s add D_"},"text":"o----------o"}'}
execute in void run forceload add 0 0
execute in void run setblock 0 108 0 structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,posX:0,mode:"LOAD",posY:1,sizeX:15,posZ:0,integrity:1.0f,showair:0b,name:"mk:skyblock",sizeY:21,sizeZ:15,showboundingbox:0b}
execute in void run setblock 0 107 0 redstone_block
execute in void run fill 0 107 0 0 108 0 air
execute in void run forceload remove 0 0
playsound entity.villager.work_librarian master @s ~ ~ ~ 1