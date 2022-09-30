execute if entity @s[tag=new] run tellraw @p[tag=RGUplayers,tag=!RGUturn,team=mg25-white] ["\n",{"selector":"@p[tag=RGUturn]"},{"text":" flicked your pawn off the board!\n","color":"gray"}]
execute if entity @s[tag=new] run tellraw @p[tag=RGUplayers,tag=!RGUturn,team=mg25-black] ["\n",{"selector":"@p[tag=RGUturn]"},{"text":" flicked your pawn off the board!\n","color":"gray"}]
playsound item.axe.scrape master @a[scores={mg25=1..}] ~ ~ ~ 9 1.5
particle crit ~ ~ ~ 0 0 0 1 99 force @a[scores={mg25=1..}]

#White pieces
execute at @s[team=mg25-white] run fill ~ ~-1 ~-1 ~ ~1 ~1 air replace white_shulker_box
execute in sister_dimension run tp @s[tag=mg25_wp1] 307 5 25
execute in sister_dimension run tp @s[tag=mg25_wp2] 307 8 25
execute in sister_dimension run tp @s[tag=mg25_wp3] 307 11 25
execute in sister_dimension run tp @s[tag=mg25_wp4] 307 14 25
execute in sister_dimension run tp @s[tag=mg25_wp5] 307 17 25
execute in sister_dimension run tp @s[tag=mg25_wp6] 307 20 25
execute in sister_dimension run tp @s[tag=mg25_wp7] 307 23 25
execute at @s[team=mg25-white] run fill ~ ~-1 ~-1 ~ ~1 ~1 white_shulker_box[facing=west] keep
execute at @s[team=mg25-white] run setblock ~ ~ ~ air

#Black pieces
execute at @s[team=mg25-black] run fill ~ ~-1 ~-1 ~ ~1 ~1 air replace black_shulker_box
execute in sister_dimension run tp @s[tag=mg25_bp1] 307 5 -1
execute in sister_dimension run tp @s[tag=mg25_bp2] 307 8 -1
execute in sister_dimension run tp @s[tag=mg25_bp3] 307 11 -1
execute in sister_dimension run tp @s[tag=mg25_bp4] 307 14 -1
execute in sister_dimension run tp @s[tag=mg25_bp5] 307 17 -1
execute in sister_dimension run tp @s[tag=mg25_bp6] 307 20 -1
execute in sister_dimension run tp @s[tag=mg25_bp7] 307 23 -1
execute at @s[team=mg25-black] run fill ~ ~-1 ~-1 ~ ~1 ~1 black_shulker_box[facing=west] keep
execute at @s[team=mg25-black] run setblock ~ ~ ~ air