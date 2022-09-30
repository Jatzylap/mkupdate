execute in sister_dimension run fill 302 2 -3 298 5 24 coal_block replace white_concrete

#Random
execute in sister_dimension if predicate 50-50 run setblock 301 5 0 white_concrete
execute in sister_dimension if predicate 50-50 run setblock 301 5 8 white_concrete
execute in sister_dimension if predicate 50-50 run setblock 301 5 16 white_concrete
execute in sister_dimension if predicate 50-50 run setblock 301 5 24 white_concrete
#1
execute in sister_dimension if block 301 5 0 white_concrete run summon marker 302 2 -3 {Tags:[mg25,temp,temp1]}
execute in sister_dimension if block 301 5 0 white_concrete run summon marker 298 2 0 {Tags:[mg25,temp,temp1]}
execute in sister_dimension if block 301 5 0 white_concrete run summon marker 302 2 3 {Tags:[mg25,temp,temp1]}
execute in sister_dimension if block 301 5 0 white_concrete as @e[tag=mg25,tag=temp1,sort=random,limit=1] at @s run setblock ~ ~ ~ white_concrete
execute in sister_dimension unless block 301 5 0 white_concrete run summon marker 302 2 -3 {Tags:[mg25,temp,temp1]}
execute in sister_dimension unless block 301 5 0 white_concrete run summon marker 298 2 0 {Tags:[mg25,temp,temp1]}
execute in sister_dimension unless block 301 5 0 white_concrete run summon marker 302 2 3 {Tags:[mg25,temp,temp1]}
execute in sister_dimension unless block 301 5 0 white_concrete as @e[tag=mg25,tag=temp1,sort=random,limit=2] at @s run setblock ~ ~ ~ white_concrete
#2
execute in sister_dimension if block 301 5 8 white_concrete run summon marker 302 2 5 {Tags:[mg25,temp,temp2]}
execute in sister_dimension if block 301 5 8 white_concrete run summon marker 298 2 8 {Tags:[mg25,temp,temp2]}
execute in sister_dimension if block 301 5 8 white_concrete run summon marker 302 2 11 {Tags:[mg25,temp,temp2]}
execute in sister_dimension if block 301 5 8 white_concrete as @e[tag=mg25,tag=temp2,sort=random,limit=1] at @s run setblock ~ ~ ~ white_concrete
execute in sister_dimension unless block 301 5 8 white_concrete run summon marker 302 2 5 {Tags:[mg25,temp,temp2]}
execute in sister_dimension unless block 301 5 8 white_concrete run summon marker 298 2 8 {Tags:[mg25,temp,temp2]}
execute in sister_dimension unless block 301 5 8 white_concrete run summon marker 302 2 11 {Tags:[mg25,temp,temp2]}
execute in sister_dimension unless block 301 5 8 white_concrete as @e[tag=mg25,tag=temp2,sort=random,limit=2] at @s run setblock ~ ~ ~ white_concrete
#3
execute in sister_dimension if block 301 5 16 white_concrete run summon marker 302 2 13 {Tags:[mg25,temp,temp3]}
execute in sister_dimension if block 301 5 16 white_concrete run summon marker 298 2 16 {Tags:[mg25,temp,temp3]}
execute in sister_dimension if block 301 5 16 white_concrete run summon marker 302 2 19 {Tags:[mg25,temp,temp3]}
execute in sister_dimension if block 301 5 16 white_concrete as @e[tag=mg25,tag=temp3,sort=random,limit=1] at @s run setblock ~ ~ ~ white_concrete
execute in sister_dimension unless block 301 5 16 white_concrete run summon marker 302 2 13 {Tags:[mg25,temp,temp3]}
execute in sister_dimension unless block 301 5 16 white_concrete run summon marker 298 2 16 {Tags:[mg25,temp,temp3]}
execute in sister_dimension unless block 301 5 16 white_concrete run summon marker 302 2 19 {Tags:[mg25,temp,temp3]}
execute in sister_dimension unless block 301 5 16 white_concrete as @e[tag=mg25,tag=temp3,sort=random,limit=2] at @s run setblock ~ ~ ~ white_concrete
#4
execute in sister_dimension if block 301 5 24 white_concrete run summon marker 302 2 21 {Tags:[mg25,temp,temp4]}
execute in sister_dimension if block 301 5 24 white_concrete run summon marker 298 2 24 {Tags:[mg25,temp,temp4]}
execute in sister_dimension if block 301 5 24 white_concrete run summon marker 302 2 27 {Tags:[mg25,temp,temp4]}
execute in sister_dimension if block 301 5 24 white_concrete as @e[tag=mg25,tag=temp4,sort=random,limit=1] at @s run setblock ~ ~ ~ white_concrete
execute in sister_dimension unless block 301 5 24 white_concrete run summon marker 302 2 21 {Tags:[mg25,temp,temp4]}
execute in sister_dimension unless block 301 5 24 white_concrete run summon marker 298 2 24 {Tags:[mg25,temp,temp4]}
execute in sister_dimension unless block 301 5 24 white_concrete run summon marker 302 2 27 {Tags:[mg25,temp,temp4]}
execute in sister_dimension unless block 301 5 24 white_concrete as @e[tag=mg25,tag=temp4,sort=random,limit=2] at @s run setblock ~ ~ ~ white_concrete
kill @e[tag=mg25,tag=temp]

execute if entity @e[name="M@K",limit=1,scores={mg25=236..300}] in sister_dimension if block 301 5 0 coal_block if block 301 5 8 coal_block if block 301 5 16 coal_block if block 301 5 24 coal_block run scoreboard players set @p[tag=RGUturn] mg25.1 0
execute if entity @e[name="M@K",limit=1,scores={mg25=236..300}] in sister_dimension if block 301 5 0 white_concrete run scoreboard players add @p[tag=RGUturn] mg25.1 1
execute if entity @e[name="M@K",limit=1,scores={mg25=236..300}] in sister_dimension if block 301 5 8 white_concrete run scoreboard players add @p[tag=RGUturn] mg25.1 1
execute if entity @e[name="M@K",limit=1,scores={mg25=236..300}] in sister_dimension if block 301 5 16 white_concrete run scoreboard players add @p[tag=RGUturn] mg25.1 1
execute if entity @e[name="M@K",limit=1,scores={mg25=236..300}] in sister_dimension if block 301 5 24 white_concrete run scoreboard players add @p[tag=RGUturn] mg25.1 1
execute if entity @e[name="M@K",limit=1,scores={mg25=236..300}] run schedule function c4:mg25/presults 25
execute if entity @e[name="M@K",limit=1,scores={mg25=229..235}] run schedule function c4:mg25/roll 2 append
execute if entity @e[name="M@K",limit=1,scores={mg25=329..335}] run schedule function c4:mg25/roll 2 append