playsound ui.button.click master @s ~ ~ ~ 0.2
execute if entity @s[tag=!0ff] if data block -306 14 72 {Text2:'{"bold":true,"color":"gold","text":"☐"}'} run tag @s add 0n
execute as @s[tag=0n] at @s run data merge block -306 14 72 {Text2:'{"bold":true,"color":"gold","text":"O"}'}
execute if entity @s[tag=!0n] if data block -306 14 72 {Text2:'{"bold":true,"color":"gold","text":"O"}'} run tag @s add 0ff
execute as @s[tag=0ff] at @s run function library:game/lock
execute as @s[tag=0ff] at @s run data merge block -306 14 72 {Text2:'{"bold":true,"color":"gold","text":"☐"}'}
execute as @s[tag=0ff] at @s run function library:game/clear/wall
tag @s remove 0n
tag @s remove 0ff