particle soul_fire_flame ~ ~2 ~ 0.3 0.05 0.3 0.01 1000
setblock ~ ~2 ~ air
playsound ambient.soul_sand_valley.mood master @s ~ ~ ~ 1 2
summon lightning_bolt 148 80 -104
particle dust 0 0 0 6 ~ ~19 ~ 1 1 1 0 200 force @a[scores={mg20=1..}]
summon spider ~ ~19 ~ {Tags:[mg20],Invulnerable:1,DeathLootTable:"",Passengers:[{id:cave_spider,Invulnerable:1,Health:1,Count:1,DeathLootTable:"",ActiveEffects:[{Id:14b,Duration:1000000,Amplifier:1,ShowParticles:0b}],Attributes:[{Base:0.6d,Name:generic.movement_speed}],Tags:[mg20]}],AbsorptionAmount:20f,ActiveEffects:[{Id:28b,Duration:1000000,Amplifier:1,ShowParticles:0b}],Attributes:[{Base:0.6d,Name:generic.movement_speed}]}