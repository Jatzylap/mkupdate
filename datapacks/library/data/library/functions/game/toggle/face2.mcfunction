execute if entity @s[tag=!0n2,tag=!0n3,tag=!0n4,tag=!0n5,tag=!0n6] if data block -295 15 54 {Text2:'{"extra":[{"bold":true,"color":"white","text":"Facing:"},{"bold":true,"color":"yellow","text":" north"}],"text":""}'} run tag @s add 0n1
execute at @s[tag=0n1] run data merge block -295 15 54 {Text2:'{"extra":[{"bold":true,"color":"white","text":"Facing:"},{"bold":true,"color":"yellow","text":" south"}],"text":""}'}
execute if entity @s[tag=!0n1,tag=!0n3,tag=!0n4,tag=!0n5,tag=!0n6] if data block -295 15 54 {Text2:'{"extra":[{"bold":true,"color":"white","text":"Facing:"},{"bold":true,"color":"yellow","text":" south"}],"text":""}'} run tag @s add 0n2
execute at @s[tag=0n2] run data merge block -295 15 54 {Text2:'{"extra":[{"bold":true,"color":"white","text":"Facing:"},{"bold":true,"color":"yellow","text":" west"}],"text":""}'}
execute if entity @s[tag=!0n1,tag=!0n2,tag=!0n4,tag=!0n5,tag=!0n6] if data block -295 15 54 {Text2:'{"extra":[{"bold":true,"color":"white","text":"Facing:"},{"bold":true,"color":"yellow","text":" west"}],"text":""}'} run tag @s add 0n3
execute at @s[tag=0n3] run data merge block -295 15 54 {Text2:'{"extra":[{"bold":true,"color":"white","text":"Facing:"},{"bold":true,"color":"yellow","text":" east"}],"text":""}'}
execute if entity @s[tag=!0n2,tag=!0n3,tag=!0n1,tag=!0n5,tag=!0n6] if data block -295 15 54 {Text2:'{"extra":[{"bold":true,"color":"white","text":"Facing:"},{"bold":true,"color":"yellow","text":" east"}],"text":""}'} run tag @s add 0n4
execute at @s[tag=0n4] run data merge block -295 15 54 {Text2:'{"extra":[{"bold":true,"color":"white","text":"Facing:"},{"bold":true,"color":"yellow","text":" up"}],"text":""}'}
execute if entity @s[tag=!0n2,tag=!0n3,tag=!0n4,tag=!0n1,tag=!0n6] if data block -295 15 54 {Text2:'{"extra":[{"bold":true,"color":"white","text":"Facing:"},{"bold":true,"color":"yellow","text":" up"}],"text":""}'} run tag @s add 0n5
execute at @s[tag=0n5] run data merge block -295 15 54 {Text2:'{"extra":[{"bold":true,"color":"white","text":"Facing:"},{"bold":true,"color":"yellow","text":" down"}],"text":""}'}
execute if entity @s[tag=!0n2,tag=!0n3,tag=!0n4,tag=!0n5,tag=!0n1] if data block -295 15 54 {Text2:'{"extra":[{"bold":true,"color":"white","text":"Facing:"},{"bold":true,"color":"yellow","text":" down"}],"text":""}'} run tag @s add 0n6
execute at @s[tag=0n6] run data merge block -295 15 54 {Text2:'{"extra":[{"bold":true,"color":"white","text":"Facing:"},{"bold":true,"color":"yellow","text":" north"}],"text":""}'}

execute at @s[tag=0n1] as @e[tag=3vent,tag=focus,tag=block] run tag @s add mgc_f1
execute at @s[tag=0n1] as @e[tag=3vent,tag=focus,tag=block] run tag @s remove mgc_f2
execute at @s[tag=0n1] as @e[tag=3vent,tag=focus,tag=block] run tag @s remove mgc_f3
execute at @s[tag=0n1] as @e[tag=3vent,tag=focus,tag=block] run tag @s remove mgc_f4
execute at @s[tag=0n1] as @e[tag=3vent,tag=focus,tag=block] run tag @s remove mgc_f5
execute at @s[tag=0n2] as @e[tag=3vent,tag=focus,tag=block] run tag @s add mgc_f2
execute at @s[tag=0n2] as @e[tag=3vent,tag=focus,tag=block] run tag @s remove mgc_f1
execute at @s[tag=0n2] as @e[tag=3vent,tag=focus,tag=block] run tag @s remove mgc_f3
execute at @s[tag=0n2] as @e[tag=3vent,tag=focus,tag=block] run tag @s remove mgc_f4
execute at @s[tag=0n2] as @e[tag=3vent,tag=focus,tag=block] run tag @s remove mgc_f5
execute at @s[tag=0n3] as @e[tag=3vent,tag=focus,tag=block] run tag @s add mgc_f3
execute at @s[tag=0n3] as @e[tag=3vent,tag=focus,tag=block] run tag @s remove mgc_f1
execute at @s[tag=0n3] as @e[tag=3vent,tag=focus,tag=block] run tag @s remove mgc_f2
execute at @s[tag=0n3] as @e[tag=3vent,tag=focus,tag=block] run tag @s remove mgc_f4
execute at @s[tag=0n3] as @e[tag=3vent,tag=focus,tag=block] run tag @s remove mgc_f5
execute at @s[tag=0n4] as @e[tag=3vent,tag=focus,tag=block] run tag @s add mgc_f4
execute at @s[tag=0n4] as @e[tag=3vent,tag=focus,tag=block] run tag @s remove mgc_f1
execute at @s[tag=0n4] as @e[tag=3vent,tag=focus,tag=block] run tag @s remove mgc_f2
execute at @s[tag=0n4] as @e[tag=3vent,tag=focus,tag=block] run tag @s remove mgc_f3
execute at @s[tag=0n4] as @e[tag=3vent,tag=focus,tag=block] run tag @s remove mgc_f5
execute at @s[tag=0n5] as @e[tag=3vent,tag=focus,tag=block] run tag @s add mgc_f5
execute at @s[tag=0n5] as @e[tag=3vent,tag=focus,tag=block] run tag @s remove mgc_f1
execute at @s[tag=0n5] as @e[tag=3vent,tag=focus,tag=block] run tag @s remove mgc_f2
execute at @s[tag=0n5] as @e[tag=3vent,tag=focus,tag=block] run tag @s remove mgc_f3
execute at @s[tag=0n5] as @e[tag=3vent,tag=focus,tag=block] run tag @s remove mgc_f4
execute at @s[tag=0n6] as @e[tag=3vent,tag=focus,tag=block] run tag @s remove mgc_f1
execute at @s[tag=0n6] as @e[tag=3vent,tag=focus,tag=block] run tag @s remove mgc_f2
execute at @s[tag=0n6] as @e[tag=3vent,tag=focus,tag=block] run tag @s remove mgc_f3
execute at @s[tag=0n6] as @e[tag=3vent,tag=focus,tag=block] run tag @s remove mgc_f4
execute at @s[tag=0n6] as @e[tag=3vent,tag=focus,tag=block] run tag @s remove mgc_f5

tag @s remove 0n1
tag @s remove 0n2
tag @s remove 0n3
tag @s remove 0n4
tag @s remove 0n5
tag @s remove 0n6