spawnpoint @s[tag=!mg17_lvl] ~ ~ ~
tellraw @s[tag=!mg17_lvl] ["",{"text":"Checkpoint set!","color":"green"}]
particle totem_of_undying 583 64.5 -222.95 0.3 0.21 0 0.5 190 force @a[scores={mg17=1..},tag=!mg17_lvl]
tag @s add mg17_lvl