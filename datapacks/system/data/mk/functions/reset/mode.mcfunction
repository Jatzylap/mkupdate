tag @e[limit=1,name="M@K"] remove mode0
tag @e[limit=1,name="M@K"] remove mode1
tag @e[limit=1,name="M@K"] remove mode2
execute if block -108 46 72 lime_concrete run tag @e[limit=1,name="M@K"] add mode0
execute if block -108 46 72 light_blue_concrete run tag @e[limit=1,name="M@K"] add mode1
execute if block -108 46 72 yellow_concrete run tag @e[limit=1,name="M@K"] add mode2
execute if block -108 46 72 yellow_concrete run data merge block -109 46 72 {Text4:'{"italic":true,"color":"aqua","text":"Right-Click","clickEvent":{"action":"run_command","value":"function mk:reset/mode"}}',Text3:'{"bold":true,"color":"light_purple","text":"Speedrun"}',Text2:'{"bold":true,"color":"gold","text":"- Mode -","clickEvent":{"action":"run_command","value":"setblock -108 46 72 lime_concrete"}}',Text1:'{"text":"","clickEvent":{"action":"run_command","value":"playsound ui.button.click master @s ~ ~ ~ 1 1"}}'}
execute if block -108 46 72 light_blue_concrete run data merge block -109 46 72 {Text4:'{"italic":true,"color":"aqua","text":"Right-Click","clickEvent":{"action":"run_command","value":"function mk:reset/mode"}}',Text3:'{"bold":true,"color":"aqua","text":"Roleplay"}',Text2:'{"bold":true,"color":"gold","text":"- Mode -","clickEvent":{"action":"run_command","value":"setblock -108 46 72 yellow_concrete"}}',Text1:'{"text":"","clickEvent":{"action":"run_command","value":"playsound ui.button.click master @s ~ ~ ~ 1 1"}}'}
execute if block -108 46 72 lime_concrete run data merge block -109 46 72 {Text4:'{"italic":true,"color":"aqua","text":"Right-Click","clickEvent":{"action":"run_command","value":"function mk:reset/mode"}}',Text3:'{"bold":true,"color":"yellow","text":"Story"}',Text2:'{"bold":true,"color":"gold","text":"- Mode -","clickEvent":{"action":"run_command","value":"setblock -108 46 72 light_blue_concrete"}}',Text1:'{"text":"","clickEvent":{"action":"run_command","value":"playsound ui.button.click master @s ~ ~ ~ 1 1"}}'}