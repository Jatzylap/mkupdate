scoreboard players reset @s 3
advancement grant @s[tag=!T0] only mk:play_minigame2
tag @s[tag=!T0] add m-g
team leave @s[tag=!T0]
execute at @s[tag=PG] if data block -163 5 -89 {Text3:'{"obfuscated":true,"color":"gold","clickEvent":{"action":"run_command","value":"tag @s[tag=!T0] add SPmg26"},"text":"@"}'} run tag @s add SPmg26
scoreboard players add @s[tag=!T0] mg26 1
execute in sister_dimension run tp @s[scores={mg26=1..}] 15 2 -377 -90 0
execute in sister_dimension run tp @s[tag=SPmg26] 21 8 -377
particle cloud 21 3 -377 1 1 1 0.1 3000 force @s[tag=P0ft,tag=!N0,scores={mg26=1..}]
title @s[tag=!T0] clear
title @s[tag=!T0] reset
tellraw @s ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n[","color":"yellow","bold":true},{"text":"@","color":"light_purple","obfuscated":true},{"text":"]","color":"yellow","bold":true},{"text":"---","color":"gold"},{"text":"MINIGAME INFO","color":"aqua","bold":true},{"text":"---","color":"gold"},{"text":"[","color":"yellow","bold":true},{"text":"@","color":"light_purple","obfuscated":true},{"text":"]","color":"yellow","bold":true},{"text":"\n\n\u21b1","color":"gold"},{"text":" Still up to scratch on your Minigame Kingdom lore? Answer all questions correctly or else..."},{"text":" \n\n Can you beat the Trivia Cube?","color":"yellow"},{"text":" \u21b2\n","color":"gold","bold":true}]
execute unless entity @s[tag=SPmg26] store result score @s c if entity @a[scores={mg26=1..}]
title @s[tag=T0] actionbar ["",{"text":"Trivia games cannot be selected","color":"yellow","bold":true}]