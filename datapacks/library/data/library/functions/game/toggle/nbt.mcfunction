playsound entity.villager.work_fletcher master @s ~ ~ ~ 0.2 2
execute if data entity @e[tag=sl0t,limit=1] Item run tellraw @s ["",{"text":"The item can now be modified!","color":"aqua"}]
execute unless data entity @e[tag=focus,tag=3vent,limit=1] ArmorItems[0].tag{id:"?"} run scoreboard players add @e[tag=3vent,tag=focus,limit=1] mgc-2 1
execute unless data entity @e[tag=focus,tag=3vent,limit=1] ArmorItems[0].tag{id:"?"} run data modify entity @e[tag=3vent,tag=focus,limit=1] ArmorItems[0].tag.tag merge value {CustomModelData:1}
execute if data block -307 15 72 {Text2:'{"bold":true,"color":"aqua","text":"ON"}'} if data entity @e[tag=focus,tag=3vent,limit=1] ArmorItems[0].tag{id:"?"} run tellraw @s ["",{"text":"No item was detected! Set one in the","color":"red"},{"text":" Spawning slot ","color":"yellow"},{"text":"for this tag to be applied.","color":"red"}]
data merge entity @e[tag=sl0t,limit=1] {Item:{id:""}}
execute as @e[tag=3vent,tag=focus] at @s unless data entity @e[tag=focus,tag=3vent,limit=1] ArmorItems[0].tag{id:"?"} unless data entity @e[tag=sl0t,limit=1] Item store result entity @s ArmorItems[0].tag.tag.CustomModelData int 1 run scoreboard players get @s mgc-2