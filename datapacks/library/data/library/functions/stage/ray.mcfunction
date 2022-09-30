execute store result score @s mg-1.1 run data get entity @s Pos[0] 1000
execute store result score @s mg-1.2 run data get entity @s Pos[1] 1000
execute store result score @s mg-1.3 run data get entity @s Pos[2] 1000
execute at @s run tp ^ ^ ^0.82
execute store result score @s mg-1.x run data get entity @s Pos[0] 1000
execute store result score @s mg-1.y run data get entity @s Pos[1] 1000
execute store result score @s mg-1.z run data get entity @s Pos[2] 1000
scoreboard players operation @s mg-1.x -= @s mg-1.1
scoreboard players operation @s mg-1.y -= @s mg-1.2
scoreboard players operation @s mg-1.z -= @s mg-1.3
playsound entity.panda.sneeze master @a ~ ~ ~ 1 0.85
execute if entity @e[name="M@K",limit=1,tag=mg-1] positioned ~ ~2 ~ run summon shulker_bullet ^ ^ ^ {Tags:[mg-1b]}
execute if entity @e[name="M@K",limit=1,tag=mg-1] if entity @e[tag=mg-1b] run summon creeper ~ 229 ~ {NoGravity:1,Tags:[mg-1c],ActiveEffects:[{Id:14b,Duration:999,Amplifier:1,ShowParticles:0b}],ignited:1b,Fuse:0.01s,Invulnerable:1}
execute if entity @e[name="M@K",limit=1,tag=mg-1s] if entity @e[tag=mg-1b] run summon creeper ~ 229 ~ {NoGravity:1,Tags:[mg-1c],ActiveEffects:[{Id:14b,Duration:999,Amplifier:1,ShowParticles:0b}],ignited:1b,Fuse:0.01s,Invulnerable:1}
execute if entity @e[name="M@K",limit=1,tag=mg-1] run tp @e[type=creeper,tag=mg-1c] ~ ~3 ~
execute if entity @e[name="M@K",limit=1,tag=mg-1s] positioned ~ ~0.6 ~ run summon shulker_bullet ^ ^ ^ {Tags:[mg-1b]}
execute if entity @e[name="M@K",limit=1,tag=mg-1s] if entity @a[tag=XPplayers,scores={mg-1=5..}] positioned ~ ~0.6 ~ unless entity @a[tag=XPplayers,distance=..5] run summon fireball ^ ^0.5 ^2 {ExplosionPower:3,Tags:[mg-1bc]}
execute store result entity @e[tag=mg-1b,sort=nearest,limit=1] Motion[0] double 0.003 run scoreboard players get @s mg-1.x
execute store result entity @e[tag=mg-1b,sort=nearest,limit=1] Motion[1] double 0.003 run scoreboard players get @s mg-1.y
execute store result entity @e[tag=mg-1b,sort=nearest,limit=1] Motion[2] double 0.003 run scoreboard players get @s mg-1.z
execute store result entity @e[tag=mg-1bc,sort=nearest,limit=1] Motion[0] double 0.0025 run scoreboard players get @s mg-1.x
execute store result entity @e[tag=mg-1bc,sort=nearest,limit=1] Motion[1] double 0.0025 run scoreboard players get @s mg-1.y
execute store result entity @e[tag=mg-1bc,sort=nearest,limit=1] Motion[2] double 0.0025 run scoreboard players get @s mg-1.z
execute store result entity @e[tag=mg-1c,sort=nearest,limit=1] Motion[0] double 0.0025 run scoreboard players get @s mg-1.x
execute store result entity @e[tag=mg-1c,sort=nearest,limit=1] Motion[1] double 0.0025 run scoreboard players get @s mg-1.y
execute store result entity @e[tag=mg-1c,sort=nearest,limit=1] Motion[2] double 0.0025 run scoreboard players get @s mg-1.z
execute as @e[tag=mg-1bt] at @s run tp @s ~ -1000 ~
kill @e[tag=mg-1r]