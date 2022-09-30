playsound ui.button.click master @s ~ ~ ~ 0.2
execute if entity @s[tag=!0ff] if data block -290 16 56 {Text2:'{"extra":[{"bold":true,"color":"white","text":"Countdown:"},{"bold":true,"color":"red","text":" No"}],"text":""}'} run tag @s add 0n
execute as @s[tag=0n] at @s run data merge block -290 16 56 {Text2:'{"extra":[{"bold":true,"color":"white","text":"Countdown:"},{"bold":true,"color":"green","text":" Yes"}],"text":""}'}
execute as @s[tag=0n] at @s run data merge block -290 16 57 {Text2:'{"bold":true,"color":"white","clickEvent":{"action":"run_command","value":"/function library:game/toggle/pre-time"},"extra":[{"bold":true,"color":"gold","text":"0"},{"bold":true,"color":"white","text":"s"}],"text":"From: "}'}
execute at @s[tag=0n] as @e[name="M@K",limit=1] run scoreboard players set @s mgc-1.6 0
execute at @s[tag=0n] as @e[tag=3vent,tag=start] store result entity @s AbsorptionAmount float 1 run scoreboard players get @e[name="M@K",limit=1] mgc-1.6

execute if entity @s[tag=!0n] if data block -290 16 56 {Text2:'{"extra":[{"bold":true,"color":"white","text":"Countdown:"},{"bold":true,"color":"green","text":" Yes"}],"text":""}'} run tag @s add 0ff
execute as @s[tag=0ff] at @s run data merge block -290 16 56 {Text2:'{"extra":[{"bold":true,"color":"white","text":"Countdown:"},{"bold":true,"color":"red","text":" No"}],"text":""}'}
execute as @s[tag=0ff] at @s run scoreboard players reset * mgc-1.6
execute as @s[tag=0ff] at @s run data merge block -290 16 57 {Text2:'',Text3:''}
tag @s remove 0ff
tag @s remove 0n