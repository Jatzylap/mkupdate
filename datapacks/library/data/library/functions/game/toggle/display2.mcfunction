playsound ui.button.click master @s ~ ~ ~ 0.2
execute at @s[tag=!0ff] if data block -301 14 54 {Text3:'{"bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function library:game/toggle/display2"},"extra":[{"bold":false,"color":"yellow","text":">>"}],"text":"ON "}'} run tag @s add 0n
execute at @s[tag=0n] run data merge block -301 14 54 {Text3:'{"bold":true,"color":"gray","clickEvent":{"action":"run_command","value":"/function library:game/toggle/display2"},"extra":[{"bold":false,"color":"yellow","text":">>"}],"text":"OFF "}'}
execute at @s[tag=!0n] if data block -301 14 54 {Text3:'{"bold":true,"color":"gray","clickEvent":{"action":"run_command","value":"/function library:game/toggle/display2"},"extra":[{"bold":false,"color":"yellow","text":">>"}],"text":"OFF "}'} run tag @s add 0ff
execute at @s[tag=0ff] run data merge block -301 14 54 {Text3:'{"bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function library:game/toggle/display2"},"extra":[{"bold":false,"color":"yellow","text":">>"}],"text":"ON "}'}
tag @s remove 0ff
tag @s remove 0n