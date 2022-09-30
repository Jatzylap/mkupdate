execute if entity @s[tag=!0n2,tag=!0n3] if data block -290 15 59 {Text3:'{"bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/button2"},"extra":[{"bold":false,"color":"yellow","text":" >>"}],"text":"Previous"}'} run tag @s add 0n1
execute as @s[tag=0n1] at @s run data merge block -290 15 59 {Text3:'{"bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/button2"},"extra":[{"bold":false,"color":"yellow","text":" >>"}],"text":"Random"}'}
execute if entity @s[tag=0n1] run playsound ui.button.click master @s ~ ~ ~ 0.2 0.7
execute if entity @s[tag=!0n1,tag=!0n3,tag=!0n4] if data block -290 15 59 {Text3:'{"bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/button2"},"extra":[{"bold":false,"color":"yellow","text":" >>"}],"text":"Random"}'} run tag @s add 0n2
execute as @s[tag=0n2] at @s run data merge block -290 15 59 {Text2:'{"bold":true,"color":"yellow","text":"Restore if"}',Text3:'{"bold":true,"color":"white","clickEvent":{"action":"run_command","value":"/function library:game/toggle/button2"},"extra":[{"bold":false,"color":"yellow","text":" >>"}],"text":"No Targets"}'}
execute if entity @s[tag=0n2] run playsound ui.button.click master @s ~ ~ ~ 0.2 0.7
execute if entity @s[tag=!0n1,tag=!0n2,tag=!0n4] if data block -290 15 59 {Text2:'{"bold":true,"color":"yellow","text":"Restore if"}',Text3:'{"bold":true,"color":"white","clickEvent":{"action":"run_command","value":"/function library:game/toggle/button2"},"extra":[{"bold":false,"color":"yellow","text":" >>"}],"text":"No Targets"}'} run tag @s add 0n3
execute as @s[tag=0n3] at @s run data merge block -290 15 59 {Text2:'{"bold":true,"color":"yellow","text":"Restore"}',Text3:'{"bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/function library:game/toggle/button2"},"extra":[{"bold":false,"color":"yellow","text":" >>"}],"text":"none"}'}
execute if entity @s[tag=0n3] run playsound ui.button.click master @s ~ ~ ~ 0.2 1
execute if entity @s[tag=!0n1,tag=!0n2,tag=!0n3] if data block -290 15 59 {Text3:'{"bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/function library:game/toggle/button2"},"extra":[{"bold":false,"color":"yellow","text":" >>"}],"text":"none"}'} run tag @s add 0n4
execute as @s[tag=0n4] at @s run data merge block -290 15 59 {Text3:'{"bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/button2"},"extra":[{"bold":false,"color":"yellow","text":" >>"}],"text":"Previous"}'}
execute if entity @s[tag=0n4] run playsound ui.button.click master @s ~ ~ ~ 0.2 0.7
tag @s remove 0n1
tag @s remove 0n2
tag @s remove 0n3
tag @s remove 0n4