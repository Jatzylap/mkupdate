execute if score @e[name="M@K",limit=1] dt matches 12700..13900 run forceload add 366 -274 256 -353
execute if score @e[name="M@K",limit=1] dt matches 12700..13900 run setblock 298 72 -291 campfire[lit=false]
execute if score @e[name="M@K",limit=1] dt matches 12700..13900 run setblock 354 71 -285 campfire[lit=false]
execute if score @e[name="M@K",limit=1] dt matches 12700..13900 run setblock 294 71 -348 campfire[lit=false]
execute if score @e[name="M@K",limit=1] dt matches 12700..13900 run team add mg12
execute unless entity @a[scores={mg12=1..}] if score @e[name="M@K",limit=1] dt matches 12700..13900 run summon horse 294 0 -291 {Team:mg12,Tags:[mg12,h1],DeathLootTable:"",NoGravity:1b,Attributes:[{Base:0d,Name:generic.movementSpeed}],NoAI:1,Silent:1,Rotation:[-90f],Invulnerable:1,ActiveEffects:[{Id:14b,Duration:100000,ShowParticles:0b}]}
execute unless entity @a[scores={mg12=1..}] if score @e[name="M@K",limit=1] dt matches 12700..13900 run summon horse 298 0 -294 {Team:mg12,Tags:[mg12,h2],DeathLootTable:"",NoGravity:1b,Attributes:[{Base:0d,Name:generic.movementSpeed}],NoAI:1,Silent:1,Invulnerable:1,ActiveEffects:[{Id:14b,Duration:100000,ShowParticles:0b}]}
execute unless entity @a[scores={mg12=1..}] if score @e[name="M@K",limit=1] dt matches 12700..13900 run summon horse 302 0 -291 {Team:mg12,Tags:[mg12,h3],DeathLootTable:"",NoGravity:1b,Attributes:[{Base:0d,Name:generic.movementSpeed}],NoAI:1,Silent:1,Rotation:[90f],Invulnerable:1,ActiveEffects:[{Id:14b,Duration:100000,ShowParticles:0b}]}
execute unless entity @a[scores={mg12=1..}] if score @e[name="M@K",limit=1] dt matches 12700..13900 run summon horse 298 0 -287 {Team:mg12,Tags:[mg12,h4],DeathLootTable:"",NoGravity:1b,Attributes:[{Base:0d,Name:generic.movementSpeed}],NoAI:1,Silent:1,Rotation:[180f],Invulnerable:1,ActiveEffects:[{Id:14b,Duration:100000,ShowParticles:0b}]}
execute as @e[type=horse,tag=mg12] at @s run tp ~ 71.5 ~
team modify mg12 seeFriendlyInvisibles false
team modify mg12 collisionRule never
execute unless score @e[name="M@K",limit=1] dt matches 12700..13900 run title @s[tag=!T0] actionbar ["",{"text":"This game will open at dusk","color":"yellow","bold":true}]
execute if score @e[name="M@K",limit=1] dt matches 12700..13900 run tag @s[tag=!T0] add m-g
execute if score @e[name="M@K",limit=1] dt matches 12700..13900 run team join mg12 @s[tag=!T0]
execute if entity @a[scores={mg12=1..}] run team leave @s[tag=!T0]
execute if score @e[name="M@K",limit=1] dt matches 12700..13900 run tp @s[tag=!T0] 298 72 -291
execute if score @e[name="M@K",limit=1] dt matches 12700..13900 run spawnpoint @s 298 72 -284
title @s[tag=!T0] clear
title @s[tag=!T0] reset
execute unless entity @a[scores={mg12=0..}] if score @e[name="M@K",limit=1] dt matches 12700..13900 run function d3:mg12/initiate
execute if score @e[name="M@K",limit=1] dt matches 12700..13900 run scoreboard players set @s[tag=!T0] mg12 2
particle cloud 298 73 -291 1 1 1 0.1 3000 force @a[tag=P0ft,tag=!N0,scores={mg12=2..}]

title @s[tag=T0] actionbar ["",{"text":"This game cannot be selected as its opening time is scheduled","color":"yellow","bold":true}]