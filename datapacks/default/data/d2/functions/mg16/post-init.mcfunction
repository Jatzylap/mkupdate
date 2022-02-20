playsound entity.wither.spawn master @a[scores={mg16=1..}] ~ ~ ~ 1000 2
setblock 142 23 -426 air
setblock 142 23 -286 air
summon wither 142 20 -311 {Invulnerable:1,PersistenceRequired:1b,CustomName:'{"text":"???","bold":true}'}
summon wither 142 20 -401 {Invulnerable:1,PersistenceRequired:1b,CustomName:'{"text":"???","bold":true}'}
summon wither 165 16 -357 {Invulnerable:1,PersistenceRequired:1b,CustomName:'{"text":"???","bold":true}'}
summon wither 117 15 -357 {Invulnerable:1,PersistenceRequired:1b,CustomName:'{"text":"???","bold":true}'}
execute as @e[type=end_crystal,tag=mg16] at @s run tag @s add exp
