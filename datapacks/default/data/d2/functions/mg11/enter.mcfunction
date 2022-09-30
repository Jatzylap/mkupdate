scoreboard players reset @s 3
advancement grant @s[tag=!T0] only mk:play_minigame2
execute at @s[tag=!T0,nbt={SelectedItem:{Count:1b,tag:{LCticket:1b}}}] unless entity @s[tag=PG] run scoreboard players set @s mg11 1
execute at @s[tag=PG] run scoreboard players set @s mg11 1
execute at @s[tag=PG] if data block -66 8 -94 {Text3:'{"obfuscated":true,"color":"gold","clickEvent":{"action":"run_command","value":"tag @s[tag=!T0] add SPmg11"},"text":"@"}'} run tag @s add SPmg11
tag @s[scores={mg11=1..}] add m-g
clear @s[scores={mg11=1..}] paper{LCticket:1b} 1
execute at @s[tag=!T0,tag=!PG] unless score @s mg11 matches 1.. run title @s actionbar ["",{"text":"This game requires","color":"yellow"},{"text":" Lucky Crate Tickets","color":"gold"},{"text":" which can be obtained in the ","color":"yellow"},{"text":"Trading Area","color":"green"}]
execute at @s[tag=!T0,tag=!PG,nbt={Inventory:[{tag:{LCticket:1b}}]}] unless entity @s[nbt={SelectedItem:{Count:1b,tag:{LCticket:1b}}}] run title @s actionbar ["",{"text":"Just ","color":"yellow"},{"text":"1 Lucky Ticket","color":"gold"},{"text":" is required to enter","color":"yellow"}]
playsound entity.arrow.hit_player master @s[tag=!T0] ~ ~ ~ 10000 2

tp @s[scores={mg11=1..}] -100 9 -180
particle cloud -100 10 -180 1 1 1 0.1 3000 force @a[tag=P0ft,tag=!N0,scores={mg11=1..}]
tag @s[scores={mg11=1..}] remove 4
tag @s[scores={mg11=1..}] remove 5
spawnpoint @s[tag=!T0] -100 8 -180
title @s[tag=!T0] clear
title @s[tag=!T0] reset
title @s[tag=PG] title ["",{"text":"Lucky","color":"gold","bold":true},{"text":"Crate","color":"yellow","bold":true}]
execute as @s[tag=PG] at @s unless entity @e[name="M@K",limit=1,tag=PGtie] run title @a[tag=PG] subtitle ["",{"text":"-","color":"yellow","bold":true},{"text":" Round ","color":"white","bold":true},{"score":{"name":"@e[limit=1,name=\"M@K\"]","objective":"pg1.6"},"color":"aqua","bold":true},{"text":"-","color":"yellow","bold":true}]
execute as @s[tag=PG] at @s if entity @e[name="M@K",limit=1,tag=PGtie] run title @a[tag=PG] subtitle ["",{"text":"-","color":"yellow","bold":true},{"text":" Tie ","color":"yellow","bold":true},{"text":"Round ","color":"white","bold":true},{"text":"-","color":"yellow","bold":true}]

execute store result score @s c if entity @a[scores={mg11=1..}]
scoreboard players reset @s[tag=!T0] lobby

execute at @s[tag=T0] unless score @s pg1.1 = @e[limit=1,name="M@K"] pg1 run summon armor_stand -326 2 -13 {Tags:[PG,pre,mg11],Invisible:1,Small:1,Marker:1,NoBasePlate:1}
execute at @s[tag=T0] unless score @s pg1.1 = @e[limit=1,name="M@K"] pg1 run scoreboard players add @s pg1.1 1
execute at @s[tag=T0] unless score @s pg1.1 = @e[limit=1,name="M@K"] pg1 run title @s actionbar ["",{"text":"selected ","color":"green"},{"score":{"name":"@s","objective":"pg1.1"},"color":"gold","bold":true},{"text":"/","color":"green"},{"score":{"name":"@e[limit=1,name=\"M@K\"]","objective":"pg1"},"color":"red","bold":true},{"text":" rounds","color":"green"}]
execute at @s[tag=T0] unless score @s pg1.1 = @e[limit=1,name="M@K"] pg1 run playsound entity.item.pickup master @s ~ ~ ~ 1000 0.8
execute at @s[tag=T0] if score @s pg1.1 = @e[limit=1,name="M@K"] pg1 run title @s actionbar ["",{"text":"selected ","color":"green"},{"score":{"name":"@s","objective":"pg1.1"},"color":"red","bold":true},{"text":"/","color":"green"},{"score":{"name":"@e[limit=1,name=\"M@K\"]","objective":"pg1"},"color":"red","bold":true},{"text":" rounds","color":"green"}]
execute at @s[tag=T0] if score @s pg1.1 = @e[limit=1,name="M@K"] pg1 run playsound entity.item.break master @s ~ ~ ~ 1000 2