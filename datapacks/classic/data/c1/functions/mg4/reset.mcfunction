scoreboard players reset * mg4.2
setblock -322 2 -52 air
title @a[scores={mg4=0..,mg4.4=0}] title ["",{"text":"Game Over","color":"red","bold":true}]
playsound entity.tnt.primed master @a[scores={mg4=0..,mg4.4=0}] ~ ~ ~ 10000 1
kill @e[type=blaze,tag=firedodge]
kill @e[type=small_fireball,tag=mg4]
title @a[scores={mg4.4=1..}] title ["",{"text":"You won!","color":"green","underlined":true}]
playsound entity.player.levelup master @a[scores={mg4.4=1..}] ~ ~ ~ 10000 1
data merge block -326 2 -53 {Command:"setblock -318 2 -32 redstone_block replace"}
spawnpoint @a[scores={mg4=0..}] -51 5 35
fill -329 3 -36 -329 8 -36 lime_wool replace #wool
fill 94 7 5 65 4 -33 air replace fire
setblock -329 2 -38 repeater[delay=4,facing=north]