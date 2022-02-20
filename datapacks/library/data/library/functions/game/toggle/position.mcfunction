execute if entity @s[tag=!0n2,tag=!0n3,tag=!0n4] if data block -291 15 54 {Text3:'{"bold":true,"color":"#FC6396","clickEvent":{"action":"run_command","value":"/function library:game/toggle/position"},"text":"At Feet"}'} run tag @s add 0n1
execute at @s[tag=0n1] run data merge block -291 15 54 {Text3:'{"bold":true,"color":"#FC6396","clickEvent":{"action":"run_command","value":"/function library:game/toggle/position"},"text":"At Head"}'}
execute if entity @s[tag=!0n1,tag=!0n3,tag=!0n4] if data block -291 15 54 {Text3:'{"bold":true,"color":"#FC6396","clickEvent":{"action":"run_command","value":"/function library:game/toggle/position"},"text":"At Head"}'} run tag @s add 0n2
execute at @s[tag=0n2] run data merge block -291 15 54 {Text3:'{"bold":true,"color":"#FC6396","clickEvent":{"action":"run_command","value":"/function library:game/toggle/position"},"text":"Below Feet"}'}
execute if entity @s[tag=!0n1,tag=!0n2,tag=!0n4] if data block -291 15 54 {Text3:'{"bold":true,"color":"#FC6396","clickEvent":{"action":"run_command","value":"/function library:game/toggle/position"},"text":"Below Feet"}'} run tag @s add 0n3
execute at @s[tag=0n3] run data merge block -291 15 54 {Text3:'{"bold":true,"color":"#FC6396","clickEvent":{"action":"run_command","value":"/function library:game/toggle/position"},"text":"Above Head"}'}
execute if entity @s[tag=!0n1,tag=!0n2,tag=!0n3] if data block -291 15 54 {Text3:'{"bold":true,"color":"#FC6396","clickEvent":{"action":"run_command","value":"/function library:game/toggle/position"},"text":"Above Head"}'} run tag @s add 0n4
execute at @s[tag=0n4] run data merge block -291 15 54 {Text3:'{"bold":true,"color":"#FC6396","clickEvent":{"action":"run_command","value":"/function library:game/toggle/position"},"text":"At Feet"}'}

execute at @s[tag=0n1] as @e[tag=3vent,tag=focus] run tag @s add mgc_b1
execute at @s[tag=0n1] as @e[tag=3vent,tag=focus] run tag @s remove mgc_b2
execute at @s[tag=0n1] as @e[tag=3vent,tag=focus] run tag @s remove mgc_b3
execute at @s[tag=0n2] as @e[tag=3vent,tag=focus] run tag @s add mgc_b2
execute at @s[tag=0n2] as @e[tag=3vent,tag=focus] run tag @s remove mgc_b1
execute at @s[tag=0n2] as @e[tag=3vent,tag=focus] run tag @s remove mgc_b3
execute at @s[tag=0n3] as @e[tag=3vent,tag=focus] run tag @s add mgc_b3
execute at @s[tag=0n3] as @e[tag=3vent,tag=focus] run tag @s remove mgc_b1
execute at @s[tag=0n3] as @e[tag=3vent,tag=focus] run tag @s remove mgc_b2
execute at @s[tag=0n4] as @e[tag=3vent,tag=focus] run tag @s remove mgc_b1
execute at @s[tag=0n4] as @e[tag=3vent,tag=focus] run tag @s remove mgc_b2
execute at @s[tag=0n4] as @e[tag=3vent,tag=focus] run tag @s remove mgc_b3

tag @s remove 0n1
tag @s remove 0n2
tag @s remove 0n3
tag @s remove 0n4