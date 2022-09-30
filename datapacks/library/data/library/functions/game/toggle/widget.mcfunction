playsound entity.armor_stand.hit master @s ~ ~ ~ 0.2 2
execute if entity @s[tag=!0n] if data block -306 14 54 {Text3:'{"bold":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/function library:game/toggle/widget"},"extra":[{"bold":false,"color":"yellow","text":" >>"}],"text":"ON"}'} run tag @s add 0ff
execute at @s[tag=0ff] run data merge block -306 14 54 {Text3:'{"bold":true,"color":"gray","clickEvent":{"action":"run_command","value":"/function library:game/toggle/widget"},"extra":[{"bold":false,"color":"yellow","text":" >>"}],"text":"OFF"}'}
execute if entity @s[tag=!0ff] if data block -306 14 54 {Text3:'{"bold":true,"color":"gray","clickEvent":{"action":"run_command","value":"/function library:game/toggle/widget"},"extra":[{"bold":false,"color":"yellow","text":" >>"}],"text":"OFF"}'} run tag @s add 0n
execute at @s[tag=0n] run data merge block -306 14 54 {Text3:'{"bold":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/function library:game/toggle/widget"},"extra":[{"bold":false,"color":"yellow","text":" >>"}],"text":"ON"}'}
tag @s remove 0n
tag @s remove 0ff