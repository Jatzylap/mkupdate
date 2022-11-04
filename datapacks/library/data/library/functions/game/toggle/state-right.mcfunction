playsound block.sculk.charge master @s ~ ~ ~ 1 2
execute at @s[tag=!0n2,tag=!0n3,tag=!0n4,tag=!0n5,tag=!0n6,tag=!0n7,tag=!0n8,tag=!0n9,tag=!0n10,tag=!0n11] if data block -299 16 72 {Text4:'{"color":"aqua","extra":[{"color":"green","text":"  Project 1  "},{"color":"aqua","text":"|"}],"text":"|"}'} run tag @s add 0n1
execute at @s[tag=0n1] run data merge block -299 16 72 {Text4:'{"color":"aqua","extra":[{"color":"green","text":"  Project 2  "},{"color":"aqua","text":"|"}],"text":"|"}'}
execute at @s[tag=!0n1,tag=!0n3,tag=!0n4,tag=!0n5,tag=!0n6,tag=!0n7,tag=!0n8,tag=!0n9,tag=!0n10,tag=!0n11] if data block -299 16 72 {Text4:'{"color":"aqua","extra":[{"color":"green","text":"  Project 2  "},{"color":"aqua","text":"|"}],"text":"|"}'} run tag @s add 0n2
execute at @s[tag=0n2] run data merge block -299 16 72 {Text4:'{"color":"aqua","extra":[{"color":"green","text":"  Project 3  "},{"color":"aqua","text":"|"}],"text":"|"}'}
execute at @s[tag=!0n1,tag=!0n2,tag=!0n4,tag=!0n5,tag=!0n6,tag=!0n7,tag=!0n8,tag=!0n9,tag=!0n10,tag=!0n11] if data block -299 16 72 {Text4:'{"color":"aqua","extra":[{"color":"green","text":"  Project 3  "},{"color":"aqua","text":"|"}],"text":"|"}'} run tag @s add 0n3
execute at @s[tag=0n3] run data merge block -299 16 72 {Text4:'{"color":"aqua","extra":[{"color":"green","text":"  Project 4  "},{"color":"aqua","text":"|"}],"text":"|"}'}
execute at @s[tag=!0n1,tag=!0n2,tag=!0n3,tag=!0n5,tag=!0n6,tag=!0n7,tag=!0n8,tag=!0n9,tag=!0n10,tag=!0n11] if data block -299 16 72 {Text4:'{"color":"aqua","extra":[{"color":"green","text":"  Project 4  "},{"color":"aqua","text":"|"}],"text":"|"}'} run tag @s add 0n4
execute at @s[tag=0n4] run data merge block -299 16 72 {Text4:'{"color":"aqua","extra":[{"color":"green","text":"  Project 5  "},{"color":"aqua","text":"|"}],"text":"|"}'}
execute at @s[tag=!0n1,tag=!0n2,tag=!0n3,tag=!0n4,tag=!0n6,tag=!0n7,tag=!0n8,tag=!0n9,tag=!0n10,tag=!0n11] if data block -299 16 72 {Text4:'{"color":"aqua","extra":[{"color":"green","text":"  Project 5  "},{"color":"aqua","text":"|"}],"text":"|"}'} run tag @s add 0n5
execute at @s[tag=0n5] run data merge block -299 16 72 {Text4:'{"color":"aqua","extra":[{"color":"green","text":"  Project 6  "},{"color":"aqua","text":"|"}],"text":"|"}'}
execute at @s[tag=!0n1,tag=!0n2,tag=!0n3,tag=!0n4,tag=!0n5,tag=!0n7,tag=!0n8,tag=!0n9,tag=!0n10,tag=!0n11] if data block -299 16 72 {Text4:'{"color":"aqua","extra":[{"color":"green","text":"  Project 6  "},{"color":"aqua","text":"|"}],"text":"|"}'} run tag @s add 0n6
execute at @s[tag=0n6] run data merge block -299 16 72 {Text4:'{"color":"aqua","extra":[{"color":"green","text":"  Project 7  "},{"color":"aqua","text":"|"}],"text":"|"}'}
execute at @s[tag=!0n1,tag=!0n2,tag=!0n3,tag=!0n4,tag=!0n5,tag=!0n6,tag=!0n8,tag=!0n9,tag=!0n10,tag=!0n11] if data block -299 16 72 {Text4:'{"color":"aqua","extra":[{"color":"green","text":"  Project 7  "},{"color":"aqua","text":"|"}],"text":"|"}'} run tag @s add 0n7
execute at @s[tag=0n7] run data merge block -299 16 72 {Text4:'{"color":"aqua","extra":[{"color":"green","text":"  Project 8  "},{"color":"aqua","text":"|"}],"text":"|"}'}
execute at @s[tag=!0n1,tag=!0n2,tag=!0n3,tag=!0n4,tag=!0n5,tag=!0n6,tag=!0n7,tag=!0n9,tag=!0n10,tag=!0n11] if data block -299 16 72 {Text4:'{"color":"aqua","extra":[{"color":"green","text":"  Project 8  "},{"color":"aqua","text":"|"}],"text":"|"}'} run tag @s add 0n8
execute at @s[tag=0n8] run data merge block -299 16 72 {Text4:'{"color":"aqua","extra":[{"color":"green","text":"  Project 9  "},{"color":"aqua","text":"|"}],"text":"|"}'}
execute at @s[tag=!0n1,tag=!0n2,tag=!0n3,tag=!0n4,tag=!0n5,tag=!0n6,tag=!0n7,tag=!0n8,tag=!0n10,tag=!0n11] if data block -299 16 72 {Text4:'{"color":"aqua","extra":[{"color":"green","text":"  Project 9  "},{"color":"aqua","text":"|"}],"text":"|"}'} run tag @s add 0n9
execute at @s[tag=0n9] run data merge block -299 16 72 {Text4:'{"color":"aqua","extra":[{"color":"green","text":"  Project 10  "},{"color":"aqua","text":"|"}],"text":"|"}'}
execute at @s[tag=!0n1,tag=!0n2,tag=!0n3,tag=!0n4,tag=!0n5,tag=!0n6,tag=!0n7,tag=!0n8,tag=!0n9,tag=!0n11] if data block -299 16 72 {Text4:'{"color":"aqua","extra":[{"color":"green","text":"  Project 10  "},{"color":"aqua","text":"|"}],"text":"|"}'} run tag @s add 0n10
execute at @s[tag=0n10] run data merge block -299 16 72 {Text4:'',Text2:'{"bold":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/execute unless entity @a[scores={mgc=-1..}] run function library:game/save"},"text":"SAVE"}'}
execute at @s[tag=0n10] run tag @e[name="M@K",limit=1] remove mgc_save
execute at @s[tag=!0n1,tag=!0n2,tag=!0n3,tag=!0n4,tag=!0n5,tag=!0n6,tag=!0n7,tag=!0n8,tag=!0n9,tag=!0n10] if data block -299 16 72 {Text4:'{"text":""}',Text2:'{"bold":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/execute unless entity @a[scores={mgc=-1..}] run function library:game/save"},"text":"SAVE"}'} run tag @s add 0n11
execute at @s[tag=0n11] run data merge block -299 16 72 {Text2:'{"bold":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/execute unless entity @a[scores={mgc=-1..}] run function library:game/save"},"text":"SAVE AS"}',Text4:'{"color":"aqua","extra":[{"color":"green","text":"  Project 1  "},{"color":"aqua","text":"|"}],"text":"|"}'}
execute at @s[tag=0n11] run tag @e[name="M@K",limit=1] add mgc_save
tag @s remove 0n1
tag @s remove 0n2
tag @s remove 0n3
tag @s remove 0n4
tag @s remove 0n5
tag @s remove 0n6
tag @s remove 0n7
tag @s remove 0n8
tag @s remove 0n9
tag @s remove 0n10
tag @s remove 0n11