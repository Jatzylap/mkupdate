playsound ui.button.click master @s ~ ~ ~ 0.2
tag @e[tag=curs0r] remove clear
tag @e[tag=curs0r] remove fill
execute if entity @s[tag=!0ff] if data block -308 15 64 {Text2:'{"bold":true,"color":"red","text":"ERASE"}'} run tag @s add 0n
execute as @s[tag=0n] at @s run data merge block -308 15 64 {Text2:'{"bold":true,"color":"yellow","text":"FILL"}'}
execute as @s[tag=0n] at @s run data merge block -308 15 61 {Text3:'{"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/face"},"text":"           >>"}',Text2:'{"extra":[{"bold":true,"color":"white","text":"Facing:"},{"bold":true,"color":"blue","text":" north"}],"text":""}'}
execute if entity @s[tag=!0n] if data block -308 15 64 {Text2:'{"bold":true,"color":"yellow","text":"FILL"}'} run tag @s add 0ff
execute as @s[tag=0ff] at @s run data merge block -308 15 64 {Text2:'{"bold":true,"color":"red","text":"ERASE"}'}
execute as @s[tag=0ff] at @s run data merge block -308 15 61 {Text2:'',Text3:''}
tag @s remove 0n
tag @s remove 0ff