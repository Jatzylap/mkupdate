playsound ui.button.click master @s ~ ~ ~ 0.2
execute if entity @s[tag=!0n2,tag=!0n3,tag=!0n4,tag=!0n5] if data block -292 15 54 {Text3:'{"bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/selector3"},"text":"Everyone"}'} run tag @s add 0n1
execute at @s[tag=0n1] run data merge block -292 15 54 {Text3:'{"bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function library:game/toggle/selector3"},"text":"Enders"}'}
execute at @s[tag=0n1] as @e[tag=focus,tag=3vent] run tag @s add pb.1
execute at @s[tag=0n1] as @e[tag=focus,tag=3vent] run tag @s remove pb.2
execute at @s[tag=0n1] as @e[tag=focus,tag=3vent] run tag @s remove pb.3
execute at @s[tag=0n1] as @e[tag=focus,tag=3vent] run tag @s remove pb.4
execute if entity @s[tag=!0n1,tag=!0n3,tag=!0n4,tag=!0n5] if data block -292 15 54 {Text3:'{"bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function library:game/toggle/selector3"},"text":"Enders"}'} run tag @s add 0n2
execute at @s[tag=0n2] run data merge block -292 15 54 {Text3:'{"bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function library:game/toggle/selector3"},"text":"Others"}'}
execute at @s[tag=0n2] as @e[tag=focus,tag=3vent] run tag @s add pb.2
execute at @s[tag=0n2] as @e[tag=focus,tag=3vent] run tag @s remove pb.1
execute at @s[tag=0n2] as @e[tag=focus,tag=3vent] run tag @s remove pb.3
execute at @s[tag=0n2] as @e[tag=focus,tag=3vent] run tag @s remove pb.4
execute if entity @s[tag=!0n1,tag=!0n2,tag=!0n4,tag=!0n5] if data block -292 15 54 {Text3:'{"bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function library:game/toggle/selector3"},"text":"Others"}'} run tag @s add 0n3
execute at @s[tag=0n3] run data merge block -292 15 54 {Text3:'{"bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/selector3"},"text":"Nearest"}'}
execute at @s[tag=0n3] as @e[tag=focus,tag=3vent] run tag @s add pb.3
execute at @s[tag=0n3] as @e[tag=focus,tag=3vent] run tag @s remove pb.1
execute at @s[tag=0n3] as @e[tag=focus,tag=3vent] run tag @s remove pb.2
execute at @s[tag=0n3] as @e[tag=focus,tag=3vent] run tag @s remove pb.4
execute if entity @s[tag=!0n1,tag=!0n2,tag=!0n3,tag=!0n5] if data block -292 15 54 {Text3:'{"bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/selector3"},"text":"Nearest"}'} run tag @s add 0n4
execute at @s[tag=0n4] run data merge block -292 15 54 {Text3:'{"bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/selector3"},"text":"Random"}'}
execute at @s[tag=0n4] as @e[tag=focus,tag=3vent] run tag @s add pb.4
execute at @s[tag=0n4] as @e[tag=focus,tag=3vent] run tag @s remove pb.1
execute at @s[tag=0n4] as @e[tag=focus,tag=3vent] run tag @s remove pb.2
execute at @s[tag=0n4] as @e[tag=focus,tag=3vent] run tag @s remove pb.3
execute if entity @s[tag=!0n1,tag=!0n2,tag=!0n3,tag=!0n4] if data block -292 15 54 {Text3:'{"bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/selector3"},"text":"Random"}'} run tag @s add 0n5
execute at @s[tag=0n5] run data merge block -292 15 54 {Text3:'{"bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/selector3"},"text":"Everyone"}'}
execute at @s[tag=0n5] as @e[tag=focus,tag=3vent] run tag @s remove pb.1
execute at @s[tag=0n5] as @e[tag=focus,tag=3vent] run tag @s remove pb.2
execute at @s[tag=0n5] as @e[tag=focus,tag=3vent] run tag @s remove pb.3
execute at @s[tag=0n5] as @e[tag=focus,tag=3vent] run tag @s remove pb.4
tag @s remove 0n1
tag @s remove 0n2
tag @s remove 0n3
tag @s remove 0n4
tag @s remove 0n5