stopsound @s master music_disc.pigstep
execute unless entity @a[tag=mg-1] run scoreboard players set @e[limit=1,name="M@K"] 6 0
tag @s add mg-1
effect clear @s
effect give @s blindness 2 1 true
effect give @s jump_boost 3 145 true
tp @s -333 245 98 90 0
team add mg-1
team modify mg-1 collisionRule pushOtherTeams