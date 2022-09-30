spawnpoint @s[tag=!mg17_lvl] ~ ~ ~
tellraw @s[tag=!mg17_lvl] ["",{"text":"Checkpoint set!","color":"yellow"}]
particle totem_of_undying 691.52 65.8 -136 0 0.16 0.3 0.5 190 force @a[scores={mg17=1..},tag=!mg17_lvl]
tag @s add mg17_lvl