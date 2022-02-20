particle soul_fire_flame ~ ~2 ~ 0.3 0.05 0.3 0.01 1000
setblock ~ ~2 ~ air
playsound ambient.soul_sand_valley.mood master @s ~ ~ ~ 1 2
summon lightning_bolt 148 80 -104
summon spider ~ ~25 ~ {Tags:[mg20],DeathLootTable:"",Passengers:[{id:cave_spider,Health:1,Count:1,DeathLootTable:"",ActiveEffects:[{Id:14b,Duration:1000000,Amplifier:1,ShowParticles:0b}],Attributes:[{Base:0.6d,Name:generic.movement_speed}],Tags:[mg20]}],AbsorptionAmount:20f,ActiveEffects:[{Id:28b,Duration:1000000,Amplifier:1,ShowParticles:0b}],Attributes:[{Base:0.6d,Name:generic.movement_speed}]}