playsound ui.button.click master @s ~ ~ ~ 1
execute unless entity @s[tag=0n] if block -120 27 69 dark_oak_wall_sign{Text4:'{"bold":true,"color":"green","text":"TRUE"}'} run tag @s add 0ff
execute as @s[tag=0ff] at @s run data merge block -120 27 69 {Text4:'{"bold":true,"color":"dark_red","text":"FALSE"}',Text3:'{"color":"gold","text":"Raiding","clickEvent":{"action":"run_command","value":"function mk:gamerule/17"}}',Text2:'{"color":"gold","text":"Pillager","clickEvent":{"action":"run_command","value":"gamerule disableRaids false"}}',Text1:'{"text":"GAMERULE","color":"green","bold":true}'}
execute unless entity @s[tag=0ff] if block -120 27 69 dark_oak_wall_sign{Text4:'{"bold":true,"color":"dark_red","text":"FALSE"}'} run tag @s add 0n
execute as @s[tag=0n] at @s run data merge block -120 27 69 {Text4:'{"bold":true,"color":"green","text":"TRUE"}',Text3:'{"color":"gold","text":"Raiding","clickEvent":{"action":"run_command","value":"function mk:gamerule/17"}}',Text2:'{"color":"gold","text":"Pillager","clickEvent":{"action":"run_command","value":"gamerule disableRaids true"}}',Text1:'{"text":"GAMERULE","color":"green","bold":true}'}
tag @s remove 0ff
tag @s remove 0n