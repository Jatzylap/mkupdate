execute as @a[scores={mg22=1..}] at @s run playsound ui.toast.challenge_complete master @s ~ ~ ~ 1000 2
execute as @a[scores={mg22=1..}] at @s run tellraw @s ["",{"text":"\n\nWave ","color":"green","bold":true},{"score":{"name":"@e[name=\"M@K\",limit=1]","objective":"mg22.2"},"color":"aqua","bold":true},{"text":" surpassed!\n\n","color":"yellow","bold":true}]
execute as @a[scores={mg22=1..},tag=!mg22_adv] at @s if entity @e[tag=mg22,tag=catapult] if entity @e[tag=mg22,tag=ballista] if entity @e[tag=mg22,tag=double_ballista] if entity @e[tag=mg22,tag=fireball_catapult] if entity @e[tag=mg22,tag=mortar_cannon] if entity @e[tag=mg22,tag=harming_dispenser] if entity @e[tag=mg22,tag=slowing_dispenser] if entity @e[tag=mg22,tag=medusa_eye_tower] if entity @e[tag=mg22,tag=toxic_machine] if entity @e[tag=mg22,tag=flame_machine] if entity @e[tag=mg22,tag=snow_golem_tower] if entity @e[tag=mg22,tag=golem_tower] if entity @e[tag=mg22,tag=witch_tower] if entity @e[tag=mg22,tag=wizard_tower] if entity @e[tag=mg22,tag=warlock_tower] if score @e[name="M@K",limit=1] mg22.2 matches 29.. run tellraw @s ["",{"text":"|","obfuscated":true},{"text":" Awesome! ","color":"light_purple"},{"text":"|\n","color":"reset","obfuscated":true},{"text":"The game is deemed complete as a reward for making it this far!","color":"light_purple"}]
execute if entity @e[tag=mg22,tag=catapult] if entity @e[tag=mg22,tag=ballista] if entity @e[tag=mg22,tag=double_ballista] if entity @e[tag=mg22,tag=fireball_catapult] if entity @e[tag=mg22,tag=mortar_cannon] if entity @e[tag=mg22,tag=harming_dispenser] if entity @e[tag=mg22,tag=slowing_dispenser] if entity @e[tag=mg22,tag=medusa_eye_tower] if entity @e[tag=mg22,tag=toxic_machine] if entity @e[tag=mg22,tag=flame_machine] if entity @e[tag=mg22,tag=snow_golem_tower] if entity @e[tag=mg22,tag=golem_tower] if entity @e[tag=mg22,tag=witch_tower] if entity @e[tag=mg22,tag=wizard_tower] if entity @e[tag=mg22,tag=warlock_tower] run tag @a[scores={mg22=1..}] add mg22_adv
execute if score @e[name="M@K",limit=1] mg22.2 matches 29.. run advancement grant @a[scores={mg22=1..},tag=mg22_adv] only mk:achieve_all mg22
execute if score @e[name="M@K",limit=1] mg22.2 matches 29.. as @a[scores={mg22=1..},tag=mg22_adv] at @s store success score @s 3 run advancement grant @s only mk:unlock_all mg22
scoreboard players add @a[scores={mg22=1..,3=1},tag=mg22_adv] 7 1
execute as @a[scores={mg22=1..},tag=!mg22_adv] at @s if entity @e[type=marker,tag=mg22] if score @e[name="M@K",limit=1] mg22.2 matches 29 run tellraw @s ["",{"text":"|","obfuscated":true},{"text":" Good for you! ","color":"light_purple"},{"text":"|\n","color":"reset","obfuscated":true},{"text":"But to fully complete this game, all Defence Structures must reach this point at their maximum upgrade.","color":"light_purple"}]
fill 210 2 -167 210 5 -169 air replace spruce_fence
scoreboard players reset @e[tag=!mg22] mg22.3
scoreboard players set @e[type=marker,tag=mg22] mg22.3 160
scoreboard players reset * mg22.4
scoreboard players reset * mg22.6
scoreboard players reset * mg22.7
execute as @e[type=marker,tag=mg22] at @s run tp @s ~ 1 ~ 0 0
setblock 196 3 -168 lever[face=wall,facing=east]
setblock 216 2 -200 deepslate_brick_wall
setblock 216 2 -148 deepslate_brick_wall
execute as @e[type=marker,tag=mg22] at @s run fill ~-1 ~1 ~-1 ~1 ~3 ~1 barrier keep
bossbar set td_progress value 20
execute as @e[tag=mg22_mob] at @s run data merge entity @s {Health:0,DeathTime:19s}
kill @e[tag=mg22_path]
kill @e[tag=mg22_lvl]
kill @e[type=area_effect_cloud,x=193,y=0,z=-221,dx=74,dy=3,dz=83]
tp @a[scores={mg22=1..},tag=TDviewers] 216 2 -168 90 0
tp @a[tag=SPmg22] 216 2 -168 90 0
execute unless score @e[tag=mg22_start,limit=1] mg22.2 matches 30.. run title @a[scores={mg22=1..}] actionbar ["",{"text":"Points: ","color":"yellow"},{"score":{"name":"@e[name=\"M@K\",limit=1]","objective":"mg22.1"},"color":"gold"},{"text":" "},{"text":" "},{"text":" "},{"text":"Wave: ","color":"green"},{"score":{"name":"@e[name=\"M@K\",limit=1]","objective":"mg22.2"},"color":"yellow","bold":true}]
execute if score @e[tag=mg22_start,limit=1] mg22.2 matches 30.. run title @a[scores={mg22=1..}] actionbar ["",{"text":"Points: ","color":"yellow"},{"score":{"name":"@e[name=\"M@K\",limit=1]","objective":"mg22.1"},"color":"gold"},{"text":" "},{"text":" "},{"text":" "},{"text":"Wave: ","color":"green"},{"score":{"name":"@e[name=\"M@K\",limit=1]","objective":"mg22.2"},"color":"aqua","bold":true}]
gamemode adventure @a[tag=SPmg22]
tag @a remove TDviewers
tag @a remove SPmg22
tag @e[tag=mg22_start] remove mg22_start
tag @e[tag=mg22_ready] remove mg22_ready
execute in overworld run data merge block -47 5 47 {Text3:'{"text":""}'}