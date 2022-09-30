execute if entity @s[tag=!0n2,tag=!0n3] if data block -290 15 60 {Text3:'{"bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/button3"},"extra":[{"bold":false,"color":"yellow","text":" >>"}],"text":"Single"}'} run tag @s add 0n1
execute as @s[tag=0n1] at @s run data merge block -290 15 60 {Text3:'{"bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/button3"},"extra":[{"bold":false,"color":"yellow","text":" >>"}],"text":"Periodic"}'}
execute as @s[tag=0n1] at @s run playsound ui.button.click master @s ~ ~ ~ 0.2 1
execute if entity @s[tag=!0n1,tag=!0n3] if data block -290 15 60 {Text3:'{"bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/button3"},"extra":[{"bold":false,"color":"yellow","text":" >>"}],"text":"Periodic"}'} run tag @s add 0n2
execute as @s[tag=0n2] at @s run data merge block -290 15 60 {Text3:'{"bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/function library:game/toggle/button3"},"extra":[{"bold":false,"color":"yellow","text":" >>"}],"text":"Null"}'}
execute as @s[tag=0n2] at @s run playsound ui.button.click master @s ~ ~ ~ 0.2 0.7
execute if entity @s[tag=!0n1,tag=!0n2] if data block -290 15 60 {Text3:'{"bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/function library:game/toggle/button3"},"extra":[{"bold":false,"color":"yellow","text":" >>"}],"text":"Null"}'} run tag @s add 0n3
execute as @s[tag=0n3] at @s run data merge block -290 15 60 {Text3:'{"bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/button3"},"extra":[{"bold":false,"color":"yellow","text":" >>"}],"text":"Single"}'}
execute as @s[tag=0n3] at @s run playsound ui.button.click master @s ~ ~ ~ 0.2 1

tag @s remove 0n1
tag @s remove 0n2
tag @s remove 0n3