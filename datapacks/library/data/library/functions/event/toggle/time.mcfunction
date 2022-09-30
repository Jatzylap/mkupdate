playsound ui.button.click master @s ~ ~ ~ 1
execute if entity @s[tag=!0n2,tag=!0n3,tag=!0n4] if data block -327 4 -4 {Text3:'{"bold":true,"color":"yellow","text":"2 game days"}'} run tag @s add 0n1
execute as @s[tag=0n1] at @s run data merge block -327 4 -4 {Text3:'{"bold":true,"color":"yellow","text":"Immediately"}'}
execute if entity @s[tag=!0n1,tag=!0n3,tag=!0n4] if data block -327 4 -4 {Text3:'{"bold":true,"color":"yellow","text":"Immediately"}'} run tag @s add 0n2
execute as @s[tag=0n2] at @s run data merge block -327 4 -4 {Text3:'{"bold":true,"color":"yellow","text":"15 minutes"}'}
execute if entity @s[tag=!0n1,tag=!0n2,tag=!0n4] if data block -327 4 -4 {Text3:'{"bold":true,"color":"yellow","text":"15 minutes"}'} run tag @s add 0n3
execute as @s[tag=0n3] at @s run data merge block -327 4 -4 {Text3:'{"bold":true,"color":"yellow","text":"1 game day"}'}
execute if entity @s[tag=!0n1,tag=!0n2,tag=!0n3] if data block -327 4 -4 {Text3:'{"bold":true,"color":"yellow","text":"1 game day"}'} run tag @s add 0n4
execute as @s[tag=0n4] at @s run data merge block -327 4 -4 {Text3:'{"bold":true,"color":"yellow","text":"2 game days"}'}
tag @s remove 0n4
tag @s remove 0n3
tag @s remove 0n2
tag @s remove 0n1