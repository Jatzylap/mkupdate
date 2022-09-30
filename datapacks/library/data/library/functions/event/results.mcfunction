gamemode adventure @a[tag=PG]
tp @s[tag=T1] -348 3 -8
tp @s[tag=T2] -341 3 14
tp @s[tag=T3] -319 3 25
function clear:chat
kill @e[tag=PG,tag=!pre,nbt={Small:1b}]
tag @e[name="M@K",limit=1] add PGresults
tag @e[name="M@K",tag=PGresults,limit=1] remove PGpause
execute as @e[name="M@K",limit=1,tag=PGresults,tag=!PGpause,tag=!PGrounds] at @s unless entity @a[tag=PG,scores={pg1.2=..0}] run title @a[tag=PG] actionbar ["",{"text":"[","color":"light_purple","bold":true},{"text":"@","color":"gold","obfuscated":true},{"text":"]","color":"light_purple","bold":true},{"text":" Calculating Results...","color":"yellow","bold":true}]
scoreboard players reset * pg1.5
scoreboard players reset * pg1.4

execute as @a[tag=PG] at @s unless score @s pg1.2 matches 0.. unless score @s pg1.2 matches ..0 unless entity @a[scores={pg1.7=1..}] run scoreboard players set @s pg1.2 0
execute unless entity @a[scores={pg1.7=1..}] run tag @a[tag=PG,scores={pg1.2=0..}] add PGFinalist
execute as @a[tag=PGFinalist] at @s run scoreboard players operation @s pg1.8 = @s pg1.2
scoreboard players set #highscore pg1.2 0
scoreboard players operation #highscore pg1.2 > @a[scores={pg1.2=1..}] pg1.2
scoreboard players operation @a[tag=PGFinalist] pg1.2 -= #highscore pg1.2
tag @r[tag=PGFinalist,scores={pg1.2=0}] add PGWinner
execute as @a[tag=PG,tag=!PGWinner] at @s if score @s pg1.2 = @a[limit=1,tag=PGWinner] pg1.2 run tag @e[name="M@K"] add PGtie
execute if entity @e[limit=1,name="M@K",tag=PGtie] run function library:event/schedule/next
execute as @a[tag=PGFinalist] at @s run scoreboard players operation @s pg1.2 = @s pg1.8
execute unless entity @e[name="M@K",tag=PGtie] run function library:event/podium

execute as @r[tag=PGWinner] at @s unless entity @a[scores={pg1.7=1..}] unless entity @e[name="M@K",limit=1,tag=PGtie] run scoreboard players set @a[tag=PGWinner,limit=1] pg1.7 1
execute if entity @p[scores={pg1.7=1..}] run title @a[tag=PG] actionbar ["",{"text":""}]
execute as @a[scores={pg1.7=1..}] at @s run xp add @s 150 points
execute if entity @p[scores={pg1.7=1..}] run bossbar set pg_timer name ["",{"selector":"@p[scores={pg1.7=1..}]","color":"gold","bold":true},{"text":" has triumphed in the","color":"light_purple","bold":true},{"text":" Event","color":"gold","bold":true},{"text":"!","color":"light_purple","bold":true}]
execute if entity @p[scores={pg1.7=1..}] run bossbar set pg_timer color purple
execute if entity @p[scores={pg1.7=1..}] run bossbar set pg_timer value 100

execute if entity @p[scores={pg1.7=1..},tag=T1] run data merge block -339 4 -8 {Text3:'{"text":"(","color":"white","extra":[{"score":{"name":"@p[tag=T1,scores={pg1.7=1..}]","objective":"pg1.2"},"color":"gold","bold":true},{"text":" points)","color":"white"}]}',Text2:'{"selector":"@p[tag=T1,scores={pg1.7=1..}]","color":"white","bold":true}'}
execute if entity @p[scores={pg1.7=1..},tag=T1] if entity @p[tag=T1,tag=PG2nd] run data merge block -339 4 -9 {Text3:'{"text":"(","color":"white","extra":[{"score":{"name":"@p[tag=T1,tag=PG2nd]","objective":"pg1.2"},"color":"gold","bold":true},{"text":" points)","color":"white"}]}',Text2:'{"selector":"@p[tag=T1,tag=PG2nd]","color":"white","bold":true}'}
execute if score @e[name="M@K",limit=1] pg1.3 matches 3.. if entity @p[scores={pg1.7=1..},tag=T1] if entity @p[tag=T1,tag=PG3rd] run data merge block -339 4 -7 {Text3:'{"text":"(","color":"white","extra":[{"score":{"name":"@p[tag=T1,tag=PG3rd]","objective":"pg1.2"},"color":"gold","bold":true},{"text":" points)","color":"white"}]}',Text2:'{"selector":"@p[tag=T1,tag=PG3rd]","color":"white","bold":true}'}
execute if entity @p[scores={pg1.7=1..},tag=T2] run data merge block -332 4 14 {Text3:'{"text":"(","color":"white","extra":[{"score":{"name":"@p[tag=T2,scores={pg1.7=1..}]","objective":"pg1.2"},"color":"gold","bold":true},{"text":" points)","color":"white"}]}',Text2:'{"selector":"@p[tag=T2,scores={pg1.7=1..}]","color":"white","bold":true}'}
execute if entity @p[scores={pg1.7=1..},tag=T2] if entity @p[tag=T2,tag=PG2nd] run data merge block -332 4 13 {Text3:'{"text":"(","color":"white","extra":[{"score":{"name":"@p[tag=T2,tag=PG2nd]","objective":"pg1.2"},"color":"gold","bold":true},{"text":" points)","color":"white"}]}',Text2:'{"selector":"@p[tag=T2,tag=PG2nd]","color":"white","bold":true}'}
execute if score @e[name="M@K",limit=1] pg1.3 matches 3.. if entity @p[scores={pg1.7=1..},tag=T2] if entity @p[tag=T2,tag=PG3rd] run data merge block -332 4 15 {Text3:'{"text":"(","color":"white","extra":[{"score":{"name":"@p[tag=T2,tag=PG3rd]","objective":"pg1.2"},"color":"gold","bold":true},{"text":" points)","color":"white"}]}',Text2:'{"selector":"@p[tag=T2,tag=PG3rd]","color":"white","bold":true}'}
execute if entity @p[scores={pg1.7=1..},tag=T3] run data merge block -310 4 25 {Text3:'{"text":"(","color":"white","extra":[{"score":{"name":"@p[tag=T3,scores={pg1.7=1..}]","objective":"pg1.2"},"color":"gold","bold":true},{"text":" points)","color":"white"}]}',Text2:'{"selector":"@p[tag=T3,scores={pg1.7=1..}]","color":"white","bold":true}'}
execute if entity @p[scores={pg1.7=1..},tag=T3] if entity @p[tag=T3,tag=PG2nd] run data merge block -310 4 24 {Text3:'{"text":"(","color":"white","extra":[{"score":{"name":"@p[tag=T3,tag=PG2nd]","objective":"pg1.2"},"color":"gold","bold":true},{"text":" points)","color":"white"}]}',Text2:'{"selector":"@p[tag=T3,tag=PG2nd]","color":"white","bold":true}'}
execute if score @e[name="M@K",limit=1] pg1.3 matches 3.. if entity @p[scores={pg1.7=1..},tag=T3] if entity @p[tag=T3,tag=PG3rd] run data merge block -310 4 26 {Text3:'{"text":"(","color":"white","extra":[{"score":{"name":"@p[tag=T3,tag=PG3rd]","objective":"pg1.2"},"color":"gold","bold":true},{"text":" points)","color":"white"}]}',Text2:'{"selector":"@p[tag=T3,tag=PG3rd]","color":"white","bold":true}'}

execute if score @p[scores={pg1.7=1..}] pg1.2 matches 1 if entity @p[scores={pg1.7=1..},tag=T1] run data merge block -339 4 -8 {Text3:'{"text":"(","color":"white","extra":[{"score":{"name":"@p[tag=T1,scores={pg1.7=1..}]","objective":"pg1.2"},"color":"gold","bold":true},{"text":" point)","color":"white"}]}',Text2:'{"selector":"@p[tag=T1,scores={pg1.7=1..}]","color":"white","bold":true}'}
execute if score @p[tag=PG2nd,tag=T1] pg1.2 matches 1 if entity @p[scores={pg1.7=1..},tag=T1] run data merge block -339 4 -9 {Text3:'{"text":"(","color":"white","extra":[{"score":{"name":"@p[tag=T1,tag=PG2nd]","objective":"pg1.2"},"color":"gold","bold":true},{"text":" point)","color":"white"}]}',Text2:'{"selector":"@p[tag=T1,tag=PG2nd]","color":"white","bold":true}'}
execute if score @p[tag=PG3rd,tag=T1] pg1.2 matches 1 if score @e[name="M@K",limit=1] pg1.3 matches 3.. if entity @p[scores={pg1.7=1..},tag=T1] run data merge block -339 4 -7 {Text3:'{"text":"(","color":"white","extra":[{"score":{"name":"@p[tag=T1,tag=PG3rd]","objective":"pg1.2"},"color":"gold","bold":true},{"text":" point)","color":"white"}]}',Text2:'{"selector":"@p[tag=T1,tag=PG3rd]","color":"white","bold":true}'}
execute if score @p[scores={pg1.7=1..}] pg1.2 matches 1 if entity @p[scores={pg1.7=1..},tag=T2] run data merge block -332 4 14 {Text3:'{"text":"(","color":"white","extra":[{"score":{"name":"@p[tag=T2,scores={pg1.7=1..}]","objective":"pg1.2"},"color":"gold","bold":true},{"text":" point)","color":"white"}]}',Text2:'{"selector":"@p[tag=T2,scores={pg1.7=1..}]","color":"white","bold":true}'}
execute if score @p[tag=PG2nd,tag=T2] pg1.2 matches 1 if entity @p[scores={pg1.7=1..},tag=T2] run data merge block -332 4 13 {Text3:'{"text":"(","color":"white","extra":[{"score":{"name":"@p[tag=T2,tag=PG2nd]","objective":"pg1.2"},"color":"gold","bold":true},{"text":" point)","color":"white"}]}',Text2:'{"selector":"@p[tag=T2,tag=PG2nd]","color":"white","bold":true}'}
execute if score @p[tag=PG3rd,tag=T2] pg1.2 matches 1 if score @e[name="M@K",limit=1] pg1.3 matches 3.. if entity @p[scores={pg1.7=1..},tag=T2] run data merge block -332 4 15 {Text3:'{"text":"(","color":"white","extra":[{"score":{"name":"@p[tag=T2,tag=PG3rd]","objective":"pg1.2"},"color":"gold","bold":true},{"text":" point)","color":"white"}]}',Text2:'{"selector":"@p[tag=T2,tag=PG3rd]","color":"white","bold":true}'}
execute if score @p[scores={pg1.7=1..}] pg1.2 matches 1 if entity @p[scores={pg1.7=1..},tag=T3] run data merge block -310 4 25 {Text3:'{"text":"(","color":"white","extra":[{"score":{"name":"@p[tag=T3,scores={pg1.7=1..}]","objective":"pg1.2"},"color":"gold","bold":true},{"text":" point)","color":"white"}]}',Text2:'{"selector":"@p[tag=T3,scores={pg1.7=1..}]","color":"white","bold":true}'}
execute if score @p[tag=PG2nd,tag=T3] pg1.2 matches 1 if entity @p[scores={pg1.7=1..},tag=T3] run data merge block -310 4 24 {Text3:'{"text":"(","color":"white","extra":[{"score":{"name":"@p[tag=T3,tag=PG2nd]","objective":"pg1.2"},"color":"gold","bold":true},{"text":" point)","color":"white"}]}',Text2:'{"selector":"@p[tag=T3,tag=PG2nd]","color":"white","bold":true}'}
execute if score @p[tag=PG3rd,tag=T3] pg1.2 matches 1 if score @e[name="M@K",limit=1] pg1.3 matches 3.. if entity @p[scores={pg1.7=1..},tag=T3] run data merge block -310 4 26 {Text3:'{"text":"(","color":"white","extra":[{"score":{"name":"@p[tag=T3,tag=PG3rd]","objective":"pg1.2"},"color":"gold","bold":true},{"text":" point)","color":"white"}]}',Text2:'{"selector":"@p[tag=T3,tag=PG3rd]","color":"white","bold":true}'}

execute unless entity @e[name="M@K",tag=PGtie] unless score @p[scores={pg1.7=1..}] pg1.2 matches 1 run tellraw @a[tag=PG] ["",{"text":"-----------","color":"yellow","bold":true},{"text":"LEADERBOARD","color":"gold","bold":true},{"text":"-----------\n","color":"yellow","bold":true},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":"(","color":"aqua","bold":true},{"text":"⭐⭐⭐","color":"yellow"},{"text":") ","color":"aqua","bold":true},{"selector":"@p[scores={pg1.7=1..}]","bold":true},{"text":" - ","color":"gold","bold":true},{"score":{"name":"@p[scores={pg1.7=1..}]","objective":"pg1.2"},"color":"gold","bold":true},{"text":" points","color":"gold","bold":false}]
execute unless entity @e[name="M@K",tag=PGtie] if score @p[scores={pg1.7=1..}] pg1.2 matches 1 run tellraw @a[tag=PG] ["",{"text":"-----------","color":"yellow","bold":true},{"text":"LEADERBOARD","color":"gold","bold":true},{"text":"-----------\n","color":"yellow","bold":true},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":"(","color":"aqua","bold":true},{"text":"⭐⭐⭐","color":"yellow"},{"text":") ","color":"aqua","bold":true},{"selector":"@p[scores={pg1.7=1..}]","bold":true},{"text":" - ","color":"gold","bold":true},{"text":"1","color":"gold","bold":true},{"text":" point","color":"gold","bold":false}]
execute unless entity @e[name="M@K",tag=PGtie] if entity @a[scores={pg1.7=1..}] unless score @p[tag=PG2nd] pg1.2 matches 1 run tellraw @a[tag=PG] ["",{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":"(","color":"aqua","bold":true},{"text":"⭐⭐","color":"yellow"},{"text":") ","color":"aqua","bold":true},{"selector":"@p[tag=PG2nd]","bold":true},{"text":" - ","color":"gold","bold":true},{"score":{"name":"@p[tag=PG2nd]","objective":"pg1.2"},"color":"gold","bold":true},{"text":" points","color":"gold","bold":false}]
execute unless entity @e[name="M@K",tag=PGtie] if entity @a[scores={pg1.7=1..}] if score @p[tag=PG2nd] pg1.2 matches 1 run tellraw @a[tag=PG] ["",{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":"(","color":"aqua","bold":true},{"text":"⭐⭐","color":"yellow"},{"text":") ","color":"aqua","bold":true},{"selector":"@p[tag=PG2nd]","bold":true},{"text":" - ","color":"gold","bold":true},{"text":"1","color":"gold","bold":true},{"text":" point","color":"gold","bold":false}]
execute unless entity @e[name="M@K",tag=PGtie] if entity @a[scores={pg1.7=1..}] unless score @p[tag=PG3rd] pg1.2 matches 1 run tellraw @a[tag=PG] ["",{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":"(","color":"aqua","bold":true},{"text":"⭐","color":"yellow"},{"text":") ","color":"aqua","bold":true},{"selector":"@p[tag=PG3rd]","bold":true},{"text":" - ","color":"gold","bold":true},{"score":{"name":"@p[tag=PG3rd]","objective":"pg1.2"},"color":"gold","bold":true},{"text":" points","color":"gold","bold":false}]
execute unless entity @e[name="M@K",tag=PGtie] if entity @a[scores={pg1.7=1..}] if score @p[tag=PG3rd] pg1.2 matches 1 run tellraw @a[tag=PG] ["",{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":"(","color":"aqua","bold":true},{"text":"⭐","color":"yellow"},{"text":") ","color":"aqua","bold":true},{"selector":"@p[tag=PG3rd]","bold":true},{"text":" - ","color":"gold","bold":true},{"text":"1","color":"gold","bold":true},{"text":" point","color":"gold","bold":false}]

execute if entity @p[scores={pg1.7=1..}] run setblock -291 2 -75 redstone_block
tag @a remove PGWinner
tag @e[limit=1,name="M@K"] remove PGresults