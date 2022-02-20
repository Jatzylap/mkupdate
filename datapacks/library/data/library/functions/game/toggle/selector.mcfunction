playsound ui.button.click master @s ~ ~ ~ 0.2
execute if entity @s[tag=!0n2,tag=!0n3] if data block -303 14 54 {Text3:'{"bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/selector"},"extra":[{"bold":false,"color":"yellow","text":">>"}],"text":"All "}'} run tag @s add 0n1
execute as @s[tag=0n1] at @s run data merge block -303 14 54 {Text3:'{"bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function library:game/toggle/selector"},"extra":[{"bold":false,"color":"yellow","text":">>"}],"text":"Enders "}'}
execute if entity @s[tag=!0n1,tag=!0n3] if data block -303 14 54 {Text3:'{"bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function library:game/toggle/selector"},"extra":[{"bold":false,"color":"yellow","text":">>"}],"text":"Enders "}'} run tag @s add 0n2
execute as @s[tag=0n2] at @s run data merge block -303 14 54 {Text3:'{"bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function library:game/toggle/selector"},"extra":[{"bold":false,"color":"yellow","text":">>"}],"text":"Others "}'}
execute if entity @s[tag=!0n1,tag=!0n2] if data block -303 14 54 {Text3:'{"bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function library:game/toggle/selector"},"extra":[{"bold":false,"color":"yellow","text":">>"}],"text":"Others "}'} run tag @s add 0n3
execute as @s[tag=0n3] at @s run data merge block -303 14 54 {Text3:'{"bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/selector"},"extra":[{"bold":false,"color":"yellow","text":">>"}],"text":"All "}'}
tag @s remove 0n1
tag @s remove 0n2
tag @s remove 0n3