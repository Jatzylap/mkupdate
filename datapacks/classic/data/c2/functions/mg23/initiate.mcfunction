execute in overworld run data merge block -14 5 -13 {Text3:'{"text":"@","color":"gold","obfuscated":true,"clickEvent":{"action":"run_command","value":"tag @s[tag=!T0] add SPmg23"}}'}
scoreboard players enable @a[scores={mg23=1..}] lobby

tag @a[scores={mg23=1..},x=-94,y=1,z=80,dx=13,dy=3,dz=13,tag=!CTFplayers] add CTFplayers
team modify mg23-red friendlyFire false
team modify mg23-red collisionRule pushOtherTeams
team modify mg23-red seeFriendlyInvisibles true
team modify mg23-blue friendlyFire false
team modify mg23-blue collisionRule pushOtherTeams
team modify mg23-blue seeFriendlyInvisibles true

execute as @a[scores={mg23=1..},tag=CTFplayers,tag=mg23-red] at @s run team join mg23-red
execute as @a[scores={mg23=1..},tag=CTFplayers,tag=mg23-blue] at @s run team join mg23-blue
effect clear @a[scores={mg23=1..},tag=CTFplayers]
effect give @a[scores={mg23=1..},tag=CTFplayers] weakness 15 100 true
effect give @a[scores={mg23=1..},tag=CTFplayers] resistance 15 100 true
gamemode adventure @a[scores={mg23=1..},tag=CTFplayers]
execute in sister_dimension run spawnpoint @a[team=mg23-red,tag=CTFplayers] -17 4 53
execute in sister_dimension run spawnpoint @a[team=mg23-blue,tag=CTFplayers] 38 4 -166
execute in sister_dimension run tp @a[team=mg23-red,tag=CTFplayers] -17 4 53
execute in sister_dimension run tp @a[team=mg23-blue,tag=CTFplayers] 38 4 -166
bossbar add ctf_countdown ["",{"text":"|"}]

scoreboard players set @e[name="M@K",limit=1] mg23.3 320
scoreboard players set @e[name="M@K",limit=1] mg23.5 16
scoreboard players set @a[scores={mg23=1..},tag=CTFplayers] mg23.8 0
bossbar set ctf_countdown max 320
bossbar set ctf_countdown value 320
execute in sister_dimension run forceload add 39 -165 38 -177
execute in sister_dimension run forceload add -18 52 -14 66
execute in sister_dimension run fill -18 5 51 -16 5 51 barrier
execute in sister_dimension run fill 37 5 -164 39 5 -164 barrier
execute in sister_dimension run fill -11 21 66 -23 21 54 barrier keep
execute in sister_dimension run fill 32 21 -167 44 21 -179 barrier keep
tag @a remove mg23-red
tag @a remove mg23-blue
scoreboard players reset @e[limit=1,name="M@K"] mg23.1
scoreboard players reset @e[limit=1,name="M@K"] mg23.2
execute in overworld run setblock -351 2 -39 redstone_block