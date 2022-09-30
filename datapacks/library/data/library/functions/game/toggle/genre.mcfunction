playsound ui.button.click master @s ~ ~ ~ 0.2
data merge block -308 15 69 {Text3:'{"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/category"},"text":">>"}'}
execute if entity @s[tag=!0n2] if data block -308 15 70 {Text2:'{"bold":true,"color":"green","text":"CLASSIC"}'} run tag @s add 0n1
execute if entity @s[tag=!0n1] if data block -308 15 70 {Text2:'{"bold":true,"color":"aqua","text":"Genre?"}'} run data merge block -308 15 70 {Text2:'{"bold":true,"color":"green","text":"CLASSIC"}'}
execute as @s[tag=0n1] at @s run data merge block -308 15 70 {Text2:'{"bold":true,"color":"light_purple","text":"DEFAULT"}'}
execute if entity @s[tag=!0n1] if data block -308 15 70 {Text2:'{"bold":true,"color":"light_purple","text":"DEFAULT"}'} run tag @s add 0n2
execute as @s[tag=0n2] at @s run data merge block -308 15 70 {Text2:'{"bold":true,"color":"green","text":"CLASSIC"}'}
tag @s remove 0n1
tag @s remove 0n2