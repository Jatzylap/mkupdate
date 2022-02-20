playsound ui.button.click master @s ~ ~ ~ 0.2
execute if entity @s[tag=!0ff] if data block -306 16 72 {Text2:'{"bold":true,"color":"green","extra":[{"bold":false,"color":"white","text":" axis"}],"text":"X"}'} run tag @s add 0n
execute as @s[tag=0n] at @s run data merge block -306 16 72 {Text2:'{"bold":true,"color":"green","text":"X/Y","extra":[{"text":" axis","color":"white","bold":false}]}'}
execute if entity @s[tag=!0n] if data block -306 16 72 {Text2:'{"bold":true,"color":"green","extra":[{"bold":false,"color":"white","text":" axis"}],"text":"X/Y"}'} run tag @s add 0ff
execute as @s[tag=0ff] at @s run data merge block -306 16 72 {Text2:'{"bold":true,"color":"green","text":"X","extra":[{"text":" axis","color":"white","bold":false}]}'}
execute as @s[tag=0ff] at @s run data modify entity @e[tag=curs0r,limit=1] Rotation[1] set value 0f
tag @s remove 0n
tag @s remove 0ff