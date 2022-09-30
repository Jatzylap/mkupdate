playsound ui.button.click master @s ~ ~ ~ 1
execute if entity @s[tag=!0ff] if data block -327 3 -4 {Text3:'{"bold":true,"color":"red","text":"NO"}'} run tag @s add 0n
execute as @s[tag=0n] at @s run data merge block -327 3 -4 {Text3:'{"bold":true,"color":"green","text":"YES"}'}
execute if entity @s[tag=!0n] if data block -327 3 -4 {Text3:'{"bold":true,"color":"green","text":"YES"}'} run tag @s add 0ff
execute as @s[tag=0ff] at @s run data merge block -327 3 -4 {Text3:'{"bold":true,"color":"red","text":"NO"}'}
tag @s remove 0n
tag @s remove 0ff