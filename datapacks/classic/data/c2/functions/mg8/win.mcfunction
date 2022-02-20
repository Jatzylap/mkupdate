scoreboard players set @r[team=mg8,tag=SWlonely,limit=1] mg8.1 1
execute as @a[team=mg8,scores={mg8.1=1},tag=SWplayers] at @s run tag @a[team=mg8] remove SWlonely
setblock -348 2 -52 redstone_block