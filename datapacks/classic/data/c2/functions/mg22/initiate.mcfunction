#Shop
fill 210 2 -167 210 5 -169 spruce_fence keep
setblock 196 3 -168 air destroy
scoreboard players reset @e[limit=1,name="M@K"] mg22.3
tag @e[name="M@K",limit=1] add mg22_start
execute as @a[scores={mg22=1..},x=196,y=1,z=-174,dx=14,dy=5,dz=14,tag=!TDviewers] at @s run function c2:mg22/view

#Machines
execute as @e[type=marker,tag=mg22] at @s run fill ~-1 ~1 ~-1 ~1 ~3 ~1 air replace barrier

#Sounds
playsound block.note_block.hat master @a[scores={mg22=1..}] ~ ~ ~ 1000
playsound block.note_block.chime master @a[scores={mg22=1..}] ~ ~ ~ 1000 2
playsound entity.experience_orb.pickup master @a[scores={mg22=1..}] ~ ~ ~ 1000
playsound event.raid.horn master @a[scores={mg22=1..}] 216 0 -145 190 1.1
playsound event.raid.horn master @a[scores={mg22=1..}] 216 0 -203 215 1.1
playsound event.raid.horn master @a[scores={mg22=1..}] 238 33 -171 100 1.1

#Wave
scoreboard players reset @a[scores={mg22=1..}] mk
scoreboard players set @e[tag=mg22_start] mg22.7 40
scoreboard players set @e[type=marker,tag=mg22] mg22.3 0
scoreboard players set @e[tag=mg22_start] mg22.4 1
execute as @e[tag=mg22_start] if score @s mg22.2 matches 1..9 run scoreboard players set @s mg22.4 4
execute as @e[tag=mg22_start] if score @s mg22.2 matches 10..19 run scoreboard players set @s mg22.4 7
execute as @e[tag=mg22_start] if score @s mg22.2 matches 20.. run scoreboard players set @s mg22.4 11
execute unless score @e[tag=mg22_start,limit=1] mg22.5 matches ..20 run scoreboard players set @e[tag=mg22_start] mg22.5 20
scoreboard players add @e[tag=mg22_start,scores={mg22.2=0..}] mg22.2 1
execute as @e[tag=mg22_start] unless score @s mg22.2 matches 0.. run scoreboard players set @s mg22.2 0
data merge block -47 5 47 {Text3:'{"text":"@","color":"gold","obfuscated":true,"clickEvent":{"action":"run_command","value":"tag @s[tag=!T0] add SPmg22"}}'}

#Levels
execute unless entity @e[tag=mg22_lvl] run summon marker 122 -7 -192 {Tags:[mg22_lvl]}
execute unless entity @e[tag=mg22_m,tag=lvl1] run summon marker 122 -7 -192 {Tags:[mg22_m,lvl1]}
execute unless entity @e[tag=mg22_m,tag=lvl2] run summon marker 122 -7 -192 {Tags:[mg22_m,lvl2]}
execute unless entity @e[tag=mg22_m,tag=lvl3] run summon marker 122 -7 -192 {Tags:[mg22_m,lvl3]}
execute unless entity @e[tag=mg22_m,tag=lvl4] run summon marker 122 -7 -192 {Tags:[mg22_m,lvl4]}
execute unless entity @e[tag=mg22_m,tag=lvl5] run summon marker 122 -7 -192 {Tags:[mg22_m,lvl5]}
execute unless entity @e[tag=mg22_m,tag=gs] run summon marker 122 -7 -192 {Tags:[mg22_m,gs]}
execute if score @e[tag=mg22_start,limit=1] mg22.2 matches 3.. as @e[tag=mg22_m,tag=lvl2] at @s run function c2:mg22/reload/lvl2
execute if score @e[tag=mg22_start,limit=1] mg22.2 matches 4.. as @e[tag=mg22_m,tag=lvl3] at @s run function c2:mg22/reload/lvl3
execute if score @e[tag=mg22_start,limit=1] mg22.2 matches 5.. as @e[tag=mg22_m,tag=lvl4] at @s run function c2:mg22/reload/lvl4
execute if score @e[tag=mg22_start,limit=1] mg22.2 matches 9.. as @e[tag=mg22_m,tag=lvl5] at @s run function c2:mg22/reload/lvl5
execute if score @e[tag=mg22_start,limit=1] mg22.2 matches 2.. as @e[tag=mg22_m,tag=gs] at @s run function c2:mg22/pools/goat
execute as @e[tag=mg22_lvl,limit=1] at @s run function c2:mg22/pool