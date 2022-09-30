tag @s add mg24_start
scoreboard players set @s mg24.4 0
scoreboard players set @a[scores={mg24=1..},tag=MMplayers] mg24.6 0
give @a[scores={mg24=1..},tag=MMplayers,team=mg24-pink] firework_rocket{MM:1,display:{Name:'{"text":"@","color":"gold","obfuscated":true,"extra":[{"text":" Killer Missile ","color":"light_purple","italic":false,"obfuscated":false},{"text":"@","color":"gold","obfuscated":true}]}'},Enchantments:[{}],HideFlags:55,Fireworks:{KillerMissile:1}}
give @a[scores={mg24=1..},tag=MMplayers,team=mg24-green] firework_rocket{MM:1,display:{Name:'{"text":"@","color":"gold","obfuscated":true,"extra":[{"text":" Killer Missile ","color":"green","italic":false,"obfuscated":false},{"text":"@","color":"gold","obfuscated":true}]}'},Enchantments:[{}],HideFlags:55,Fireworks:{KillerMissile:1}}
title @a[scores={mg24=1..},tag=MMplayers] title [""]
title @a[scores={mg24=1..},team=mg24-blue] subtitle ["",{"text":"Shoot the most players!","color":"blue"}]
title @a[scores={mg24=1..},team=mg24-red] subtitle ["",{"text":"Shoot the most players!","color":"red"}]
execute as @a[scores={mg24=1..},tag=MMplayers] at @s run playsound entity.firework_rocket.blast_far master @s ~ ~ ~ 1000 0.7
execute as @a[scores={mg24=1..},tag=MMplayers] at @s run playsound block.note_block.bit master @s ~ ~ ~ 1000 2