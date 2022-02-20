tag @s remove 5
tag @s remove 4
title @s clear
playsound ui.button.click master @s ~ ~ ~ 1
execute if entity @s[tag=N0] run tag @s add 0n
execute if entity @s[tag=!N0] run tag @s add 0ff
execute if entity @s[tag=0n] run title @s title ["",{"text":"Lobby Particles: "},{"text":"ON","color":"green"}]
execute if entity @s[tag=0ff] run title @s title ["",{"text":"Lobby Particles: "},{"text":"OFF","color":"gray"}]
execute if entity @s[tag=0n] run tag @s remove N0
execute if entity @s[tag=0ff] run tag @s add N0
tag @s remove 0n
tag @s remove 0ff
scoreboard players reset @s particle
scoreboard players enable @s particle