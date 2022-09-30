execute at @s[team=mg24-pink] run particle dust 1 0 1 7 ~ ~1 ~ 0.3 0.8 0.3 1 20 force @a[scores={mg24=1..}]
execute at @s[team=mg24-green] run particle dust 0 1 0 7 ~ ~1 ~ 0.3 0.8 0.3 1 20 force @a[scores={mg24=1..}]
execute at @s[team=mg24-pink] if entity @a[team=mg24-green,tag=MMplayers,scores={mg24.6=1..}] run scoreboard players add @a[team=mg24-green,tag=MMplayers] mg24.7 1
execute at @s[team=mg24-green] if entity @a[team=mg24-pink,tag=MMplayers,scores={mg24.6=1..}] run scoreboard players add @a[team=mg24-pink,tag=MMplayers] mg24.7 1
scoreboard players reset @a mg24.6
particle flash ~ ~ ~ 1 1 1 1 85 force @a[scores={mg24=1..}]
particle firework ~ ~ ~ 0 0 0 1 85 normal @a[scores={mg24=1..}]
clear @s firework_rocket
execute if block 791 3 60 polished_blackstone_pressure_plate run give @s[team=mg24-pink] firework_rocket{MM:1,display:{Name:'{"text":"@","color":"gold","obfuscated":true,"extra":[{"text":" Killer Missile ","color":"light_purple","italic":false,"obfuscated":false},{"text":"@","color":"gold","obfuscated":true}]}'},Enchantments:[{}],HideFlags:55,Fireworks:{KillerMissile:1}}
execute if block 932 3 60 polished_blackstone_pressure_plate run give @s[team=mg24-green] firework_rocket{MM:1,display:{Name:'{"text":"@","color":"gold","obfuscated":true,"extra":[{"text":" Killer Missile ","color":"green","italic":false,"obfuscated":false},{"text":"@","color":"gold","obfuscated":true}]}'},Enchantments:[{}],HideFlags:55,Fireworks:{KillerMissile:1}}