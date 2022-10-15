data merge block -163 5 -89 {Text3:'{"text":"@","color":"gold","obfuscated":true,"clickEvent":{"action":"run_command","value":"tag @s[tag=!T0] add SPmg24"}}'}
scoreboard players enable @a[scores={mg24=1..}] lobby

tag @a[scores={mg24=1..},x=726,y=205,z=42,dx=39,dy=9,dz=42,tag=!MMplayers] add MMplayers
team modify mg24-pink friendlyFire false
team modify mg24-pink collisionRule pushOtherTeams
team modify mg24-pink seeFriendlyInvisibles true
team modify mg24-green friendlyFire false
team modify mg24-green collisionRule pushOtherTeams
team modify mg24-green seeFriendlyInvisibles true
execute as @a[scores={mg24=1..},tag=MMplayers,tag=mg24-pink] at @s run team join mg24-pink
execute as @a[scores={mg24=1..},tag=MMplayers,tag=mg24-green] at @s run team join mg24-green
effect clear @a[scores={mg24=1..},tag=MMplayers]
gamemode adventure @a[scores={mg24=1..},tag=MMplayers]
tp @a[team=mg24-pink,tag=MMplayers] 791 3 60 -90 0
tp @a[team=mg24-green,tag=MMplayers] 932 3 60 90 0
spawnpoint @a[team=mg24-pink,tag=MMplayers] 791 3 60
spawnpoint @a[team=mg24-green,tag=MMplayers] 932 3 60
bossbar add mm_pink_gen ["",{"text":"Missile Generator Health"}]
bossbar add mm_green_gen ["",{"text":"Missile Generator Health"}]
tellraw @a[scores={mg24=1..}] ["",{"text":"\n>","color":"gray"},{"text":" You have ","color":"aqua"},{"text":"5 minutes","color":"yellow"},{"text":" to kill a maximum of players (","color":"aqua"},{"text":"using fireworks","color":"white"},{"text":") before the ","color":"aqua"},{"text":"champion team","color":"gold"},{"text":" is announced!\n","color":"aqua"}]
scoreboard players set @e[name="M@K",limit=1] mg24.5 11
scoreboard players set @a[scores={mg24=1..},tag=MMplayers] mg24.7 0
bossbar set mm_pink_gen max 100
bossbar set mm_green_gen max 100
bossbar set mm_pink_gen color pink
bossbar set mm_green_gen color green
forceload add 791 60
forceload add 932 60
tag @a remove mg24-pink
tag @a remove mg24-green
scoreboard players set @e[limit=1,name="M@K"] mg24.1 100
scoreboard players set @e[limit=1,name="M@K"] mg24.2 100
setblock -351 2 -42 redstone_block