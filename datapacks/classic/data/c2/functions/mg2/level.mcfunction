tag @s[nbt={Small:1b},tag=r0t,tag=mg2,tag=lvl1,tag=lvl2] add lvl3
tag @s[nbt={Small:1b},tag=r0t,tag=mg2,tag=lvl1,tag=!lvl2,tag=!lvl3] add lvl2
tag @s[nbt={Small:1b},tag=r0t,tag=mg2,tag=!lvl1,tag=!lvl2,tag=!lvl3] add lvl1

summon firework_rocket ~ ~-1 ~ {LifeTime:5,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:4,Flicker:1,Trail:0,Colors:[I;11743532,2437522,4312372,14602026,6719955,15435844],FadeColors:[I;11743532,2437522,4312372,14602026,6719955,15435844]}]}}}}
particle totem_of_undying ~ ~-1 ~ 1 1 1 0 900 normal @a[scores={mg2=1..}]

execute as @e[tag=2_r,tag=i,tag=lvl2,tag=!lvl3] run tag @e[tag=2_r,tag=mg2,tag=g] add lvl1
execute as @e[tag=2_r,tag=i,tag=lvl2,tag=!lvl3] run data merge block 435 159 118 {Text3:'{"color":"green","text":"Every 3s"}',Text2:'{"bold":true,"color":"yellow","text":"Generator"}',Text1:'{"bold":true,"color":"white","text":"Iron"}'}
execute as @e[tag=2_r,tag=i,tag=lvl3] run data merge block 435 159 118 {Text3:'{"color":"green","text":"Every 0.5s"}',Text2:'{"bold":true,"color":"yellow","text":"Generator"}',Text1:'{"bold":true,"color":"white","text":"Iron"}'}
execute as @e[tag=2_y,tag=i,tag=lvl2,tag=!lvl3] run tag @e[tag=2_y,tag=mg2,tag=g] add lvl1
execute as @e[tag=2_y,tag=i,tag=lvl2,tag=!lvl3] run data merge block 491 159 74 {Text3:'{"color":"green","text":"Every 3s"}',Text2:'{"bold":true,"color":"yellow","text":"Generator"}',Text1:'{"bold":true,"color":"white","text":"Iron"}'}
execute as @e[tag=2_y,tag=i,tag=lvl3] run data merge block 491 159 74 {Text3:'{"color":"green","text":"Every 0.5s"}',Text2:'{"bold":true,"color":"yellow","text":"Generator"}',Text1:'{"bold":true,"color":"white","text":"Iron"}'}
execute as @e[tag=2_b,tag=i,tag=lvl2,tag=!lvl3] run tag @e[tag=2_b,tag=mg2,tag=g] add lvl1
execute as @e[tag=2_b,tag=i,tag=lvl2,tag=!lvl3] run data merge block 435 159 18 {Text3:'{"color":"green","text":"Every 3s"}',Text2:'{"bold":true,"color":"yellow","text":"Generator"}',Text1:'{"bold":true,"color":"white","text":"Iron"}'}
execute as @e[tag=2_b,tag=i,tag=lvl3] run data merge block 435 159 18 {Text3:'{"color":"green","text":"Every 0.5s"}',Text2:'{"bold":true,"color":"yellow","text":"Generator"}',Text1:'{"bold":true,"color":"white","text":"Iron"}'}

execute as @e[tag=2_r,tag=g,tag=lvl1,tag=!lvl2,tag=!lvl3] run data merge block 447 159 118 {Text3:'{"color":"green","text":"Every 3.5s"}',Text2:'{"bold":true,"color":"yellow","text":"Generator"}',Text1:'{"bold":true,"color":"gold","text":"Gold"}'}
execute as @e[tag=2_r,tag=g,tag=lvl1,tag=!lvl2,tag=!lvl3] if score @e[name="M@K",limit=1] mg2 matches 0 run tellraw @a[team=mg2-red,tag=STGplayers] ["",{"text":"Bed","color":"aqua","bold":true},{"text":"Wars","color":"red","bold":true},{"text":"> "},{"text":"You fixed the Gold generator!","color":"yellow"}]
execute as @e[tag=2_r,tag=g,tag=lvl1,tag=!lvl2,tag=!lvl3] run scoreboard players set @s mg2.2 1
execute as @e[tag=2_r,tag=g,tag=lvl1,tag=!lvl2,tag=!lvl3] if score @e[name="M@K",limit=1] mg2 matches 1 run tellraw @a[team=mg2-red,tag=STGplayers] ["",{"text":"Egg","color":"aqua","bold":true},{"text":"Wars","color":"red","bold":true},{"text":"> "},{"text":"You fixed the Gold generator!","color":"yellow"}]
execute as @e[tag=2_r,tag=g,tag=lvl2,tag=!lvl3] run data merge block 447 159 118 {Text3:'{"color":"green","text":"Every 2.5s"}',Text2:'{"bold":true,"color":"yellow","text":"Generator"}',Text1:'{"bold":true,"color":"gold","text":"Gold"}'}
execute as @e[tag=2_r,tag=g,tag=lvl3] run data merge block 447 159 118 {Text3:'{"color":"green","text":"Every 1.5s"}',Text2:'{"bold":true,"color":"yellow","text":"Generator"}',Text1:'{"bold":true,"color":"gold","text":"Gold"}'}
execute as @e[tag=2_y,tag=g,tag=lvl1,tag=!lvl2,tag=!lvl3] run data merge block 491 159 62 {Text3:'{"color":"green","text":"Every 3.5s"}',Text2:'{"bold":true,"color":"yellow","text":"Generator"}',Text1:'{"bold":true,"color":"gold","text":"Gold"}'}
execute as @e[tag=2_y,tag=g,tag=lvl1,tag=!lvl2,tag=!lvl3] if score @e[name="M@K",limit=1] mg2 matches 0 run tellraw @a[team=mg2-yellow,tag=STGplayers] ["",{"text":"Bed","color":"aqua","bold":true},{"text":"Wars","color":"red","bold":true},{"text":"> "},{"text":"You fixed the Gold generator!","color":"yellow"}]
execute as @e[tag=2_y,tag=g,tag=lvl1,tag=!lvl2,tag=!lvl3] run scoreboard players set @s mg2.2 1
execute as @e[tag=2_y,tag=g,tag=lvl1,tag=!lvl2,tag=!lvl3] if score @e[name="M@K",limit=1] mg2 matches 1 run tellraw @a[team=mg2-yellow,tag=STGplayers] ["",{"text":"Egg","color":"aqua","bold":true},{"text":"Wars","color":"red","bold":true},{"text":"> "},{"text":"You fixed the Gold generator!","color":"yellow"}]
execute as @e[tag=2_y,tag=g,tag=lvl2,tag=!lvl3] run data merge block 491 159 62 {Text3:'{"color":"green","text":"Every 2.5s"}',Text2:'{"bold":true,"color":"yellow","text":"Generator"}',Text1:'{"bold":true,"color":"gold","text":"Gold"}'}
execute as @e[tag=2_y,tag=g,tag=lvl3] run data merge block 491 159 62 {Text3:'{"color":"green","text":"Every 1.5s"}',Text2:'{"bold":true,"color":"yellow","text":"Generator"}',Text1:'{"bold":true,"color":"gold","text":"Gold"}'}
execute as @e[tag=2_b,tag=g,tag=lvl1,tag=!lvl2,tag=!lvl3] run data merge block 447 159 18 {Text3:'{"color":"green","text":"Every 3.5s"}',Text2:'{"bold":true,"color":"yellow","text":"Generator"}',Text1:'{"bold":true,"color":"gold","text":"Gold"}'}
execute as @e[tag=2_b,tag=g,tag=lvl1,tag=!lvl2,tag=!lvl3] if score @e[name="M@K",limit=1] mg2 matches 0 run tellraw @a[team=mg2-blue,tag=STGplayers] ["",{"text":"Bed","color":"aqua","bold":true},{"text":"Wars","color":"red","bold":true},{"text":"> "},{"text":"You fixed the Gold generator!","color":"yellow"}]
execute as @e[tag=2_b,tag=g,tag=lvl1,tag=!lvl2,tag=!lvl3] run scoreboard players set @s mg2.2 1
execute as @e[tag=2_b,tag=g,tag=lvl1,tag=!lvl2,tag=!lvl3] if score @e[name="M@K",limit=1] mg2 matches 1 run tellraw @a[team=mg2-blue,tag=STGplayers] ["",{"text":"Egg","color":"aqua","bold":true},{"text":"Wars","color":"red","bold":true},{"text":"> "},{"text":"You fixed the Gold generator!","color":"yellow"}]
execute as @e[tag=2_b,tag=g,tag=lvl2,tag=!lvl3] run data merge block 447 159 18 {Text3:'{"color":"green","text":"Every 2.5s"}',Text2:'{"bold":true,"color":"yellow","text":"Generator"}',Text1:'{"bold":true,"color":"gold","text":"Gold"}'}
execute as @e[tag=2_b,tag=g,tag=lvl3] run data merge block 447 159 18 {Text3:'{"color":"green","text":"Every 1.5s"}',Text2:'{"bold":true,"color":"yellow","text":"Generator"}',Text1:'{"bold":true,"color":"gold","text":"Gold"}'}

execute as @e[tag=2_c,tag=d,tag=lvl2] run data merge block 440 159 68 {Text3:'{"color":"green","text":"Every 7.5s"}',Text2:'{"bold":true,"color":"yellow","text":"Generator"}',Text1:'{"bold":true,"color":"aqua","text":"Diamond"}'}
execute as @e[tag=2_c,tag=d,tag=lvl2] run data merge block 438 159 68 {Text3:'{"color":"green","text":"Every 7.5s"}',Text2:'{"bold":true,"color":"yellow","text":"Generator"}',Text1:'{"bold":true,"color":"aqua","text":"Diamond"}'}
execute as @e[tag=2_c,tag=e,tag=lvl2] run data merge block 440 152 68 {Text3:'{"color":"green","text":"Every 9.5s"}',Text2:'{"bold":true,"color":"yellow","text":"Generator"}',Text1:'{"bold":true,"color":"green","text":"Emerald"}'}