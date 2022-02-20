playsound entity.item_frame.rotate_item master @s ~ ~ ~ 1
execute at @s[tag=!0ff] if data block -293 15 54 {Text3:'{"bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/function library:game/toggle/bind"},"extra":[{"bold":false,"color":"black","text":" ❌"}],"text":"✔ "}'} run tag @s add 0n
execute at @s[tag=0n] run tag @e[tag=3vent,tag=focus] remove mgc_pb
execute at @s[tag=!0n] if data block -293 15 54 {Text3:'{"bold":false,"color":"black","clickEvent":{"action":"run_command","value":"/function library:game/toggle/bind"},"extra":[{"bold":true,"color":"red","text":" ❌"}],"text":"✔ "}'} run tag @s add 0ff
execute at @s[tag=0ff] run tag @e[tag=3vent,tag=focus] add mgc_pb
tag @s remove 0n
tag @s remove 0ff