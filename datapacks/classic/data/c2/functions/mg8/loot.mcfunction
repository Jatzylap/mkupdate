data merge block 390 34 -161 {LootTable:"c2:chests/tier1"}
data merge block 382 34 -138 {LootTable:"c2:chests/tier1"}
data merge block 391 34 -115 {LootTable:"c2:chests/tier1"}
data merge block 419 34 -114 {LootTable:"c2:chests/tier1"}
data merge block 426 34 -139 {LootTable:"c2:chests/tier1"}
data merge block 418 34 -160 {LootTable:"c2:chests/tier1"}
data merge block 408 34 -143 {LootTable:"c2:chests/tier2"}
data merge block 405 34 -138 {LootTable:"c2:chests/tier2"}
data merge block 402 34 -134 {LootTable:"c2:chests/tier2"}

kill @e[type=item,x=367,y=0,z=-173,dx=73,dy=99,dz=70]
execute if score @e[limit=1,name="M@K"] mg8.3 matches ..4000 run title @a[team=mg8,tag=SWplayers] title ""
execute if score @e[limit=1,name="M@K"] mg8.3 matches ..4000 run title @a[team=mg8,tag=SWplayers] subtitle ["",{"text":"Chests refilled!","color":"yellow","bold":true}]
execute if score @e[limit=1,name="M@K"] mg8.3 matches ..4000 run bossbar set sw_timer2 color yellow
execute if score @e[limit=1,name="M@K"] mg8.3 matches ..4000 run bossbar set sw_timer2 name ["",{"text":"Sky","color":"aqua","bold":true},{"text":"Wars","color":"gold","bold":true},{"text":" - ","color":"yellow"},{"text":"Stage 2","color":"gold","bold":true}]
execute if score @e[limit=1,name="M@K"] mg8.3 matches ..4000 run playsound block.chest.open master @a[team=mg8] ~ ~ ~ 100000
execute if score @e[limit=1,name="M@K"] mg8.3 matches ..4000 run data merge block 390 34 -161 {LootTable:"c2:chests/tier2"}
execute if score @e[limit=1,name="M@K"] mg8.3 matches ..4000 run data merge block 382 34 -138 {LootTable:"c2:chests/tier2"}
execute if score @e[limit=1,name="M@K"] mg8.3 matches ..4000 run data merge block 391 34 -115 {LootTable:"c2:chests/tier2"}
execute if score @e[limit=1,name="M@K"] mg8.3 matches ..4000 run data merge block 419 34 -114 {LootTable:"c2:chests/tier2"}
execute if score @e[limit=1,name="M@K"] mg8.3 matches ..4000 run data merge block 426 34 -139 {LootTable:"c2:chests/tier2"}
execute if score @e[limit=1,name="M@K"] mg8.3 matches ..4000 run data merge block 418 34 -160 {LootTable:"c2:chests/tier2"}
execute if score @e[limit=1,name="M@K"] mg8.3 matches ..4000 run data merge block 408 34 -143 {LootTable:"c2:chests/tier2"}
execute if score @e[limit=1,name="M@K"] mg8.3 matches ..4000 run data merge block 405 34 -138 {LootTable:"c2:chests/tier2"}
execute if score @e[limit=1,name="M@K"] mg8.3 matches ..4000 run data merge block 402 34 -134 {LootTable:"c2:chests/tier2"}