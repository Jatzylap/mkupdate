playsound ui.button.click master @s ~ ~ ~ 0.2
execute if entity @s[tag=!0ff] if data block -290 16 58 {Text2:'{"bold":true,"color":"green","text":"Adventure"}'} run tag @s add 0n1
execute at @s[tag=0n1] run data merge block -290 16 58 {Text2:'{"bold":true,"color":"green","text":"Survival"}'}
execute if entity @s[tag=!0n1] if data block -290 16 58 {Text2:'{"bold":true,"color":"green","text":"Survival"}'} run tag @s add 0n2
execute at @s[tag=0n2] run data merge block -290 16 58 {Text2:'{"bold":true,"color":"gray","text":"Spectator"}'}
execute at @s[tag=0n2] run data merge block -290 16 59 {Text3:'',Text2:'',Text1:''}
execute if entity @s[tag=!0n1,tag=!0n2] if data block -290 16 58 {Text2:'{"bold":true,"color":"gray","text":"Spectator"}'} run tag @s add 0ff
execute at @s[tag=0ff] run data merge block -290 16 58 {Text2:'{"bold":true,"color":"green","text":"Adventure"}'}
execute at @s[tag=0ff] run data merge block -290 16 59 {Text3:'{"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/loot"},"text":" >>"}',Text2:'{"bold":true,"color":"green","text":"Yes"}',Text1:'{"bold":true,"color":"white","text":"BLOCK LOOT"}'}
tag @s remove 0ff
tag @s remove 0n1
tag @s remove 0n2