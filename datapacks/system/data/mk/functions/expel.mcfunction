execute unless entity @s[tag=L_chabadu] run tag @a[tag=3xp] remove 4
execute at @s[tag=L_chabadu] unless entity @e[tag=L_chabadu_m4rk,distance=..1] run summon marker ~ ~1 ~ {Tags:[L_chabadu_m4rk,chabadu_m4rk]}
effect give @a[tag=3xp,tag=!3xp0] slowness 4 99 true
execute unless entity @s[tag=L_chabadu] run effect give @a[tag=3xp,tag=!3xp0] blindness 5 99 true
execute unless entity @s[tag=L_chabadu] as @a[tag=3xp,tag=!3xp0] at @s run forceload add -290 -5
execute unless entity @s[tag=L_chabadu] as @a[tag=3xp,tag=!3xp0] at @s run playsound entity.zombie_villager.converted master @s ~ ~ ~ 1 1.4
execute unless entity @s[tag=L_chabadu] as @a[tag=3xp,tag=!3xp0] at @s run fill -290 3 -6 -290 4 -6 bookshelf
execute unless entity @s[tag=L_chabadu] as @a[tag=3xp,tag=!3xp0] at @s run fill -290 3 -8 -290 4 -8 sticky_piston[facing=south]
execute unless entity @s[tag=L_chabadu] as @a[tag=3xp,tag=!3xp0] at @s run setblock -287 4 -8 repeater[delay=4,facing=north]
setblock -289 4 -5 air destroy
execute unless entity @s[tag=L_chabadu] as @a[tag=3xp,tag=!3xp0] at @s run fill -289 3 -7 -289 4 -7 air replace bookshelf
execute unless entity @s[tag=L_chabadu] as @a[tag=3xp,tag=!3xp0] at @s run setblock -291 3 0 air
execute unless entity @s[tag=L_chabadu] as @a[tag=3xp,tag=!3xp0] at @s run forceload remove -290 -5
execute unless entity @s[tag=L_chabadu] run tp @e[tag=L_chabadu,tag=s] ~ -1000 ~
execute unless entity @s[tag=L_chabadu] as @a[tag=3xp,tag=!3xp0] at @s run playsound block.ancient_debris.place master @s ~ ~ ~ 1 2
execute at @s[tag=L_chabadu] run function mk:lobby/shulker
data merge entity @s {Peek:100,AttachFace:1}
execute unless entity @s[tag=L_chabadu] run tag @a[tag=3xp] add 3xp0
execute unless entity @s[tag=L_chabadu] as @a[tag=3xp,tag=3xp0] at @s if score @e[limit=1,tag=L_chabadu] 6 matches 160.. run advancement grant @s only mk:get_expelled
execute unless entity @s[tag=L_chabadu] as @a[tag=3xp,tag=3xp0] at @s if score @e[limit=1,tag=L_chabadu] 6 matches 160.. run advancement grant @s only mk:extra
execute unless entity @s[tag=L_chabadu] as @a[tag=3xp,tag=3xp0] at @s if score @e[limit=1,tag=L_chabadu] 6 matches 160.. run function mk:exit
execute unless entity @s[tag=L_chabadu] run tag @a remove 3xp