scoreboard players reset @s 3
execute at @s[tag=!T0] in overworld run forceload add -374 -234
execute at @s[tag=!T0] in void run forceload add 0 0
execute at @s[tag=!T0] in void unless entity @e[tag=mg15_tc] run summon area_effect_cloud 7 119 7 {Tags:[mg15_tc],Duration:1,Radius:0f}
execute at @s[tag=!T0] in void unless entity @e[tag=mg15_tc] run summon area_effect_cloud 7 119 7 {Tags:[mg15_tc],Duration:1,Radius:0f}
execute at @s[tag=!T0] in void store success score @e[name="M@K",limit=1] mg15 run spreadplayers 7 7 0 9 false @e[tag=mg15_tc]
execute at @s[tag=!T0] unless data block -374 137 -234 {Text2:'{"bold":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/function library:island/reset"},"text":"Reset"}'} run title @s actionbar ["",{"text":"This game requires a","color":"yellow"},{"text":" Generated Island","color":"gold"},{"text":" to begin!","color":"yellow"}]
execute at @s[tag=!T0] unless entity @s[x=-372,y=138,z=-233,distance=..9] unless data block -374 137 -234 {Text2:'{"bold":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/function library:island/reset"},"text":"Reset"}'} run tellraw @s ["",{"text":"\n>>","color":"green"},{"text":"Travel to the ","color":"yellow","bold":true,"clickEvent":{"action":"run_command","value":"/trigger interact"}},{"text":"SkyBlock Creator","color":"light_purple","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/trigger interact"}},{"text":"<<\n","color":"green"}]
execute at @s[tag=!T0] unless entity @s[x=-372,y=138,z=-233,distance=..9] unless data block -374 137 -234 {Text2:'{"bold":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/function library:island/reset"},"text":"Reset"}'} run scoreboard players enable @s interact
execute at @s[tag=!T0] unless entity @s[x=-372,y=138,z=-233,distance=..9] unless data block -374 137 -234 {Text2:'{"bold":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/function library:island/reset"},"text":"Reset"}'} run tag @s add mk.06
execute at @s[tag=!T0] if score @e[name="M@K",limit=1] mg15 matches 0 run tag @s add mk.06
execute at @s[tag=!T0] if score @e[name="M@K",limit=1] mg15 matches 0 run scoreboard players enable @s interact
execute at @s[tag=!T0] if score @s mg15 matches 0 run scoreboard players reset @s mg15

execute if score @e[name="M@K",limit=1] mg15 matches 1 run advancement grant @s[tag=!T0] only mk:play_minigame2
execute at @s[tag=!T0] in void if score @e[name="M@K",limit=1] mg15 matches 1 run tp @s 7 119 7
execute at @s[tag=!T0] in void if score @e[name="M@K",limit=1] mg15 matches 1 run spreadplayers 7 7 0 9 false @s
execute at @s[tag=!T0] if score @e[name="M@K",limit=1] mg15 matches 1 run tag @s add m-g
execute at @s[tag=!T0] if score @e[name="M@K",limit=1] mg15 matches 1 run function d3:mg15/loop
execute at @s[tag=!T0] if score @e[name="M@K",limit=1] mg15 matches 1 run tag @s add mg0+1
execute at @s[tag=!T0] if score @e[name="M@K",limit=1] mg15 matches 1 run effect clear @s
execute at @s[tag=!T0] if score @e[name="M@K",limit=1] mg15 matches 1 run gamemode survival @s
execute at @s[tag=!T0] if score @e[name="M@K",limit=1] mg15 matches 1 run title @s clear
execute at @s[tag=!T0] if score @e[name="M@K",limit=1] mg15 matches 1 run title @s reset
execute at @s[tag=!T0] if score @e[name="M@K",limit=1] mg15 matches 1 run function clear:chat
execute if score @e[name="M@K",limit=1] mg15 matches 1 store result score @s[tag=!T0] c if entity @a[scores={mg15=1..}]
execute at @s[tag=!T0] if score @e[name="M@K",limit=1] mg15 matches 1 run scoreboard players set @s mg15 1

title @s[tag=T0] actionbar ["",{"text":"Persistent games cannot be selected","color":"yellow","bold":true}]