playsound block.chain.place master @s ~ ~ ~ 0.2
execute at @s[tag=!0n2,tag=!0n3,tag=!0n4] if data block -290 14 57 {Text2:'{"bold":true,"color":"white","text":"Mobs"}'} run tag @s add 0n
execute at @s[tag=0n] run data merge block -290 14 57 {Text2:'{"bold":true,"color":"white","text":"Blocks"}'}
execute at @s[tag=!0n,tag=!0n3,tag=!0n4,tag=!0n5] if data block -290 14 57 {Text2:'{"bold":true,"color":"white","text":"Blocks"}'} run tag @s add 0n2
execute at @s[tag=0n2] run data merge block -290 14 57 {Text2:'{"bold":true,"color":"white","text":"Targets"}'}
execute at @s[tag=!0n5,tag=!0n4,tag=!0n2,tag=!0n] if data block -290 14 57 {Text2:'{"bold":true,"color":"white","text":"Targets"}'} run tag @s add 0n3
execute at @s[tag=0n3] run data merge block -290 14 57 {Text2:'{"bold":true,"color":"white","text":"Non-Targets"}'}
execute at @s[tag=!0n5,tag=!0n3,tag=!0n2,tag=!0n] if data block -290 14 57 {Text2:'{"bold":true,"color":"white","text":"Non-Targets"}'} run tag @s add 0n4
execute at @s[tag=0n4] run data merge block -290 14 57 {Text2:'{"bold":true,"color":"white","text":"Players"}'}
execute at @s[tag=!0n4,tag=!0n3,tag=!0n2,tag=!0n] if data block -290 14 57 {Text2:'{"bold":true,"color":"white","text":"Players"}'} run tag @s add 0n5
execute at @s[tag=0n5] run data merge block -290 14 57 {Text2:'{"bold":true,"color":"white","text":"Other Players"}'}
execute at @s[tag=!0n5,tag=!0n4,tag=!0n3,tag=!0n2,tag=!0n] if data block -290 14 57 {Text2:'{"bold":true,"color":"white","text":"Other Players"}'} run tag @s add 0n6
execute at @s[tag=0n6] run data merge block -290 14 57 {Text2:'{"bold":true,"color":"white","text":"Mobs"}'}

tag @s remove 0n6
tag @s remove 0n5
tag @s remove 0n4
tag @s remove 0n3
tag @s remove 0n2
tag @s remove 0n