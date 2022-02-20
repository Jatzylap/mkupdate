playsound ui.button.click master @s ~ ~ ~ 0.2
execute if entity @s[tag=!0ff] if data block -306 15 72 {Text2:'{"bold":true,"color":"gray","text":"Off"}'} run tag @s add 0n
execute as @s[tag=0n] at @s run data merge block -306 15 72 {Text2:'{"bold":true,"color":"dark_aqua","text":"On"}'}
execute if entity @s[tag=!0n] if data block -306 15 72 {Text2:'{"bold":true,"color":"dark_aqua","text":"On"}'} run tag @s add 0ff
execute as @s[tag=0ff] at @s run data merge block -306 15 72 {Text2:'{"bold":true,"color":"gray","text":"Off"}'}
tag @s remove 0n
tag @s remove 0ff