execute if entity @s[type=shulker] run summon armor_stand ~ 0 ~ {Tags:[summ0n],Invisible:1,NoGravity:1,Small:1}
execute if entity @s[type=shulker] run spreadplayers -113 -8 5 25 under 12 false @e[tag=summ0n]
execute if entity @s[type=player] as @e[tag=p0ly,type=panda,tag=!6,tag=!b0ss,tag=!0] at @s run tp ~ -10000 ~
execute if entity @s[type=shulker] unless entity @e[type=panda,tag=p0ly] run execute as @e[tag=summ0n] at @s run summon panda ~ ~-0.4 ~ {Passengers:[{id:armor_stand,Count:1,Invisible:1,Small:1,Tags:[n]}],Tags:[p0ly],Invulnerable:1b,Motion:[0d,0.8d,0d],HandItems:[{id:bamboo,Count:1,tag:{0:1}}],Attributes:[{Base:0.1d,Name:generic.movementSpeed}],DeathLootTable:""}
execute if entity @s[type=player] run summon panda ~ ~-0.4 ~ {Passengers:[{id:armor_stand,Count:1,Invisible:1,Small:1,Tags:[n]}],Tags:[p0ly],Invulnerable:1b,Motion:[0d,0.8d,0d],HandItems:[{id:bamboo,Count:1,tag:{0:1}}],Attributes:[{Base:0.1d,Name:generic.movementSpeed}],DeathLootTable:""}
kill @e[tag=summ0n]