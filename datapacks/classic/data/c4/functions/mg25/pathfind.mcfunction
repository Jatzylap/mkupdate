#EXECUTED BY THE CHOSEN PAWN
#1st Move
execute at @s[tag=mg25_wp1] if entity @p[tag=RGUturn,scores={mg25.1=1..}] if block ~2 ~ ~ stone store success score @s mg25 run tp @s ~ ~18 ~-7
execute at @s[scores={mg25=1}] run scoreboard players remove @p[tag=RGUturn,scores={mg25.1=1..}] mg25.1 1
scoreboard players reset @s mg25
execute at @s[tag=mg25_wp2] if entity @p[tag=RGUturn,scores={mg25.1=1..}] if block ~2 ~ ~ stone store success score @s mg25 run tp @s ~ ~15 ~-7
execute at @s[scores={mg25=1}] run scoreboard players remove @p[tag=RGUturn,scores={mg25.1=1..}] mg25.1 1
scoreboard players reset @s mg25
execute at @s[tag=mg25_wp3] if entity @p[tag=RGUturn,scores={mg25.1=1..}] if block ~2 ~ ~ stone store success score @s mg25 run tp @s ~ ~12 ~-7
execute at @s[scores={mg25=1}] run scoreboard players remove @p[tag=RGUturn,scores={mg25.1=1..}] mg25.1 1
scoreboard players reset @s mg25
execute at @s[tag=mg25_wp4] if entity @p[tag=RGUturn,scores={mg25.1=1..}] if block ~2 ~ ~ stone store success score @s mg25 run tp @s ~ ~9 ~-7
execute at @s[scores={mg25=1}] run scoreboard players remove @p[tag=RGUturn,scores={mg25.1=1..}] mg25.1 1
scoreboard players reset @s mg25
execute at @s[tag=mg25_wp5] if entity @p[tag=RGUturn,scores={mg25.1=1..}] if block ~2 ~ ~ stone store success score @s mg25 run tp @s ~ ~6 ~-7
execute at @s[scores={mg25=1}] run scoreboard players remove @p[tag=RGUturn,scores={mg25.1=1..}] mg25.1 1
scoreboard players reset @s mg25
execute at @s[tag=mg25_wp6] if entity @p[tag=RGUturn,scores={mg25.1=1..}] if block ~2 ~ ~ stone store success score @s mg25 run tp @s ~ ~3 ~-7
execute at @s[scores={mg25=1}] run scoreboard players remove @p[tag=RGUturn,scores={mg25.1=1..}] mg25.1 1
scoreboard players reset @s mg25
execute at @s[tag=mg25_wp7] if entity @p[tag=RGUturn,scores={mg25.1=1..}] if block ~2 ~ ~ stone store success score @s mg25 run tp @s ~ ~ ~-7
execute at @s[scores={mg25=1}] run scoreboard players remove @p[tag=RGUturn,scores={mg25.1=1..}] mg25.1 1
scoreboard players reset @s mg25
execute at @s[tag=mg25_bp1] if entity @p[tag=RGUturn,scores={mg25.1=1..}] if block ~2 ~ ~ stone store success score @s mg25 run tp @s ~ ~18 ~7
execute at @s[scores={mg25=1}] run scoreboard players remove @p[tag=RGUturn,scores={mg25.1=1..}] mg25.1 1
scoreboard players reset @s mg25
execute at @s[tag=mg25_bp2] if entity @p[tag=RGUturn,scores={mg25.1=1..}] if block ~2 ~ ~ stone store success score @s mg25 run tp @s ~ ~15 ~7
execute at @s[scores={mg25=1}] run scoreboard players remove @p[tag=RGUturn,scores={mg25.1=1..}] mg25.1 1
scoreboard players reset @s mg25
execute at @s[tag=mg25_bp3] if entity @p[tag=RGUturn,scores={mg25.1=1..}] if block ~2 ~ ~ stone store success score @s mg25 run tp @s ~ ~12 ~7
execute at @s[scores={mg25=1}] run scoreboard players remove @p[tag=RGUturn,scores={mg25.1=1..}] mg25.1 1
scoreboard players reset @s mg25
execute at @s[tag=mg25_bp4] if entity @p[tag=RGUturn,scores={mg25.1=1..}] if block ~2 ~ ~ stone store success score @s mg25 run tp @s ~ ~9 ~7
execute at @s[scores={mg25=1}] run scoreboard players remove @p[tag=RGUturn,scores={mg25.1=1..}] mg25.1 1
scoreboard players reset @s mg25
execute at @s[tag=mg25_bp5] if entity @p[tag=RGUturn,scores={mg25.1=1..}] if block ~2 ~ ~ stone store success score @s mg25 run tp @s ~ ~6 ~7
execute at @s[scores={mg25=1}] run scoreboard players remove @p[tag=RGUturn,scores={mg25.1=1..}] mg25.1 1
scoreboard players reset @s mg25
execute at @s[tag=mg25_bp6] if entity @p[tag=RGUturn,scores={mg25.1=1..}] if block ~2 ~ ~ stone store success score @s mg25 run tp @s ~ ~3 ~7
execute at @s[scores={mg25=1}] run scoreboard players remove @p[tag=RGUturn,scores={mg25.1=1..}] mg25.1 1
scoreboard players reset @s mg25
execute at @s[tag=mg25_bp7] if entity @p[tag=RGUturn,scores={mg25.1=1..}] if block ~2 ~ ~ stone store success score @s mg25 run tp @s ~ ~ ~7
execute at @s[scores={mg25=1}] run scoreboard players remove @p[tag=RGUturn,scores={mg25.1=1..}] mg25.1 1
scoreboard players reset @s mg25

#2nd Move
execute if entity @p[tag=RGUturn,scores={mg25.1=1..}] if block ~2 ~ ~ glass store success score @s mg25 run tp @s ~ ~-6 ~
execute at @s[scores={mg25=1}] run scoreboard players remove @p[tag=RGUturn,scores={mg25.1=1..}] mg25.1 1
scoreboard players reset @s mg25
execute if entity @p[tag=RGUturn,scores={mg25.1=1..}] if block ~2 ~ ~ piston[facing=down] store success score @s mg25 run tp @s ~ ~-6 ~
execute at @s[scores={mg25=1}] run scoreboard players remove @p[tag=RGUturn,scores={mg25.1=1..}] mg25.1 1
scoreboard players reset @s mg25
execute if entity @p[tag=RGUturn,scores={mg25.1=1..}] if block ~2 ~ ~ piston[facing=up] store success score @s mg25 run tp @s ~ ~6 ~
execute at @s[scores={mg25=1}] run scoreboard players remove @p[tag=RGUturn,scores={mg25.1=1..}] mg25.1 1
scoreboard players reset @s mg25
execute if entity @p[tag=RGUturn,scores={mg25.1=1..}] if block ~2 ~ ~ piston[facing=north] store success score @s mg25 run tp @s ~ ~ ~-6
execute at @s[scores={mg25=1}] run scoreboard players remove @p[tag=RGUturn,scores={mg25.1=1..}] mg25.1 1
scoreboard players reset @s mg25
execute if entity @p[tag=RGUturn,scores={mg25.1=1..}] if block ~2 ~ ~ piston[facing=south] store success score @s mg25 run tp @s ~ ~ ~6
execute at @s[scores={mg25=1}] run scoreboard players remove @p[tag=RGUturn,scores={mg25.1=1..}] mg25.1 1
scoreboard players reset @s mg25
execute if entity @p[tag=RGUturn,scores={mg25.1=1..}] if block ~2 ~ ~ sand store success score @s mg25 run tp @s[team=mg25-white] ~ ~ ~6
execute at @s[scores={mg25=1}] run scoreboard players remove @p[tag=RGUturn,scores={mg25.1=1..}] mg25.1 1
scoreboard players reset @s mg25
execute if entity @p[tag=RGUturn,scores={mg25.1=1..}] if block ~2 ~ ~ sand store success score @s mg25 run tp @s[team=mg25-black] ~ ~ ~-6
execute at @s[scores={mg25=1}] run scoreboard players remove @p[tag=RGUturn,scores={mg25.1=1..}] mg25.1 1
scoreboard players reset @s mg25

#Check
execute if entity @p[tag=RGUturn,scores={mg25.1=0}] unless score @s[tag=pass,tag=!static] mg25 matches 1 unless block ~2 ~ ~ glass run schedule function c4:mg25/check 9 replace
execute if entity @p[tag=RGUturn,scores={mg25.1=0}] unless score @s[tag=pass,tag=!static] mg25 matches 1 unless block ~2 ~ ~ glass store success score @s mg25 run title @p[tag=RGUturn] actionbar ["",{"text":"<","color":"gray"},{"text":"You need an exact number of spaces to come off!","color":"red"},{"text":">","color":"gray"}]
execute if entity @p[tag=RGUturn,scores={mg25.1=0}] unless score @s[tag=!static] mg25 matches 1 at @s[team=mg25-white] if entity @e[tag=mg25,team=mg25-white,distance=...1,tag=!moved] store success score @s mg25 run title @p[tag=RGUturn] actionbar ["",{"text":"<","color":"gray"},{"text":"You have already taken this square!","color":"red"},{"text":">","color":"gray"}]
execute if entity @p[tag=RGUturn,scores={mg25.1=0}] unless score @s[tag=!static] mg25 matches 1 at @s[team=mg25-white] if block ~1 ~ ~ red_concrete if entity @e[tag=mg25,team=mg25-black,distance=...1,tag=!moved] store success score @s mg25 run title @p[tag=RGUturn] actionbar ["",{"text":"<","color":"gray"},{"text":"This square has been taken!","color":"red"},{"text":">","color":"gray"}]
execute if entity @p[tag=RGUturn,scores={mg25.1=0}] at @s[team=mg25-white,tag=!static,tag=!mg25_c] unless block ~1 ~ ~ red_concrete as @e[team=mg25-black,distance=...1,tag=!moved] run function c4:mg25/kill
execute if entity @p[tag=RGUturn,scores={mg25.1=0}] unless score @s[tag=!static] mg25 matches 1 at @s[team=mg25-black] if entity @e[tag=mg25,team=mg25-black,distance=...1,tag=!moved] store success score @s mg25 run title @p[tag=RGUturn] actionbar ["",{"text":"<","color":"gray"},{"text":"You have already taken this square!","color":"red"},{"text":">","color":"gray"}]
execute if entity @p[tag=RGUturn,scores={mg25.1=0}] unless score @s[tag=!static] mg25 matches 1 at @s[team=mg25-black] if block ~1 ~ ~ red_concrete if entity @e[tag=mg25,team=mg25-white,distance=...1,tag=!moved] store success score @s mg25 run title @p[tag=RGUturn] actionbar ["",{"text":"<","color":"gray"},{"text":"This square has been taken!","color":"red"},{"text":">","color":"gray"}]
execute if entity @p[tag=RGUturn,scores={mg25.1=0}] at @s[team=mg25-black,tag=!static,tag=!mg25_c] unless block ~1 ~ ~ red_concrete as @e[team=mg25-white,distance=...1,tag=!moved] run function c4:mg25/kill

#Errors
execute at @s[tag=!static,tag=!mg25_c] unless score @s mg25 matches 1 if entity @p[tag=RGUturn,scores={mg25.1=0}] run tag @e[tag=mg25_c,limit=1] remove mg25_c
execute at @s[tag=!static,scores={mg25=1}] if entity @p[tag=RGUturn,scores={mg25.1=0}] run tag @s add mg25_c
execute at @s[tag=!static,tag=!pass,tag=!mg25_c] unless score @s mg25 matches 1 if entity @p[tag=RGUturn,scores={mg25.1=0}] run title @a[scores={mg25=1..}] title [""]
execute at @s[tag=!static,tag=!pass,tag=!mg25_c] unless score @s mg25 matches 1 if entity @p[tag=RGUturn,scores={mg25.1=0}] unless entity @e[name="M@K",limit=1,scores={mg25.1=1}] run title @a[scores={mg25=1..}] subtitle ["",{"selector":"@p[tag=RGUturn]"},{"text":" moved "},{"score":{"name":"@e[name=\"M@K\",limit=1]","objective":"mg25.1"},"color":"gold"},{"text":" spaces","color":"gray"}]
execute at @s[tag=!static,tag=!pass,tag=!mg25_c] unless score @s mg25 matches 1 if entity @p[tag=RGUturn,scores={mg25.1=0}] if entity @e[name="M@K",limit=1,scores={mg25.1=1}] run title @a[scores={mg25=1..}] subtitle ["",{"selector":"@p[tag=RGUturn]"},{"text":" moved "},{"score":{"name":"@e[name=\"M@K\",limit=1]","objective":"mg25.1"},"color":"gold"},{"text":" space","color":"gray"}]
execute at @s[tag=!mg25_c,scores={mg25=1}] if entity @p[tag=RGUturn,scores={mg25.1=0}] run title @a[scores={mg25=1..}] title [""]
execute at @s[tag=!static,tag=!mg25_c,scores={mg25=1}] if entity @p[tag=RGUturn,scores={mg25.1=0}] run title @a[scores={mg25=1..}] subtitle ["",{"selector":"@p[tag=RGUturn]"},{"text":" did not move..."}]
execute at @s[tag=!pass,tag=!static,scores={mg25=1}] if entity @p[tag=RGUturn,scores={mg25.1=0},team=mg25-white] if entity @e[team=mg25-white,tag=mg25,tag=mg25_c] unless entity @e[team=mg25-white,tag=mg25,tag=!mg25_c] as @p[tag=RGUplayers,tag=!RGUturn] at @s run function c4:mg25/turn
execute at @s[tag=!pass,tag=!static,scores={mg25=1}] if entity @p[tag=RGUturn,scores={mg25.1=0},team=mg25-black] if entity @e[team=mg25-black,tag=mg25,tag=mg25_c] unless entity @e[team=mg25-black,tag=mg25,tag=!mg25_c] as @p[tag=RGUplayers,tag=!RGUturn] at @s run function c4:mg25/turn

#Retreat
execute at @s[tag=!pass,tag=mg25_wp1,scores={mg25=1}] run tp @s @e[limit=1,tag=old_wp1,tag=mg25]
execute at @s[tag=!pass,tag=mg25_wp2,scores={mg25=1}] run tp @s @e[limit=1,tag=old_wp2,tag=mg25]
execute at @s[tag=!pass,tag=mg25_wp3,scores={mg25=1}] run tp @s @e[limit=1,tag=old_wp3,tag=mg25]
execute at @s[tag=!pass,tag=mg25_wp4,scores={mg25=1}] run tp @s @e[limit=1,tag=old_wp4,tag=mg25]
execute at @s[tag=!pass,tag=mg25_wp5,scores={mg25=1}] run tp @s @e[limit=1,tag=old_wp5,tag=mg25]
execute at @s[tag=!pass,tag=mg25_wp6,scores={mg25=1}] run tp @s @e[limit=1,tag=old_wp6,tag=mg25]
execute at @s[tag=!pass,tag=mg25_wp7,scores={mg25=1}] run tp @s @e[limit=1,tag=old_wp7,tag=mg25]
execute at @s[tag=!pass,tag=mg25_bp1,scores={mg25=1}] run tp @s @e[limit=1,tag=old_bp1,tag=mg25]
execute at @s[tag=!pass,tag=mg25_bp2,scores={mg25=1}] run tp @s @e[limit=1,tag=old_bp2,tag=mg25]
execute at @s[tag=!pass,tag=mg25_bp3,scores={mg25=1}] run tp @s @e[limit=1,tag=old_bp3,tag=mg25]
execute at @s[tag=!pass,tag=mg25_bp4,scores={mg25=1}] run tp @s @e[limit=1,tag=old_bp4,tag=mg25]
execute at @s[tag=!pass,tag=mg25_bp5,scores={mg25=1}] run tp @s @e[limit=1,tag=old_bp5,tag=mg25]
execute at @s[tag=!pass,tag=mg25_bp6,scores={mg25=1}] run tp @s @e[limit=1,tag=old_bp6,tag=mg25]
execute at @s[tag=!pass,tag=mg25_bp7,scores={mg25=1}] run tp @s @e[limit=1,tag=old_bp7,tag=mg25]
execute at @s[tag=!pass,team=mg25-white] if entity @p[tag=RGUturn,scores={mg25.1=0}] run fill ~ ~-1 ~-1 ~ ~1 ~1 white_shulker_box[facing=west] keep
execute at @s[tag=!pass,team=mg25-black] if entity @p[tag=RGUturn,scores={mg25.1=0}] run fill ~ ~-1 ~-1 ~ ~1 ~1 black_shulker_box[facing=west] keep
scoreboard players reset @s mg25

#Stop
execute if entity @p[tag=RGUturn,scores={mg25.1=0}] run setblock ~ ~ ~ air
execute if entity @p[tag=RGUturn,scores={mg25.1=0}] run tag @s add new
execute at @s[tag=mg25_c] if entity @p[tag=RGUturn,scores={mg25.1=0}] run tag @s remove moved
execute at @s[tag=mg25_c,tag=!static] if entity @p[tag=RGUturn,scores={mg25.1=0}] at @s run scoreboard players operation @p[tag=RGUturn,scores={mg25.1=0}] mg25.1 = @e[name="M@K",limit=1] mg25.1
execute if entity @p[tag=RGUturn,scores={mg25.1=0}] at @s[tag=!pass] run kill @e[tag=old,tag=mg25]
execute if entity @p[tag=RGUturn,scores={mg25.1=0}] unless entity @e[tag=pass,tag=mg25] run schedule function c4:mg25/check 9 replace
execute if entity @p[tag=RGUturn,scores={mg25.1=0}] unless entity @e[tag=mg25_c] run scoreboard players reset @p[tag=RGUturn,scores={mg25.1=0}] mg25.1