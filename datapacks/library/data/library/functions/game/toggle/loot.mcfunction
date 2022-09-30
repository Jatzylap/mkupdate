playsound ui.button.click master @s ~ ~ ~ 0.2
execute if entity @s[tag=!0ff] if data block -290 16 59 {Text2:'{"bold":true,"color":"green","text":"Yes"}'} run tag @s add 0n
execute as @s[tag=0n] at @s run data merge block -290 16 59 {Text2:'{"bold":true,"color":"red","text":"No Way"}'}
execute if entity @s[tag=!0n] if data block -290 16 59 {Text2:'{"bold":true,"color":"red","text":"No Way"}'} run tag @s add 0ff
execute as @s[tag=0ff] at @s run data merge block -290 16 59 {Text2:'{"bold":true,"color":"green","text":"Yes"}'}
tag @s remove 0ff
tag @s remove 0n