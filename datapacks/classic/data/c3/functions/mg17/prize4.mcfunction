tag @s add Win
particle witch 692 84.5 -94.05 0.3 0.16 0 0.5 190 force @a[scores={mg17=1..},tag=!mg17_lvl2]
xp add @s[scores={mg17=1..},tag=Win] 25 points
advancement grant @s[scores={mg17=1..},tag=Win] only mk:achieve_all mg17
execute at @s[scores={mg17=1..},tag=Win] store success score @s 3 run advancement grant @s only mk:unlock_all mg17
scoreboard players add @s[scores={mg17=1..,3=1},tag=Win] 7 1
tellraw @a[scores={mg17=1..}] ["",{"selector":"@s","color":"yellow","bold":true},{"text":" has just completed ","color":"yellow","bold":true},{"text":"Sky","color":"aqua","bold":true},{"text":"Parkour","color":"white","bold":true},{"text":"!","color":"yellow","bold":true}]
tag @s add mg17_lvl2