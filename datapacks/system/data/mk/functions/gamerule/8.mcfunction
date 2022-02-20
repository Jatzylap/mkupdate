playsound ui.button.click master @s ~ ~ ~ 1
execute unless entity @s[tag=0n] if block -120 27 72 dark_oak_wall_sign{Text4:'{"bold":true,"color":"green","text":"TRUE"}'} run tag @s add 0ff
execute as @s[tag=0ff] at @s run data merge block -120 27 72 {Text4:'{"bold":true,"color":"dark_red","text":"FALSE"}',Text3:'{"text":"","clickEvent":{"action":"run_command","value":"function mk:gamerule/8"}}',Text1:'{"color":"white","text":"Disable","clickEvent":{"action":"run_command","value":"datapack disable \\"file/update\\""}}',Text2:'{"text":"UPDATES","color":"yellow","bold":true}'}
execute unless entity @s[tag=0ff] if block -120 27 72 dark_oak_wall_sign{Text4:'{"bold":true,"color":"dark_red","text":"FALSE"}'} run tag @s add 0n
tellraw @s[tag=0n] ["",{"text":"\nUpdates & version info disabled.","color":"aqua"}]
tellraw @s[tag=0ff] ["",{"text":"\nUpdates & version info enabled.","color":"green"}]
execute as @s[tag=0n] at @s run data merge block -120 27 72 {Text4:'{"bold":true,"color":"green","text":"TRUE"}',Text3:'{"text":"","clickEvent":{"action":"run_command","value":"function mk:gamerule/8"}}',Text1:'{"color":"white","text":"Disable","clickEvent":{"action":"run_command","value":"datapack enable \\"file/update\\""}}',Text2:'{"text":"UPDATES","color":"yellow","bold":true}'}
tag @s remove 0ff
tag @s remove 0n