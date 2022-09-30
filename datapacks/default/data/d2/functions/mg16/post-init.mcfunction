playsound entity.wither.spawn master @a[scores={mg16=1..}] ~ ~ ~ 1000 2
setblock 142 23 -426 air
setblock 142 23 -286 air
summon wither 142 20 -311 {Invulnerable:1,PersistenceRequired:1,CustomName:'{"extra":[{"text":" has arrived","color":"yellow","bold":true}],"text":"TeamSpectator","color":"dark_purple","bold":true}'}
execute as @e[type=end_crystal,tag=mg16] at @s run tag @s add exp