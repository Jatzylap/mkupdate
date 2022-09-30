execute if entity @s[tag=!0n2,tag=!0n3] if data block -290 15 58 {Text3:'{"bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/button"},"extra":[{"bold":false,"color":"yellow","text":" >>"}],"text":"Interaction"}'} run tag @s add 0n1
execute as @s[tag=0n1] at @s run data merge block -290 15 58 {Text3:'{"bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/button"},"extra":[{"bold":false,"color":"light_purple","text":"@End"},{"bold":false,"color":"yellow","text":" >>"}],"text":"with "}'}
execute at @s[tag=0n1] run data merge block -290 15 59 {Text2:'',Text3:''}
execute at @s[tag=0n1] run data merge block -290 15 60 {Text2:'',Text3:''}
execute if entity @s[tag=0n1] run playsound ui.button.click master @s ~ ~ ~ 0.2
execute if entity @s[tag=!0n1,tag=!0n3] if data block -290 15 58 {Text3:'{"bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/button"},"extra":[{"bold":false,"color":"light_purple","text":"@End"},{"bold":false,"color":"yellow","text":" >>"}],"text":"with "}'} run tag @s add 0n2
execute at @s[tag=0n2] run data merge block -290 15 58 {Text3:'{"bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/function library:game/toggle/button"},"extra":[{"bold":false,"color":"yellow","text":" >>"}],"text":"Nothing"}'}
execute at @s[tag=0n2] run data merge block -290 15 60 {Text3:'{"bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/button3"},"extra":[{"bold":false,"color":"yellow","text":" >>"}],"text":"Single"}',Text2:'{"bold":true,"color":"white","text":"PULSE"}'}
execute at @s[tag=0n2] run playsound ui.button.click master @s ~ ~ ~ 0.2 0.7
execute if entity @s[tag=!0n1,tag=!0n2] if data block -290 15 58 {Text3:'{"bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/function library:game/toggle/button"},"extra":[{"bold":false,"color":"yellow","text":" >>"}],"text":"Nothing"}'} run tag @s add 0n3
execute as @s[tag=0n3] at @s run data merge block -290 15 58 {Text3:'{"bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/button"},"extra":[{"bold":false,"color":"yellow","text":" >>"}],"text":"Interaction"}'}
execute at @s[tag=0n3] run data merge block -290 15 59 {Text3:'{"bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/button2"},"extra":[{"bold":false,"color":"yellow","text":" >>"}],"text":"Previous"}',Text2:'{"bold":true,"color":"yellow","text":"Restore"}'}
execute at @s[tag=0n3] run data merge block -290 15 59 {Text3:'{"bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/button2"},"extra":[{"bold":false,"color":"yellow","text":" >>"}],"text":"Previous"}',Text2:'{"bold":true,"color":"yellow","text":"Restore"}'}
execute if entity @s[tag=0n3] run playsound ui.button.click master @s ~ ~ ~ 0.2
tag @s remove 0n1
tag @s remove 0n2
tag @s remove 0n3