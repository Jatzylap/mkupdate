tag @a remove mgc_nam3d
execute if data block -307 15 72 {Text2:'{"bold":true,"color":"aqua","text":"ON"}'} unless entity @e[tag=3vent,tag=focus] run tellraw @s ["",{"text":"No available slots to target..","color":"red"}]
execute as @e[tag=3vent,tag=focus,tag=!mgc_t] at @s run data merge entity @s {ArmorItems:[{Count:1,id:chest,tag:{id:"?"}},{Count:1,id:chest,tag:{head:"?",chest:"?",legs:"?",feet:"?"}}]}
execute as @e[tag=3vent,tag=focus,tag=mgc_t] at @s run data remove entity @s ArmorItems[0].tag.data
execute as @e[tag=3vent,tag=focus,tag=!entity] at @s run kill @e[tag=it3m]
execute as @e[tag=3vent,tag=focus,tag=!entity] at @s run data merge entity @s {ArmorItems:[{Count:1,id:chest,tag:{id:"?"}}]}
execute as @e[tag=3vent,tag=focus,tag=mgc_t] at @s run data remove entity @s ArmorItems[0].tag.tag.CustomModelData
execute as @e[tag=3vent,tag=focus,tag=mgc_t] at @s run scoreboard players reset @e[tag=3vent,tag=focus,limit=1] mgc-2