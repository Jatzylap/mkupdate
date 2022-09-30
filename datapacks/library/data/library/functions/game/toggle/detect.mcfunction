playsound ui.button.click master @s ~ ~ ~ 0.2 2
execute if entity @s[tag=!0n2,tag=!0n3,tag=!0n4] if data block -290 14 58 {Text2:'{"bold":true,"color":"white","extra":[{"color":"gold","text":"Mob"}],"text":"Detect: "}'} run tag @s add 0n
execute as @s[tag=0n] at @s run data merge block -290 14 58 {Text2:'{"text":"Detect: ","color":"white","bold":true,"extra":[{"text":"Player","color":"gold"}]}'}
execute if entity @s[tag=!0n,tag=!0n3,tag=!0n4] if data block -290 14 58 {Text2:'{"bold":true,"color":"white","extra":[{"color":"gold","text":"Player"}],"text":"Detect: "}'} run tag @s add 0n2
execute as @s[tag=0n2] at @s run data merge block -290 14 58 {Text2:'{"text":"Detect: ","color":"white","bold":true,"extra":[{"text":"Target","color":"gold"}]}'}
execute if entity @s[tag=!0n,tag=!0n2,tag=!0n4] if data block -290 14 58 {Text2:'{"bold":true,"color":"white","extra":[{"color":"gold","text":"Target"}],"text":"Detect: "}'} run tag @s add 0n3
execute as @s[tag=0n3] at @s run data merge block -290 14 58 {Text2:'{"text":"Detect: ","color":"white","bold":true,"extra":[{"text":"All","color":"yellow"}]}'}
execute if entity @s[tag=!0n2,tag=!0n,tag=!0n3] if data block -290 14 58 {Text2:'{"bold":true,"color":"white","extra":[{"color":"yellow","text":"All"}],"text":"Detect: "}'} run tag @s add 0n4
execute as @s[tag=0n4] at @s run data merge block -290 14 58 {Text2:'{"text":"Detect: ","color":"white","bold":true,"extra":[{"text":"Mob","color":"gold"}]}'}
tag @s remove 0n4
tag @s remove 0n3
tag @s remove 0n2
tag @s remove 0n