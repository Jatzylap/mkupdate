#Debug:
execute as @e[tag=firedodge,nbt={Small:1b}] at @s run setblock ~ ~ ~ cobblestone
fill 94 7 5 65 4 -33 air replace fire

setblock -324 2 -56 air
setblock -322 2 -52 redstone_block
data merge block -47 6 35 {Text3:'{"text":"@","color":"gold","obfuscated":true,"clickEvent":{"action":"run_command","value":"tag @s[tag=!T0] add SPmg4"}}'}

bossbar add fd_progress "Fire Progress"
bossbar set fd_progress style notched_10
bossbar set fd_progress max 5
bossbar set fd_progress color green
setblock -328 2 -41 redstone_block
execute as @a[scores={mg4=1..}] at @s run scoreboard players reset @s mg4.1
spawnpoint @a[scores={mg4=1..}] 80 7 4
scoreboard players set @a[scores={mg4=1..}] mg4.4 0