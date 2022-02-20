execute as @a[tag=ed1t] at @s run function clear:chat
playsound ui.button.click master @s ~ ~ ~ 1 1.5
execute if entity @s[tag=!0n2,tag=!0n3] if data block -302 15 72 {Text3:'{"bold":true,"color":"aqua","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"CUSTOM"}'} run tag @s add 0n1
execute as @s[tag=0n1] at @s run data merge block -302 15 72 {Text3:'{"bold":true,"color":"gold","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"Template 1"}'}
execute if entity @s[tag=!0n1,tag=!0n3,tag=!0n4] if data block -302 15 72 {Text3:'{"bold":true,"color":"gold","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"Template 1"}'} run tag @s add 0n2
execute as @s[tag=0n2] at @s run data merge block -302 15 72 {Text3:'{"bold":true,"color":"gold","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"Template 2"}'}
execute if entity @s[tag=!0n1,tag=!0n2,tag=!0n4] if data block -302 15 72 {Text3:'{"bold":true,"color":"gold","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"Template 2"}'} run tag @s add 0n3
execute as @s[tag=0n3] at @s run data merge block -302 15 72 {Text3:'{"bold":true,"color":"aqua","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"CUSTOM"}'}
tag @s remove 0n1
tag @s remove 0n2
tag @s remove 0n3