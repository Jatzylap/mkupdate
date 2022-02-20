playsound ui.button.click master @s ~ ~ ~ 1
data merge block -308 15 68 {Text3:'{"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/branch"},"text":">>"}'}
data merge block -308 15 70 {Text3:''}
execute if entity @s[tag=!0n2,tag=!0n3,tag=!0n4] if data block -308 15 69 {Text2:'{"bold":true,"color":"yellow","text":"Challenge"}'} run tag @s add 0n1
execute if entity @s[tag=!0n1] if data block -308 15 69 {Text2:'{"bold":true,"color":"aqua","text":"Category?"}'} run data merge block -308 15 69 {Text2:'{"bold":true,"color":"yellow","text":"Challenge"}'}
execute as @s[tag=0n1] at @s run data merge block -308 15 69 {Text2:'{"bold":true,"color":"aqua","text":"Battle"}'}
execute if entity @s[tag=!0n1,tag=!0n3,tag=!0n4] if block -308 16 69 birch_wall_sign if data block -308 15 69 {Text2:'{"bold":true,"color":"aqua","text":"Battle"}'} run tag @s add 0n2
execute if entity @s[tag=!0n1,tag=!0n3,tag=!0n4] if block -308 16 69 oak_wall_sign if data block -308 15 69 {Text2:'{"bold":true,"color":"aqua","text":"Battle"}'} run tag @s add 0n3
execute as @s[tag=0n2] at @s run data merge block -308 15 69 {Text2:'{"bold":true,"color":"light_purple","text":"Party"}'}
execute if entity @s[tag=!0n1,tag=!0n2] if data block -308 15 69 {Text2:'{"bold":true,"color":"light_purple","text":"Party"}'} run tag @s add 0n3
execute as @s[tag=0n3] at @s run data merge block -308 15 69 {Text2:'{"bold":true,"color":"yellow","text":"Challenge"}'}
tag @s remove 0n1
tag @s remove 0n2
tag @s remove 0n3