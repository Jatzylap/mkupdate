execute if entity @s[tag=!0n2,tag=!0n3,tag=!0n4,tag=!0n5,tag=!0n6] if data block -308 15 61 {Text2:'{"extra":[{"bold":true,"color":"white","text":"Facing:"},{"bold":true,"color":"blue","text":" north"}],"text":""}'} run tag @s add 0n1
execute as @s[tag=0n1] at @s run data merge block -308 15 61 {Text2:'{"extra":[{"bold":true,"color":"white","text":"Facing:"},{"bold":true,"color":"blue","text":" south"}],"text":""}'}
execute if entity @s[tag=!0n1,tag=!0n3,tag=!0n4,tag=!0n5,tag=!0n6] if data block -308 15 61 {Text2:'{"extra":[{"bold":true,"color":"white","text":"Facing:"},{"bold":true,"color":"blue","text":" south"}],"text":""}'} run tag @s add 0n2
execute as @s[tag=0n2] at @s run data merge block -308 15 61 {Text2:'{"extra":[{"bold":true,"color":"white","text":"Facing:"},{"bold":true,"color":"blue","text":" west"}],"text":""}'}
execute if entity @s[tag=!0n1,tag=!0n2,tag=!0n4,tag=!0n5,tag=!0n6] if data block -308 15 61 {Text2:'{"extra":[{"bold":true,"color":"white","text":"Facing:"},{"bold":true,"color":"blue","text":" west"}],"text":""}'} run tag @s add 0n3
execute as @s[tag=0n3] at @s run data merge block -308 15 61 {Text2:'{"extra":[{"bold":true,"color":"white","text":"Facing:"},{"bold":true,"color":"blue","text":" east"}],"text":""}'}
execute if entity @s[tag=!0n2,tag=!0n3,tag=!0n1,tag=!0n5,tag=!0n6] if data block -308 15 61 {Text2:'{"extra":[{"bold":true,"color":"white","text":"Facing:"},{"bold":true,"color":"blue","text":" east"}],"text":""}'} run tag @s add 0n4
execute as @s[tag=0n4] at @s run data merge block -308 15 61 {Text2:'{"extra":[{"bold":true,"color":"white","text":"Facing:"},{"bold":true,"color":"blue","text":" up"}],"text":""}'}
execute if entity @s[tag=!0n2,tag=!0n3,tag=!0n4,tag=!0n1,tag=!0n6] if data block -308 15 61 {Text2:'{"extra":[{"bold":true,"color":"white","text":"Facing:"},{"bold":true,"color":"blue","text":" up"}],"text":""}'} run tag @s add 0n5
execute as @s[tag=0n5] at @s run data merge block -308 15 61 {Text2:'{"extra":[{"bold":true,"color":"white","text":"Facing:"},{"bold":true,"color":"blue","text":" down"}],"text":""}'}
execute if entity @s[tag=!0n2,tag=!0n3,tag=!0n4,tag=!0n5,tag=!0n1] if data block -308 15 61 {Text2:'{"extra":[{"bold":true,"color":"white","text":"Facing:"},{"bold":true,"color":"blue","text":" down"}],"text":""}'} run tag @s add 0n6
execute as @s[tag=0n6] at @s run data merge block -308 15 61 {Text2:'{"extra":[{"bold":true,"color":"white","text":"Facing:"},{"bold":true,"color":"blue","text":" north"}],"text":""}'}

tag @s remove 0n1
tag @s remove 0n2
tag @s remove 0n3
tag @s remove 0n4
tag @s remove 0n5
tag @s remove 0n6