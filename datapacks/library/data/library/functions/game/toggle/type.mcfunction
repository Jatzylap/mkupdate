playsound ui.button.click master @s ~ ~ ~ 0.2 2
execute if entity @s[tag=!0n2,tag=!0n3,tag=!0n4] if data block -290 15 64 {Text2:'{"bold":true,"color":"green","text":"STARTER"}'} run tag @s add 0n1
execute as @s[tag=0n1] at @s run data merge block -290 15 64 {Text2:'{"bold":true,"color":"light_purple","text":"ENDER"}'}
execute if entity @s[tag=!0n1,tag=!0n3,tag=!0n4,tag=!0n5,tag=!0n6,tag=!0n7] if data block -290 15 64 {Text2:'{"bold":true,"color":"light_purple","text":"ENDER"}'} run tag @s add 0n2
execute as @s[tag=0n2] at @s run data merge block -290 15 64 {Text2:'{"bold":true,"color":"aqua","text":"ENTITY"}'}
execute if entity @s[tag=!0n1,tag=!0n2,tag=!0n4,tag=!0n5,tag=!0n6,tag=!0n7] if data block -290 15 64 {Text2:'{"bold":true,"color":"aqua","text":"ENTITY"}'} run tag @s add 0n3
execute as @s[tag=0n3] at @s run data merge block -290 15 64 {Text2:'{"bold":true,"color":"aqua","text":"PARTICLE"}'}
execute if entity @s[tag=!0n1,tag=!0n2,tag=!0n3,tag=!0n5,tag=!0n6,tag=!0n7] if data block -290 15 64 {Text2:'{"bold":true,"color":"aqua","text":"PARTICLE"}'} run tag @s add 0n4
execute as @s[tag=0n4] at @s run data merge block -290 15 64 {Text2:'{"bold":true,"color":"aqua","text":"SOUND"}'}
execute if entity @s[tag=!0n1,tag=!0n2,tag=!0n3,tag=!0n4,tag=!0n6,tag=!0n7] if data block -290 15 64 {Text2:'{"bold":true,"color":"aqua","text":"SOUND"}'} run tag @s add 0n5
execute as @s[tag=0n5] at @s run data merge block -290 15 64 {Text2:'{"bold":true,"color":"aqua","text":"BLOCK"}'}
execute if entity @s[tag=!0n1,tag=!0n2,tag=!0n3,tag=!0n4,tag=!0n5,tag=!0n7] if data block -290 15 64 {Text2:'{"bold":true,"color":"aqua","text":"BLOCK"}'} run tag @s add 0n6
execute as @s[tag=0n6] at @s run data merge block -290 15 64 {Text2:'{"bold":true,"color":"yellow","text":"BUTTON"}'}
execute if entity @s[tag=!0n1,tag=!0n2,tag=!0n3,tag=!0n4,tag=!0n5,tag=!0n6] if data block -290 15 64 {Text2:'{"bold":true,"color":"yellow","text":"BUTTON"}'} run tag @s add 0n7
execute as @s[tag=0n7] at @s run data merge block -290 15 64 {Text2:'{"bold":true,"color":"green","text":"STARTER"}'}
tag @s remove 0n1
tag @s remove 0n2
tag @s remove 0n3
tag @s remove 0n4
tag @s remove 0n5
tag @s remove 0n6
tag @s remove 0n7