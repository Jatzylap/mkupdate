#Debug
kill @e[type=slime,name=mg10]

data merge block -76 8 81 {Text3:'{"text":"@","color":"gold","obfuscated":true,"clickEvent":{"action":"run_command","value":"tag @s[tag=!T0] add SPmg10"}}'}
scoreboard players enable @a[scores={mg10=1..}] lobby

#Set
summon slime -2 3 133 {Silent:1,ActiveEffects:[{Id:14,Duration:1000000,ShowParticles:0b}],Invulnerable:1b,CustomName:"{\"text\":\"mg10\"}",Tags:["red"],PersistenceRequired:1b}
summon slime -2 3 133 {Silent:1,ActiveEffects:[{Id:14,Duration:1000000,ShowParticles:0b}],Invulnerable:1b,CustomName:"{\"text\":\"mg10\"}",Tags:["yellow"],PersistenceRequired:1b}
summon slime -2 3 133 {Silent:1,ActiveEffects:[{Id:14,Duration:1000000,ShowParticles:0b}],Invulnerable:1b,CustomName:"{\"text\":\"mg10\"}",Tags:["orange"],PersistenceRequired:1b}
summon slime -2 3 133 {Silent:1,ActiveEffects:[{Id:14,Duration:1000000,ShowParticles:0b}],Invulnerable:1b,CustomName:"{\"text\":\"mg10\"}",Tags:["pink"],PersistenceRequired:1b}
summon slime -2 3 133 {Silent:1,ActiveEffects:[{Id:14,Duration:1000000,ShowParticles:0b}],Invulnerable:1b,CustomName:"{\"text\":\"mg10\"}",Tags:["lime"],PersistenceRequired:1b}
summon slime -2 3 133 {Silent:1,ActiveEffects:[{Id:14,Duration:1000000,ShowParticles:0b}],Invulnerable:1b,CustomName:"{\"text\":\"mg10\"}",Tags:["green"],PersistenceRequired:1b}
summon slime -2 3 133 {Silent:1,ActiveEffects:[{Id:14,Duration:1000000,ShowParticles:0b}],Invulnerable:1b,CustomName:"{\"text\":\"mg10\"}",Tags:["light_blue"],PersistenceRequired:1b}
summon slime -2 3 133 {Silent:1,ActiveEffects:[{Id:14,Duration:1000000,ShowParticles:0b}],Invulnerable:1b,CustomName:"{\"text\":\"mg10\"}",Tags:["cyan"],PersistenceRequired:1b}
summon slime -2 3 133 {Silent:1,ActiveEffects:[{Id:14,Duration:1000000,ShowParticles:0b}],Invulnerable:1b,CustomName:"{\"text\":\"mg10\"}",Tags:["blue"],PersistenceRequired:1b}
summon slime -2 3 133 {Silent:1,ActiveEffects:[{Id:14,Duration:1000000,ShowParticles:0b}],Invulnerable:1b,CustomName:"{\"text\":\"mg10\"}",Tags:["blue"],PersistenceRequired:1b}
summon slime -2 3 133 {Silent:1,ActiveEffects:[{Id:14,Duration:1000000,ShowParticles:0b}],Invulnerable:1b,CustomName:"{\"text\":\"mg10\"}",Tags:["magenta"],PersistenceRequired:1b}
summon slime -2 3 133 {Silent:1,ActiveEffects:[{Id:14,Duration:1000000,ShowParticles:0b}],Invulnerable:1b,CustomName:"{\"text\":\"mg10\"}",Tags:["purple"],PersistenceRequired:1b}
summon slime -2 3 133 {Silent:1,ActiveEffects:[{Id:14,Duration:1000000,ShowParticles:0b}],Invulnerable:1b,CustomName:"{\"text\":\"mg10\"}",Tags:["light_grey"],PersistenceRequired:1b}
summon slime -2 3 133 {Silent:1,ActiveEffects:[{Id:14,Duration:1000000,ShowParticles:0b}],Invulnerable:1b,CustomName:"{\"text\":\"mg10\"}",Tags:["grey"],PersistenceRequired:1b}
summon slime -2 3 133 {Silent:1,ActiveEffects:[{Id:14,Duration:1000000,ShowParticles:0b}],Invulnerable:1b,CustomName:"{\"text\":\"mg10\"}",Tags:["white"],PersistenceRequired:1b}
summon slime -2 3 133 {Silent:1,ActiveEffects:[{Id:14,Duration:1000000,ShowParticles:0b}],Invulnerable:1b,CustomName:"{\"text\":\"mg10\"}",Tags:["brown"],PersistenceRequired:1b}
summon slime -2 3 133 {Silent:1,ActiveEffects:[{Id:14,Duration:1000000,ShowParticles:0b}],Invulnerable:1b,CustomName:"{\"text\":\"mg10\"}",Tags:["black"],PersistenceRequired:1b}

tag @a[scores={mg10=1..},x=-73,y=2,z=69,dx=13,dy=3,dz=13,tag=!CMplayers] add CMplayers
effect clear @a[scores={mg10=1..}]
tp @a[scores={mg10=1..}] -2.0 6 133.0
tag @a[x=-73,y=2,z=69,dx=13,dy=3,dz=13] remove CMplayers
fill 6 5 124 -11 5 141 white_terracotta
bossbar add cm_countdown "..."
bossbar set cm_countdown color yellow
bossbar set cm_countdown max 100
team modify mg10 friendlyFire false
team modify mg10 collisionRule never
scoreboard players reset @a mg10.1
scoreboard players set @a[scores={mg10=1..},tag=CMplayers] mg10.3 300
effect give @a[scores={mg10=1..}] resistance 100000 100 true
spreadplayers -2 133 3 6 false @a[scores={mg10=1..}]
gamemode adventure @a[scores={mg10=1..},tag=CMplayers]

setblock -307 2 -73 redstone_block