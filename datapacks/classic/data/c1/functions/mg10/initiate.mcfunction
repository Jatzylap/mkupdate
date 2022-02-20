#Debug
kill @e[type=slime,name=mg10]

data merge block -76 8 81 {Text3:'{"text":"@","color":"gold","obfuscated":true,"clickEvent":{"action":"run_command","value":"tag @s add SPmg10"}}'}
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

tag @s add CMplayers
effect clear @a[scores={mg10=1..}]
tellraw @a[scores={mg10=1..}] ["",{"text":"Beginning Game...","color":"light_purple"}]
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
tellraw @a[scores={mg10=1..}] ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n[","color":"yellow","bold":true},{"text":"@","color":"green","obfuscated":true},{"text":"]","color":"yellow","bold":true},{"text":"---","color":"gold"},{"text":"MINIGAME INFO","color":"aqua","bold":true},{"text":"---","color":"gold"},{"text":"[","color":"yellow","bold":true},{"text":"@","color":"green","obfuscated":true},{"text":"]","color":"yellow","bold":true},{"text":"\n\n\u21b1","color":"gold"},{"text":" Step on the floor tile colour corresponding to the colour of the game bar and hotbar item, and stay on the platform!"}]
gamemode adventure @a[scores={mg10=1..},tag=CMplayers]

setblock -307 2 -73 redstone_block