#Check winner
execute as @a[scores={mg23=1..},tag=CTFplayers,team=!] at @s if score @e[tag=mg23_start,limit=1] mg23.4 matches 0..8400 run title @s actionbar ["",{"text":"Flag Captures: ","bold":true},{"score":{"name":"@s","objective":"mg23.8"},"color":"gold"},{"text":"/7","color":"gray"}]
execute as @a[scores={mg23=1..},tag=CTFplayers,team=!] at @s if score @e[tag=mg23_start,limit=1] mg23.8 matches 0.. run title @s actionbar ["",{"text":"Flag Captures: ","bold":true},{"score":{"name":"@s","objective":"mg23.8"},"color":"gold"},{"text":"/1","color":"gray"}]
execute as @a[scores={mg23=1..}] at @s run playsound ui.button.click master @s ~ ~ ~ 1000 2
execute if score @r[team=mg23-red] mg23.8 < @r[team=mg23-blue] mg23.8 run tag @a[team=mg23-blue,tag=CTFplayers] add mg23_win
execute if score @r[team=mg23-red] mg23.8 > @r[team=mg23-blue] mg23.8 run tag @a[team=mg23-red,tag=CTFplayers] add mg23_win
execute unless entity @a[tag=mg23_win] if score @r[team=mg23-red] mg23.8 = @r[team=mg23-blue] mg23.8 run scoreboard players set @s mg23.8 0

#Sudden death
execute if score @e[tag=mg23_start,limit=1] mg23.8 matches 0 in sister_dimension run summon creeper 14 4 -57 {Invulnerable:1,Tags:[mg23],DeathLootTable:"",PersistenceRequired:1}
execute if score @e[tag=mg23_start,limit=1] mg23.8 matches 0 in sister_dimension run summon creeper 14 4 -57 {Invulnerable:1,Tags:[mg23],DeathLootTable:"",PersistenceRequired:1}
execute if score @e[tag=mg23_start,limit=1] mg23.8 matches 0 in sister_dimension run summon creeper 14 4 -57 {Invulnerable:1,Tags:[mg23],DeathLootTable:"",PersistenceRequired:1}
execute if score @e[tag=mg23_start,limit=1] mg23.8 matches 0 in sister_dimension run summon creeper 14 4 -57 {Invulnerable:1,Tags:[mg23],DeathLootTable:"",PersistenceRequired:1}
execute if score @e[tag=mg23_start,limit=1] mg23.8 matches 0 in sister_dimension run spreadplayers 14 -57 10 75 under 11 false @e[tag=mg23,type=creeper]
execute if score @e[tag=mg23_start,limit=1] mg23.8 matches 0 run title @a[scores={mg23=1..},team=!] title ["",{"text":"- SUDDEN DEATH -","color":"gold","bold":true}]
execute if score @e[tag=mg23_start,limit=1] mg23.8 matches 0 run title @a[scores={mg23=1..},team=!] subtitle ["",{"text":"First to capture wins","bold":true}]
execute if score @e[tag=mg23_start,limit=1] mg23.8 matches 0 as @a[scores={mg23=1..},team=!] at @s run playsound ambient.cave master @s ~ ~ ~ 1000
execute if score @e[tag=mg23_start,limit=1] mg23.8 matches 0 as @a[scores={mg23=1..},team=!] at @s run playsound ambient.crimson_forest.loop master @s ~ ~ ~ 1000 0
scoreboard players reset * mg23.4
execute if entity @a[tag=mg23_win] run scoreboard players reset @a mg23.8
execute unless entity @a[tag=mg23_win] run scoreboard players set @a[scores={mg23=1..},tag=CTFplayers] mg23.8 0
execute unless entity @a[tag=mg23_win] run bossbar set ctf_countdown value 8400
execute unless entity @a[tag=mg23_win] in sister_dimension run setblock 89 25 -17 red_wool
execute unless entity @a[tag=mg23_win] in sister_dimension run setblock -75 25 -122 blue_wool
tag @a remove CTFprisoners
execute in sister_dimension run tp @a[team=mg23-red,tag=CTFplayers] -17 4 53
execute in sister_dimension run tp @a[team=mg23-blue,tag=CTFplayers] 38 4 -166
execute if entity @a[tag=mg23_win] run schedule function c2:mg23/win 2s