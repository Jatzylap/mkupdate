scoreboard players reset @s 3
advancement grant @s[tag=!T0] only mk:play_minigame2
tag @s[tag=!T0] add m-g
scoreboard players add @s[tag=!T0] mg14 1
execute store result score @s c if entity @a[scores={mg14=1..}]
execute if score @s c matches 3.. run tag @s[tag=!T0] remove m-g
execute if score @s c matches 3.. run scoreboard players reset @s[tag=!T0] mg14
execute unless score @s c matches 3.. run team add mg14
execute unless score @s c matches 3.. run team join mg14 @s[tag=!T0]
execute unless score @s c matches 3.. run team modify mg14 friendlyFire false
execute unless score @s c matches 3.. run tag @s[tag=!T0,tag=!PG] add 8
execute unless score @s c matches 3.. run execute in parallel_aether run tp @s[tag=!T0] -122.0 42 80.0 0.0 1
execute unless score @s c matches 3.. run execute in parallel_aether run spawnpoint @s[tag=!T0] -122 42 80
execute unless score @s c matches 3.. run execute in parallel_aether run particle cloud -122.0 43 80.0 1 1 1 0.1 3000 force @a[tag=P0ft,tag=!N0,scores={mg14=1..}]
execute unless score @s c matches 3.. run effect clear @s[tag=!T0]
execute unless score @s c matches 3.. run title @s[tag=!T0] clear
execute unless score @s c matches 3.. run title @s[tag=!T0] reset

title @s[tag=T0] actionbar ["",{"text":"Persistent games cannot be selected","color":"yellow","bold":true}]
execute if score @s c matches 3.. run title @s[tag=!T0] actionbar ["",{"text":"There are too many players in this game!","color":"gold","bold":true}]