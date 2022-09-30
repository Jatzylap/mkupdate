execute if entity @s[tag=!0n2,tag=!0n3,tag=!0n4,tag=!0n5,tag=!0n6] if data block -295 15 54 {Text2:'{"extra":[{"bold":true,"color":"white","text":"Size:"},{"bold":true,"color":"aqua","text":" 0"}],"text":""}'} run tag @s add 0n1
execute at @s[tag=0n1] run data merge block -295 15 54 {Text2:'{"extra":[{"bold":true,"color":"white","text":"Size:"},{"bold":true,"color":"aqua","text":" 1"}],"text":""}'}
execute if entity @s[tag=!0n1,tag=!0n3,tag=!0n4,tag=!0n5,tag=!0n6] if data block -295 15 54 {Text2:'{"extra":[{"bold":true,"color":"white","text":"Size:"},{"bold":true,"color":"aqua","text":" 1"}],"text":""}'} run tag @s add 0n2
execute at @s[tag=0n2] run data merge block -295 15 54 {Text2:'{"extra":[{"bold":true,"color":"white","text":"Size:"},{"bold":true,"color":"aqua","text":" 2"}],"text":""}'}
execute if entity @s[tag=!0n1,tag=!0n2,tag=!0n4,tag=!0n5,tag=!0n6] if data block -295 15 54 {Text2:'{"extra":[{"bold":true,"color":"white","text":"Size:"},{"bold":true,"color":"aqua","text":" 2"}],"text":""}'} run tag @s add 0n3
execute at @s[tag=0n3] run data merge block -295 15 54 {Text2:'{"extra":[{"bold":true,"color":"white","text":"Size:"},{"bold":true,"color":"gold","text":" 3"}],"text":""}'}
execute if entity @s[tag=!0n2,tag=!0n3,tag=!0n1,tag=!0n5,tag=!0n6] if data block -295 15 54 {Text2:'{"extra":[{"bold":true,"color":"white","text":"Size:"},{"bold":true,"color":"gold","text":" 3"}],"text":""}'} run tag @s add 0n4
execute at @s[tag=0n4] run data merge block -295 15 54 {Text2:'{"extra":[{"bold":true,"color":"white","text":"Size:"},{"bold":true,"color":"aqua","text":" 0"}],"text":""}'}

execute at @s[tag=0n1] as @e[tag=3vent,tag=focus,tag=particle] run tag @s add mgc_p1
execute at @s[tag=0n1] as @e[tag=3vent,tag=focus,tag=particle] run tag @s remove mgc_p2
execute at @s[tag=0n1] as @e[tag=3vent,tag=focus,tag=particle] run tag @s remove mgc_p3
execute at @s[tag=0n2] as @e[tag=3vent,tag=focus,tag=particle] run tag @s add mgc_p2
execute at @s[tag=0n2] as @e[tag=3vent,tag=focus,tag=particle] run tag @s remove mgc_p1
execute at @s[tag=0n2] as @e[tag=3vent,tag=focus,tag=particle] run tag @s remove mgc_p3
execute at @s[tag=0n3] as @e[tag=3vent,tag=focus,tag=particle] run tag @s add mgc_p3
execute at @s[tag=0n3] as @e[tag=3vent,tag=focus,tag=particle] run tag @s remove mgc_p1
execute at @s[tag=0n3] as @e[tag=3vent,tag=focus,tag=particle] run tag @s remove mgc_p2
execute at @s[tag=0n4] as @e[tag=3vent,tag=focus,tag=particle] run tag @s remove mgc_p1
execute at @s[tag=0n4] as @e[tag=3vent,tag=focus,tag=particle] run tag @s remove mgc_p2
execute at @s[tag=0n4] as @e[tag=3vent,tag=focus,tag=particle] run tag @s remove mgc_p3

tag @s remove 0n1
tag @s remove 0n2
tag @s remove 0n3
tag @s remove 0n4
tag @s remove 0n5
tag @s remove 0n6