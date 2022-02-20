execute if entity @e[name="M@K"] run gamerule mobGriefing true
execute if entity @e[name="M@K"] run weather thunder
execute if entity @e[name="M@K"] run tag @r[tag=00p] add 02p
execute if entity @e[name="M@K"] run tag @r[tag=00p] add 3p
execute as @r[tag=02p] at @s if entity @e[name="M@K"] run summon shulker ~ ~ ~ {Tags:[p0ly]}
effect clear @e
worldborder warning distance 2000000000
execute if entity @e[name="M@K"] run summon ender_dragon 6 6 6 {DragonPhase:22}
execute if entity @e[name="M@K"] run summon ender_dragon -111 6 -7 {DragonPhase:22}
execute if entity @e[name="M@K"] run summon ender_dragon -273 6 -55 {DragonPhase:22}
execute unless entity @e[type=panda,limit=1,tag=p0ly,tag=0] run kill @e[nbt={Small:1b},tag=n]
execute as @e[name="M@K"] at @s run kill @s
scoreboard players add @e[type=panda,tag=p0ly,limit=1,sort=random] 6 1
scoreboard players reset @e[type=panda,tag=p0ly,limit=1,sort=random,scores={6=80..}] 6
execute as @e[type=panda,tag=p0ly,limit=1,sort=random] at @s run particle dust 3 0 2 100 ^ ^ ^-1 1 0 1 0 10 force
execute as @e[type=panda,tag=p0ly,limit=1,sort=random,scores={6=5}] at @s run summon tnt ~ ~ ~ {Fuse:0s}
execute as @e[type=panda,tag=p0ly,limit=1,sort=random,scores={6=10}] at @s run summon tnt ~ ~ ~ {Fuse:0s}
execute as @e[type=panda,tag=p0ly,limit=1,sort=random,scores={6=15}] at @s run summon tnt ~ ~ ~ {Fuse:0s}
execute as @e[type=panda,tag=p0ly,limit=1,sort=random,scores={6=20}] at @s run summon tnt ~ ~ ~ {Fuse:0s}
execute as @e[type=panda,tag=p0ly,limit=1,sort=random,scores={6=25}] at @s run summon tnt ~ ~ ~ {Fuse:0s}
execute as @e[type=panda,tag=p0ly,limit=1,sort=random,scores={6=30}] at @s run summon tnt ~ ~ ~ {Fuse:0s}
execute as @e[type=panda,tag=p0ly,limit=1,sort=random,scores={6=35}] at @s run summon tnt ~ ~ ~ {Fuse:0s}
execute as @e[type=panda,tag=p0ly,limit=1,sort=random,scores={6=40}] at @s run summon tnt ~ ~ ~ {Fuse:0s}
execute as @e[type=panda,tag=p0ly,limit=1,sort=random,scores={6=45}] at @s run summon tnt ~ ~ ~ {Fuse:0s}
execute as @e[type=panda,tag=p0ly,limit=1,sort=random,scores={6=50}] at @s run summon tnt ~ ~ ~ {Fuse:0s}
execute as @e[type=panda,tag=p0ly,limit=1,sort=random,scores={6=55}] at @s run summon tnt ~ ~ ~ {Fuse:0s}
execute as @e[type=panda,tag=p0ly,limit=1,sort=random,scores={6=60}] at @s run summon tnt ~ ~ ~ {Fuse:0s}
execute as @e[type=panda,tag=p0ly,limit=1,sort=random,scores={6=65}] at @s run summon tnt ~ ~ ~ {Fuse:0s}
execute as @e[type=panda,tag=p0ly,limit=1,sort=random,scores={6=75}] at @s run summon tnt ~ ~ ~ {Fuse:0s}
execute as @e[type=panda,tag=p0ly,limit=1,sort=random,scores={6=75}] at @s run summon tnt ~ ~ ~ {Fuse:0s}
execute as @e[type=panda,tag=p0ly,limit=1,sort=random,scores={6=80..}] at @s run kill @s
execute as @e[type=panda,tag=p0ly,limit=1,sort=random] at @s run data merge entity @s {Invulnerable:0b,AbsorptionAmount:120.0f}
execute as @e[type=panda,tag=p0ly,sort=random,limit=1] at @s run tp @s ^ ^ ^0.7 facing entity @r
execute as @e[type=panda,tag=p0ly,sort=random,limit=1] at @s run title @a[distance=..25] actionbar ["",{"text":"HOWW DARE THOOUUU!! ","bold":true}]
execute as @e[type=panda,tag=p0ly,sort=random,limit=1] at @s unless entity @a[distance=..4] run tp @s ^ ^0.05 ^0.5 facing entity @e[sort=random,type=!tnt,limit=1]
execute as @e[type=panda,tag=p0ly,sort=random,limit=1] at @s if entity @a[distance=..15] run tp @s @r