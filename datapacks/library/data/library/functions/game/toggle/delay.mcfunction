playsound block.lava.pop master @s ~ ~ ~ 0.2 2
execute if entity @s[tag=!0n2,tag=!0n3,tag=!0n4,tag=!0n5,tag=!0n6] if data block -290 15 58 {Text2:'{"bold":true,"color":"aqua","extra":[{"bold":false,"color":"green","text":"@Start"}],"text":"After: "}'} run tag @s add 0n1
execute as @s[tag=0n1] at @s run data merge block -290 15 58 {Text2:'{"bold":true,"color":"aqua","extra":[{"bold":false,"color":"yellow","text":"@Button"}],"text":"After: "}'}
execute if entity @s[tag=!0n1,tag=!0n3,tag=!0n4,tag=!0n5,tag=!0n6,tag=!0n7] if data block -290 15 58 {Text2:'{"bold":true,"color":"aqua","extra":[{"bold":false,"color":"yellow","text":"@Button"}],"text":"After: "}'} run tag @s add 0n2
execute as @s[tag=0n2] at @s run data merge block -290 15 58 {Text2:'{"bold":true,"color":"aqua","extra":[{"bold":false,"color":"yellow","text":"1s"}],"text":"After: "}'}
execute if entity @s[tag=!0n1,tag=!0n2,tag=!0n4,tag=!0n5,tag=!0n6,tag=!0n7] if data block -290 15 58 {Text2:'{"bold":true,"color":"aqua","extra":[{"bold":false,"color":"yellow","text":"1s"}],"text":"After: "}'} run tag @s add 0n3
execute as @s[tag=0n3] at @s run data merge block -290 15 58 {Text2:'{"bold":true,"color":"aqua","extra":[{"bold":false,"color":"yellow","text":"5s"}],"text":"After: "}'}
execute if entity @s[tag=!0n1,tag=!0n2,tag=!0n3,tag=!0n5,tag=!0n6,tag=!0n7] if data block -290 15 58 {Text2:'{"bold":true,"color":"aqua","extra":[{"bold":false,"color":"yellow","text":"5s"}],"text":"After: "}'} run tag @s add 0n4
execute as @s[tag=0n4] at @s run data merge block -290 15 58 {Text2:'{"bold":true,"color":"aqua","extra":[{"bold":false,"color":"yellow","text":"10s"}],"text":"After: "}'}
execute if entity @s[tag=!0n2,tag=!0n3,tag=!0n1,tag=!0n4,tag=!0n6,tag=!0n7] if data block -290 15 58 {Text2:'{"bold":true,"color":"aqua","extra":[{"bold":false,"color":"yellow","text":"10s"}],"text":"After: "}'} run tag @s add 0n5
execute as @s[tag=0n5] at @s run data merge block -290 15 58 {Text2:'{"bold":true,"color":"aqua","extra":[{"bold":false,"color":"yellow","text":"20s"}],"text":"After: "}'}
execute if entity @s[tag=!0n2,tag=!0n3,tag=!0n4,tag=!0n1,tag=!0n5,tag=!0n7] if data block -290 15 58 {Text2:'{"bold":true,"color":"aqua","extra":[{"bold":false,"color":"yellow","text":"20s"}],"text":"After: "}'} run tag @s add 0n6
execute as @s[tag=0n6] at @s run data merge block -290 15 58 {Text2:'{"bold":true,"color":"aqua","extra":[{"bold":false,"color":"red","text":"60s"}],"text":"After: "}'}
execute if entity @s[tag=!0n2,tag=!0n3,tag=!0n4,tag=!0n5,tag=!0n1,tag=!0n6] if data block -290 15 58 {Text2:'{"bold":true,"color":"aqua","extra":[{"bold":false,"color":"red","text":"60s"}],"text":"After: "}'} run tag @s add 0n7
execute as @s[tag=0n7] at @s run data merge block -290 15 58 {Text2:'{"bold":true,"color":"aqua","extra":[{"bold":false,"color":"green","text":"@Start"}],"text":"After: "}'}

tag @s remove 0n1
tag @s remove 0n2
tag @s remove 0n3
tag @s remove 0n4
tag @s remove 0n5
tag @s remove 0n6
tag @s remove 0n7