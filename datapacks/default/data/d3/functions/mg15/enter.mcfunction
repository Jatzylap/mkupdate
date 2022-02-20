execute at @s[tag=!T0] in void run forceload add 0 0
execute at @s[tag=!T0] in void run forceload add -1000 -1000
execute at @s[tag=!T0] in void run setblock -1000 254 -1000 shulker_box
execute at @s[tag=!T0] in void run fill -999 253 -999 -1001 255 -1001 bedrock keep
execute at @s[tag=!T0] in void run summon area_effect_cloud 7 119 7 {Tags:[mg15_tc],Duration:1,Radius:0f}
execute at @s[tag=!T0] in void store result score @s mg15 run spreadplayers 7 7 0 9 false @e[tag=mg15_tc]
execute at @s[tag=!T0] if score @s mg15 matches 0 run title @s actionbar ["",{"text":"This game requires a","color":"yellow"},{"text":" Generated Island","color":"gold"},{"text":" to begin!","color":"yellow"}]
execute at @s[tag=!T0] if score @s mg15 matches 0 run tellraw @s ["",{"text":"\n>>","color":"green"},{"text":"Travel to the","color":"yellow","bold":true,"clickEvent":{"action":"run_command","value":"/trigger interact"}},{"text":" Library Archives","color":"light_purple","bold":true,"clickEvent":{"action":"run_command","value":"/trigger interact"}},{"text":"<<\n","color":"green"}]
execute at @s[tag=!T0] if score @s mg15 matches 0 run scoreboard players enable @s interact
execute at @s[tag=!T0] if score @s mg15 matches 0 run tag @s add mk.06
execute at @s[tag=!T0] if score @s mg15 matches 0 run scoreboard players reset @s mg15
execute at @s[tag=!T0] in void if score @s mg15 matches 1.. run tp @s 7 119 7
execute at @s[tag=!T0] in void if score @s mg15 matches 1.. run spreadplayers 7 7 0 9 false @s
execute at @s[tag=!T0] if score @s mg15 matches 1.. run tag @s add m-g
execute at @s[tag=!T0] if score @s mg15 matches 1.. run tag @s add mg0+1
execute at @s[tag=!T0] if score @s mg15 matches 1.. run effect clear @s
execute at @s[tag=!T0] if score @s mg15 matches 1.. run gamemode survival @s
execute at @s[tag=!T0] if score @s mg15 matches 1.. run title @s clear
execute at @s[tag=!T0] if score @s mg15 matches 1.. run title @s reset
execute at @s[tag=!T0] if score @s mg15 matches 1.. run function clear:chat
advancement grant @s[scores={mg15=1..}] only mk:achieve_all mg15
advancement grant @s[scores={mg15=1..}] only mk:unlock_all mg15
execute store result score @s c if entity @a[scores={mg15=1..}]
title @s[tag=T0] actionbar ["",{"text":"This game cannot be selected as progress is saved on exit","color":"yellow","bold":true}]