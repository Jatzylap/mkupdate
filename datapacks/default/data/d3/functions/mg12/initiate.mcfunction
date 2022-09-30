#Debug
kill @e[tag=pc]
setblock -349 2 -87 air
setblock -349 2 -89 air
scoreboard players reset @a mg12.1_1
bossbar add pctree1 "Shaking Tree..."
bossbar set pctree1 max 90
bossbar set pctree1 color green
bossbar add pctree2 "Shaking Tree..."
bossbar set pctree2 max 110
bossbar set pctree2 color green

setblock -349 2 -87 redstone_block
scoreboard players set @s mg12 2
data merge block -151 5 -89 {Text3:'{"text":"Starting...","color":"gold"}'}