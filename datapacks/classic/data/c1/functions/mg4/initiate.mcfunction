#Debug:
execute as @e[tag=firedodge,nbt={Small:1b}] at @s run setblock ~ ~ ~ cobblestone
fill 94 7 5 65 4 -33 air replace fire

setblock -324 2 -56 air
setblock -322 2 -52 redstone_block
data merge block -47 6 35 {Text3:'{"text":"@","color":"gold","obfuscated":true,"clickEvent":{"action":"run_command","value":"tag @s add SPmg4"}}'}

bossbar add fd_progress "Fire Progress"
bossbar set fd_progress style notched_10
bossbar set fd_progress max 5
bossbar set fd_progress color green
bossbar set fd_progress players @a[scores={mg4=1..}]
setblock -328 2 -41 redstone_block
execute as @a[scores={mg4=1..}] at @s run scoreboard players reset @s mg4.1
spawnpoint @a[scores={mg4=1..}] 80 7 4
tellraw @a[scores={mg4=1..}] ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n[","color":"yellow","bold":true},{"text":"@","color":"green","obfuscated":true},{"text":"]","color":"yellow","bold":true},{"text":"---","color":"gold"},{"text":"MINIGAME INFO","color":"aqua","bold":true},{"text":"---","color":"gold"},{"text":"[","color":"yellow","bold":true},{"text":"@","color":"green","obfuscated":true},{"text":"]","color":"yellow","bold":true},{"text":"\n\n\u21b1","color":"gold"},{"text":" Dodge blasts of blazing fire charges. If you die, you are eliminated!"},{"text":" \u21b2","color":"gold","bold":true}]
scoreboard players set @a[scores={mg4=1..}] mg4.4 0