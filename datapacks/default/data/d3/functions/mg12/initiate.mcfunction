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
tellraw @a[scores={mg12=1..}] ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n[","color":"yellow","bold":true},{"text":"@","color":"light_purple","obfuscated":true},{"text":"]","color":"yellow","bold":true},{"text":"---","color":"gold"},{"text":"MINIGAME INFO","color":"aqua","bold":true},{"text":"---","color":"gold"},{"text":"[","color":"yellow","bold":true},{"text":"@","color":"light_purple","obfuscated":true},{"text":"]","color":"yellow","bold":true},{"text":"\n\n\u21b1","color":"gold"},{"text":" Survive one night with Phantoms whom will stop at nothing to claim the camp. Hunt and gather sticks from trees to keep the campfire going; Phantoms hate them! Also keep an eye on your hydration too, campfires make you really thirsty!","color":"yellow"}]