execute as @a[tag=ed1t] at @s run function clear:chat
playsound ui.button.click master @s ~ ~ ~ 1 1.5
execute if entity @s[tag=!0n2,tag=!0n3,tag=!0n4,tag=!0n5,tag=!0n6] if data block -302 15 72 {Text3:'{"bold":true,"color":"aqua","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"CUSTOM"}'} run tag @s add 0n1
execute as @s[tag=0n1] at @s run data merge block -302 15 72 {Text3:'{"bold":true,"color":"gold","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"Template 1"}'}
execute if entity @s[tag=!0n1,tag=!0n3,tag=!0n4,tag=!0n5,tag=!0n6] if data block -302 15 72 {Text3:'{"bold":true,"color":"gold","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"Template 1"}'} run tag @s add 0n2
execute as @s[tag=0n2] at @s run data merge block -302 15 72 {Text3:'{"bold":true,"color":"gold","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"Template 2"}'}
execute if entity @s[tag=!0n1,tag=!0n2,tag=!0n4,tag=!0n5,tag=!0n6] if data block -302 15 72 {Text3:'{"bold":true,"color":"gold","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"Template 2"}'} run tag @s add 0n3
execute as @s[tag=0n3] at @s if entity @e[tag=mgc_save3] run data merge block -302 15 72 {Text3:'{"bold":true,"color":"green","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"Project 3"}'}
execute as @s[tag=0n3] at @s if entity @e[tag=mgc_save2] run data merge block -302 15 72 {Text3:'{"bold":true,"color":"green","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"Project 2"}'}
execute as @s[tag=0n3] at @s if entity @e[tag=mgc_save1] run data merge block -302 15 72 {Text3:'{"bold":true,"color":"green","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"Project 1"}'}
execute if entity @s[tag=!0n1,tag=!0n2,tag=!0n3,tag=!0n5,tag=!0n6] if data block -302 15 72 {Text3:'{"bold":true,"color":"green","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"Project 1"}'} run tag @s add 0n4
execute as @s[tag=0n4] at @s if entity @e[tag=mgc_save3] run data merge block -302 15 72 {Text3:'{"bold":true,"color":"green","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"Project 3"}'}
execute as @s[tag=0n4] at @s if entity @e[tag=mgc_save2] run data merge block -302 15 72 {Text3:'{"bold":true,"color":"green","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"Project 2"}'}
execute if entity @s[tag=!0n1,tag=!0n2,tag=!0n3,tag=!0n4,tag=!0n6] if data block -302 15 72 {Text3:'{"bold":true,"color":"green","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"Project 2"}'} run tag @s add 0n5
execute as @s[tag=0n5] at @s if entity @e[tag=mgc_save3] run data merge block -302 15 72 {Text3:'{"bold":true,"color":"green","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"Project 3"}'}
execute if entity @s[tag=!0n1,tag=!0n2,tag=!0n3,tag=!0n4,tag=!0n5] if data block -302 15 72 {Text3:'{"bold":true,"color":"green","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"Project 3"}'} run tag @s add 0n6
execute as @s[tag=0n3] at @s if data block -302 15 72 {Text3:'{"bold":true,"color":"gold","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"Template 2"}'} run data merge block -302 15 72 {Text3:'{"bold":true,"color":"aqua","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"CUSTOM"}'}
execute as @s[tag=0n4] at @s if data block -302 15 72 {Text3:'{"bold":true,"color":"green","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"Project 1"}'} run data merge block -302 15 72 {Text3:'{"bold":true,"color":"aqua","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"CUSTOM"}'}
execute as @s[tag=0n5] at @s if data block -302 15 72 {Text3:'{"bold":true,"color":"green","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"Project 2"}'} run data merge block -302 15 72 {Text3:'{"bold":true,"color":"aqua","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"CUSTOM"}'}
execute as @s[tag=0n6] at @s run data merge block -302 15 72 {Text3:'{"bold":true,"color":"aqua","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"CUSTOM"}'}
tag @s remove 0n1
tag @s remove 0n2
tag @s remove 0n3
tag @s remove 0n4
tag @s remove 0n5
tag @s remove 0n6