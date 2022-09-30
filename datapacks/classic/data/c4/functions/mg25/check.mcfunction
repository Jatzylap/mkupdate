#Fail
execute as @e[tag=pass,tag=mg25] at @s unless block ~2 ~ ~ glass run title @p[tag=RGUturn] actionbar ["",{"text":"<","color":"gray"},{"text":"You need an exact number of spaces to come off!","color":"red"},{"text":">","color":"gray"}]
execute as @e[tag=pass,tag=mg25_wp1] at @s unless block ~2 ~ ~ glass run tp @s @e[limit=1,tag=old_wp1,tag=mg25]
execute as @e[tag=pass,tag=mg25_wp2] at @s unless block ~2 ~ ~ glass run tp @s @e[limit=1,tag=old_wp2,tag=mg25]
execute as @e[tag=pass,tag=mg25_wp3] at @s unless block ~2 ~ ~ glass run tp @s @e[limit=1,tag=old_wp3,tag=mg25]
execute as @e[tag=pass,tag=mg25_wp4] at @s unless block ~2 ~ ~ glass run tp @s @e[limit=1,tag=old_wp4,tag=mg25]
execute as @e[tag=pass,tag=mg25_wp5] at @s unless block ~2 ~ ~ glass run tp @s @e[limit=1,tag=old_wp5,tag=mg25]
execute as @e[tag=pass,tag=mg25_wp6] at @s unless block ~2 ~ ~ glass run tp @s @e[limit=1,tag=old_wp6,tag=mg25]
execute as @e[tag=pass,tag=mg25_wp7] at @s unless block ~2 ~ ~ glass run tp @s @e[limit=1,tag=old_wp7,tag=mg25]
execute as @e[tag=pass,tag=mg25_bp1] at @s unless block ~2 ~ ~ glass run tp @s @e[limit=1,tag=old_bp1,tag=mg25]
execute as @e[tag=pass,tag=mg25_bp2] at @s unless block ~2 ~ ~ glass run tp @s @e[limit=1,tag=old_bp2,tag=mg25]
execute as @e[tag=pass,tag=mg25_bp3] at @s unless block ~2 ~ ~ glass run tp @s @e[limit=1,tag=old_bp3,tag=mg25]
execute as @e[tag=pass,tag=mg25_bp4] at @s unless block ~2 ~ ~ glass run tp @s @e[limit=1,tag=old_bp4,tag=mg25]
execute as @e[tag=pass,tag=mg25_bp5] at @s unless block ~2 ~ ~ glass run tp @s @e[limit=1,tag=old_bp5,tag=mg25]
execute as @e[tag=pass,tag=mg25_bp6] at @s unless block ~2 ~ ~ glass run tp @s @e[limit=1,tag=old_bp6,tag=mg25]
execute as @e[tag=pass,tag=mg25_bp7] at @s unless block ~2 ~ ~ glass run tp @s @e[limit=1,tag=old_bp7,tag=mg25]
execute as @e[tag=pass,team=mg25-white] at @s unless block ~2 ~ ~ glass run fill ~ ~-1 ~-1 ~ ~1 ~1 white_shulker_box[facing=west] keep
execute as @e[tag=pass,team=mg25-black] at @s unless block ~2 ~ ~ glass run fill ~ ~-1 ~-1 ~ ~1 ~1 black_shulker_box[facing=west] keep
execute as @e[tag=pass,team=mg25-white,tag=mg25_c] at @s unless entity @e[team=mg25-white,tag=mg25,tag=!mg25_c] as @p[tag=RGUplayers,tag=!RGUturn] at @s run function c4:mg25/turn
execute as @e[tag=pass,team=mg25-black,tag=mg25_c] at @s unless entity @e[team=mg25-black,tag=mg25,tag=!mg25_c] as @p[tag=RGUplayers,tag=!RGUturn] at @s run function c4:mg25/turn

#Success
execute as @e[tag=moved,tag=pass,tag=!mg25_c,tag=!static] at @s if block ~2 ~ ~ glass run title @a[scores={mg25=1..}] title [""]
execute as @e[tag=moved,tag=pass,tag=!mg25_c,tag=!static] at @s if block ~2 ~ ~ glass unless entity @e[name="M@K",limit=1,scores={mg25.1=1}] run title @a[scores={mg25=1..}] subtitle ["",{"selector":"@p[tag=RGUturn]"},{"text":" moved "},{"score":{"name":"@e[name=\"M@K\",limit=1]","objective":"mg25.1"},"color":"gold"},{"text":" spaces","color":"gray"}]
execute as @e[tag=moved,tag=pass,tag=!mg25_c,tag=!static] at @s if block ~2 ~ ~ glass if entity @e[name="M@K",limit=1,scores={mg25.1=1}] run title @a[scores={mg25=1..}] subtitle ["",{"selector":"@p[tag=RGUturn]"},{"text":" moved "},{"score":{"name":"@e[name=\"M@K\",limit=1]","objective":"mg25.1"},"color":"gold"},{"text":" space","color":"gray"}]
execute as @e[tag=moved,tag=pass,tag=mg25,tag=!mg25_c] at @s if block ~2 ~ ~ glass run scoreboard players add @p[tag=RGUturn] mg25.2 1
execute as @e[tag=moved,tag=pass,tag=mg25,tag=!mg25_c] at @s if block ~2 ~ ~ glass run execute as @p[tag=RGUplayers,tag=!RGUturn] at @s run function c4:mg25/turn
execute as @e[tag=moved,tag=!pass,tag=mg25,tag=!mg25_c,tag=!static] at @s if block ~1 ~ ~ red_concrete if entity @p[tag=RGUturn] run summon firework_rocket ~ ~ ~ {LifeTime:1,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:5,Flicker:0,Trail:0,Colors:[I;9843760],FadeColors:[I;9843760]}]}}}}
execute as @e[tag=moved,tag=!pass,tag=mg25,tag=!mg25_c,tag=!static] at @s if block ~1 ~ ~ red_concrete as @p[tag=RGUturn] at @s run function c4:mg25/turn
execute as @e[tag=moved,tag=!pass,tag=mg25,tag=!static] at @s unless block ~1 ~ ~ red_concrete as @p[tag=RGUplayers,tag=!RGUturn] at @s run function c4:mg25/turn
execute as @e[tag=moved,tag=mg25,tag=!mg25_c,tag=static] at @s run execute as @p[tag=RGUplayers,tag=!RGUturn] at @s run function c4:mg25/turn

kill @e[tag=old,tag=mg25]