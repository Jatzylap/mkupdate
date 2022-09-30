playsound block.sculk.charge master @s ~ ~ ~ 1 2
execute at @s[tag=!0n2,tag=!0n3,tag=!0n4] if data block -299 16 72 {Text4:'{"color":"aqua","extra":[{"color":"green","text":"  Project 1  "},{"color":"aqua","text":"|"}],"text":"|"}'} run tag @s add 0n1
execute at @s[tag=0n1] run data merge block -299 16 72 {Text4:'{"color":"aqua","extra":[{"color":"green","text":"  Project 2  "},{"color":"aqua","text":"|"}],"text":"|"}'}
execute at @s[tag=!0n1,tag=!0n3,tag=!0n4] if data block -299 16 72 {Text4:'{"color":"aqua","extra":[{"color":"green","text":"  Project 2  "},{"color":"aqua","text":"|"}],"text":"|"}'} run tag @s add 0n2
execute at @s[tag=0n2] run data merge block -299 16 72 {Text4:'{"color":"aqua","extra":[{"color":"green","text":"  Project 3  "},{"color":"aqua","text":"|"}],"text":"|"}'}
execute at @s[tag=!0n1,tag=!0n2,tag=!0n4] if data block -299 16 72 {Text4:'{"color":"aqua","extra":[{"color":"green","text":"  Project 3  "},{"color":"aqua","text":"|"}],"text":"|"}'} run tag @s add 0n3
execute at @s[tag=0n3] run data merge block -299 16 72 {Text4:'',Text2:'{"bold":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/execute unless entity @a[scores={mgc=-1..}] run function library:game/save"},"text":"SAVE"}'}
execute at @s[tag=0n3] run tag @e[name="M@K",limit=1] remove mgc_save
execute at @s[tag=!0n1,tag=!0n2,tag=!0n3] if data block -299 16 72 {Text4:'{"text":""}',Text2:'{"bold":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/execute unless entity @a[scores={mgc=-1..}] run function library:game/save"},"text":"SAVE"}'} run tag @s add 0n4
execute at @s[tag=0n4] run data merge block -299 16 72 {Text2:'{"bold":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/execute unless entity @a[scores={mgc=-1..}] run function library:game/save"},"text":"SAVE AS"}',Text4:'{"color":"aqua","extra":[{"color":"green","text":"  Project 1  "},{"color":"aqua","text":"|"}],"text":"|"}'}
execute at @s[tag=0n4] run tag @e[name="M@K",limit=1] add mgc_save
tag @s remove 0n1
tag @s remove 0n2
tag @s remove 0n3
tag @s remove 0n4