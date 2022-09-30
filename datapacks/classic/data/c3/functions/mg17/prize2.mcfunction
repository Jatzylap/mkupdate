spawnpoint @s[tag=!mg17_lvl] ~ ~ ~
tellraw @s[tag=!mg17_lvl] ["",{"text":"Checkpoint set!","color":"dark_aqua"}]
particle totem_of_undying 719.95 66.5 -207 0 0.16 0.3 0.5 190 force @a[scores={mg17=1..},tag=!mg17_lvl]
tag @s add mg17_lvl