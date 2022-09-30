execute as @e[limit=1,name="M@K"] at @s store result score @s mgc-1.4 run scoreboard players get @e[tag=3vent,tag=start,limit=1] mgc-1.6
execute as @e[tag=3vent,tag=start,scores={mgc-1.6=0..}] at @s run scoreboard players set @e[limit=1,name="M@K"] mgc-1.7 60
execute if entity @e[tag=3vent,tag=mgc_p] run scoreboard players set @a[scores={mgc=-1..}] mgc-1.3 0
execute if entity @e[tag=3vent,tag=start,tag=count] run tellraw @a[tag=ed1t] ["",{"text":"Starting Countdown...","color":"green"}]
execute if entity @e[tag=3vent,tag=start,tag=count] run playsound block.note_block.pling master @a[tag=ed1t] ~ ~ ~ 10000 1