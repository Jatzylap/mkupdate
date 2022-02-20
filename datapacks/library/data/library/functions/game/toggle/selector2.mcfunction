playsound entity.firework_rocket.shoot master @s ~ ~ ~ 0.2 2
execute if entity @s[tag=!0n2,tag=!0n3] if data block -307 15 54 {Text3:'{"bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/selector2"},"text":"All players"}'} run tag @s add 0n1
execute at @s[tag=0n1] run data merge block -307 15 54 {Text3:'{"bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function library:game/toggle/selector2"},"text":"Nearest"}'}
execute if entity @s[tag=!0n1,tag=!0n3] if data block -307 15 54 {Text3:'{"bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function library:game/toggle/selector2"},"text":"Nearest"}'} run tag @s add 0n2
execute at @s[tag=0n2] run data merge block -307 15 54 {Text3:'{"bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function library:game/toggle/selector2"},"text":"Random"}'}
execute if entity @s[tag=!0n1,tag=!0n2] if data block -307 15 54 {Text3:'{"bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function library:game/toggle/selector2"},"text":"Random"}'} run tag @s add 0n3
execute at @s[tag=0n3] run data merge block -307 15 54 {Text3:'{"bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/selector2"},"text":"All players"}'}
tag @s remove 0n1
tag @s remove 0n2
tag @s remove 0n3