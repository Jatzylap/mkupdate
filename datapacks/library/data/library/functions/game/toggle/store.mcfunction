playsound ui.button.click master @s ~ ~ ~ 0.2 2
execute if entity @s[tag=!0ff] if data block -290 16 61 {Text2:'{"bold":true,"color":"green","text":"Store"}'} run tag @s add 0n
execute as @s[tag=0n] at @s run data merge block -290 16 61 {Text2:'{"bold":true,"color":"green","text":"Keep"}'}
execute if entity @s[tag=!0n] if data block -290 16 61 {Text2:'{"bold":true,"color":"green","text":"Keep"}'} run tag @s add 0ff
execute as @s[tag=0ff] at @s run data merge block -290 16 61 {Text2:'{"bold":true,"color":"green","text":"Store"}'}
tag @s remove 0ff
tag @s remove 0n