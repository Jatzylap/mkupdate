execute if entity @s[tag=!0n2,tag=!0n3] if data block -290 15 59 {Text3:'{"bold":true,"color":"dark_aqua","clickEvent":{"action":"run_command","value":"/function library:game/toggle/bar"},"extra":[{"bold":false,"color":"yellow","text":" >>"}],"text":"Grow"}'} run tag @s add 0n1
execute as @s[tag=0n1] at @s run data merge block -290 15 59 {Text3:'{"bold":true,"color":"dark_aqua","clickEvent":{"action":"run_command","value":"/function library:game/toggle/bar"},"extra":[{"bold":false,"color":"yellow","text":" >>"}],"text":"Deplete"}'}
execute if entity @s[tag=0n1] run playsound block.beacon.deactivate master @s ~ ~ ~ 1 2
execute if entity @s[tag=0n1] run stopsound @s master block.beacon.activate
execute if entity @s[tag=!0n1,tag=!0n3] if data block -290 15 59 {Text3:'{"bold":true,"color":"dark_aqua","clickEvent":{"action":"run_command","value":"/function library:game/toggle/bar"},"extra":[{"bold":false,"color":"yellow","text":" >>"}],"text":"Deplete"}'} run tag @s add 0n2
execute as @s[tag=0n2] at @s run data merge block -290 15 59 {Text3:'{"bold":true,"color":"gray","clickEvent":{"action":"run_command","value":"/function library:game/toggle/bar"},"extra":[{"bold":false,"color":"yellow","text":" >>"}],"text":"Off"}'}
execute if entity @s[tag=!0n1,tag=!0n2] if data block -290 15 59 {Text3:'{"bold":true,"color":"gray","clickEvent":{"action":"run_command","value":"/function library:game/toggle/bar"},"extra":[{"bold":false,"color":"yellow","text":" >>"}],"text":"Off"}'} run tag @s add 0n3
execute as @s[tag=0n3] at @s run data merge block -290 15 59 {Text3:'{"bold":true,"color":"dark_aqua","clickEvent":{"action":"run_command","value":"/function library:game/toggle/bar"},"extra":[{"bold":false,"color":"yellow","text":" >>"}],"text":"Grow"}'}
execute if entity @s[tag=0n3] run playsound block.beacon.activate master @s ~ ~ ~ 1 2
execute if entity @s[tag=0n3] run stopsound @s master block.beacon.deactivate
tag @s remove 0n1
tag @s remove 0n2
tag @s remove 0n3