playsound entity.item_frame.rotate_item master @s ~ ~ ~ 1
execute if entity @s[tag=!0ff] if data block -293 15 54 {Text3:'{"bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/function library:game/toggle/rotation"},"extra":[{"bold":false,"color":"black","text":" ❌"}],"text":"✔ "}'} run tag @s add 0n
execute as @s[tag=0n] at @s run tag @e[tag=3vent,tag=focus] add mgc_r
execute if entity @s[tag=!0n] if data block -293 15 54 {Text3:'{"bold":false,"color":"black","clickEvent":{"action":"run_command","value":"/function library:game/toggle/rotation"},"extra":[{"bold":true,"color":"red","text":" ❌"}],"text":"✔ "}'} run tag @s add 0ff
execute as @s[tag=0ff] at @s run tag @e[tag=3vent,tag=focus] remove mgc_r
tag @s remove 0n
tag @s remove 0ff