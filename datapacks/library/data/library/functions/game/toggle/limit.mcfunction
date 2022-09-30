playsound block.lava.pop master @s ~ ~ ~ 0.5 2
execute if entity @s[tag=!0n2,tag=!0n3] if data block -290 15 60 {Text2:'{"bold":true,"color":"aqua","extra":[{"bold":false,"color":"light_purple","text":"@End"}],"text":"Until: "}'} run tag @s add 0n1
execute at @s[tag=0n1] run data merge block -290 15 60 {Text2:'{"bold":true,"color":"aqua","extra":[{"bold":false,"color":"yellow","text":"@Button"}],"text":"Until: "}'}
execute if entity @s[tag=!0n1,tag=!0n3] if data block -290 15 60 {Text2:'{"bold":true,"color":"aqua","extra":[{"bold":false,"color":"yellow","text":"@Button"}],"text":"Until: "}'} run tag @s add 0n2
execute at @s[tag=0n2] run data merge block -290 15 60 {Text2:'{"bold":true,"color":"aqua","extra":[{"bold":false,"color":"gold","text":"@Reset"}],"text":"Until: "}'}
execute if entity @s[tag=!0n1,tag=!0n2] if data block -290 15 60 {Text2:'{"bold":true,"color":"aqua","extra":[{"bold":false,"color":"gold","text":"@Reset"}],"text":"Until: "}'} run tag @s add 0n3
execute at @s[tag=0n3] run data merge block -290 15 60 {Text2:'{"bold":true,"color":"aqua","extra":[{"bold":false,"color":"yellow","text":"@Button"}],"text":"Until: "}'}
execute at @s[tag=0n3] unless data block -290 15 58 {Text2:'{"bold":true,"color":"aqua","extra":[{"bold":false,"color":"light_purple","text":"@End"}],"text":"After: "}'} run data merge block -290 15 60 {Text2:'{"bold":true,"color":"aqua","extra":[{"bold":false,"color":"light_purple","text":"@End"}],"text":"Until: "}'}
tag @s remove 0n1
tag @s remove 0n2
tag @s remove 0n3