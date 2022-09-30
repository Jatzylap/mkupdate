scoreboard players reset @s 3
advancement grant @s[tag=!T0] only mk:play_minigame2
tag @s[tag=!T0] add m-g
execute at @s[tag=!T0] run team add mg24-pink
execute at @s[tag=!T0] run team add mg24-green
team modify mg24-pink color light_purple
team modify mg24-green color green
team leave @s[tag=!T0]
execute at @s[tag=PG] if data block -163 5 -89 {Text3:'{"obfuscated":true,"color":"gold","clickEvent":{"action":"run_command","value":"tag @s[tag=!T0] add SPmg24"},"text":"@"}'} run tag @s add SPmg24
scoreboard players add @s[tag=!T0] mg24 1
tp @s[scores={mg24=1..}] 762 211 55 90 0
tp @s[tag=SPmg24] 862 6 61.0
particle cloud -67 4 76 1 1 1 0.1 3000 force @s[tag=P0ft,tag=!N0,scores={mg24=1..}]
title @s[tag=!T0] clear
title @s[tag=!T0] reset
execute at @s[tag=!T0,tag=!mg24-green] store result score @e[limit=1,name="M@K"] mg24.1 if entity @a[scores={mg24=1..},tag=mg24-pink]
execute at @s[tag=!T0,tag=!mg24-green] store result score @e[limit=1,name="M@K"] mg24.2 if entity @a[scores={mg24=1..},tag=mg24-green]
execute at @s[tag=!T0,tag=!mg24-green] run scoreboard players operation @e[limit=1,name="M@K"] mg24.1 -= @e[limit=1,name="M@K"] mg24.2
execute at @s[tag=!T0,tag=!mg24-green] unless score @e[limit=1,name="M@K"] mg24.1 matches 1.. run tag @s add mg24-pink
execute at @s[tag=!T0,tag=!mg24-pink] store result score @e[limit=1,name="M@K"] mg24.1 if entity @a[scores={mg24=1..},tag=mg24-pink]
execute at @s[tag=!T0,tag=!mg24-pink] store result score @e[limit=1,name="M@K"] mg24.2 if entity @a[scores={mg24=1..},tag=mg24-green]
execute at @s[tag=!T0,tag=!mg24-pink] run scoreboard players operation @e[limit=1,name="M@K"] mg24.2 -= @e[limit=1,name="M@K"] mg24.1
execute at @s[tag=!T0,tag=!mg24-pink] unless score @e[limit=1,name="M@K"] mg24.2 matches 1.. run tag @s add mg24-green

title @s[tag=PG] title ["",{"text":"Missile Madness","color":"red","bold":true}]
title @s[tag=PG,tag=SPmg24] title ["",{"text":"Spectating","color":"gray","bold":true}]
execute as @s[tag=PG] at @s unless entity @e[name="M@K",limit=1,tag=PGtie] run title @a[tag=PG] subtitle ["",{"text":"-","color":"yellow","bold":true},{"text":" Round ","color":"white","bold":true},{"score":{"name":"@e[limit=1,name=\"M@K\"]","objective":"pg1.6"},"color":"aqua","bold":true},{"text":"-","color":"yellow","bold":true}]
execute as @s[tag=PG] at @s if entity @e[name="M@K",limit=1,tag=PGtie] run title @a[tag=PG] subtitle ["",{"text":"-","color":"yellow","bold":true},{"text":" Tie ","color":"yellow","bold":true},{"text":"Round ","color":"white","bold":true},{"text":"-","color":"yellow","bold":true}]
tellraw @s[tag=mg24-pink] ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n[","color":"yellow","bold":true},{"text":"@","color":"green","obfuscated":true},{"text":"]","color":"yellow","bold":true},{"text":"---","color":"gold"},{"text":"MINIGAME INFO","color":"aqua","bold":true},{"text":"---","color":"gold"},{"text":"[","color":"yellow","bold":true},{"text":"@","color":"green","obfuscated":true},{"text":"]","color":"yellow","bold":true},{"text":"\n\n\u21b1","color":"gold"},{"text":" You are in the "},{"text":"Pink Team","color":"light_purple","bold":true},{"text":"! \nYour objective is to charge missiles in your offhand (Firework rockets) to your Crossbow. The team with the highest kills at the end of the game wins!"},{"text":" \u21b2","color":"gold","bold":true},{"text":"\n"}]
tellraw @s[tag=mg24-green] ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n[","color":"yellow","bold":true},{"text":"@","color":"green","obfuscated":true},{"text":"]","color":"yellow","bold":true},{"text":"---","color":"gold"},{"text":"MINIGAME INFO","color":"aqua","bold":true},{"text":"---","color":"gold"},{"text":"[","color":"yellow","bold":true},{"text":"@","color":"green","obfuscated":true},{"text":"]","color":"yellow","bold":true},{"text":"\n\n\u21b1","color":"gold"},{"text":" You are in the "},{"text":"Green Team","color":"green","bold":true},{"text":"! \nYour objective is to charge missiles in your offhand (Firework rockets) to your Crossbow. The team with the highest kills at the end of the game wins!"},{"text":" \u21b2","color":"gold","bold":true},{"text":"\n"}]

execute unless entity @s[tag=SPmg24] store result score @s c if entity @a[scores={mg24=1..}]
scoreboard players reset @s[tag=!T0,tag=!SPmg24] lobby

execute at @s[tag=T0] unless score @s pg1.1 = @e[limit=1,name="M@K"] pg1 run summon armor_stand -326 2 -13 {Tags:[PG,pre,mg24],Invisible:1,Small:1,Marker:1,NoBasePlate:1}
execute at @s[tag=T0] unless score @s pg1.1 = @e[limit=1,name="M@K"] pg1 run scoreboard players add @s pg1.1 1
execute at @s[tag=T0] unless score @s pg1.1 = @e[limit=1,name="M@K"] pg1 run title @s actionbar ["",{"text":"selected ","color":"green"},{"score":{"name":"@s","objective":"pg1.1"},"color":"gold","bold":true},{"text":"/","color":"green"},{"score":{"name":"@e[limit=1,name=\"M@K\"]","objective":"pg1"},"color":"red","bold":true},{"text":" rounds","color":"green"}]
execute at @s[tag=T0] unless score @s pg1.1 = @e[limit=1,name="M@K"] pg1 run playsound entity.item.pickup master @s ~ ~ ~ 1000 0.8
execute at @s[tag=T0] if score @s pg1.1 = @e[limit=1,name="M@K"] pg1 run title @s actionbar ["",{"text":"selected ","color":"green"},{"score":{"name":"@s","objective":"pg1.1"},"color":"red","bold":true},{"text":"/","color":"green"},{"score":{"name":"@e[limit=1,name=\"M@K\"]","objective":"pg1"},"color":"red","bold":true},{"text":" rounds","color":"green"}]
execute at @s[tag=T0] if score @s pg1.1 = @e[limit=1,name="M@K"] pg1 run playsound entity.item.break master @s ~ ~ ~ 1000 2