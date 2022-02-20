playsound block.note_block.iron_xylophone master @s ~ ~ ~ 0.2 1.3
execute if entity @s[tag=!0ff] if data block -307 15 72 {Text2:'{"bold":true,"color":"gray","text":"OFF"}'} run tag @s add 0n
execute as @s[tag=0n] at @s run data merge block -307 15 72 {Text2:'{"bold":true,"color":"aqua","text":"ON"}'}
execute if entity @s[tag=!0n] if data block -307 15 72 {Text2:'{"bold":true,"color":"aqua","text":"ON"}'} run tag @s add 0ff
execute as @s[tag=0ff] at @s run data merge block -307 15 72 {Text2:'{"bold":true,"color":"gray","text":"OFF"}'}
tag @s remove 0n
tag @s remove 0ff