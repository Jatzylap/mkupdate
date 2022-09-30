execute in overworld run setblock -351 2 -34 air
scoreboard players set @s mg25 2
execute in sister_dimension run fill 308 35 -2 308 29 26 black_concrete replace white_concrete
execute in sister_dimension run fill 307 4 -2 307 50 26 air replace #shulker_boxes
execute in sister_dimension run fill 301 5 0 301 5 24 white_concrete replace coal_block
execute in sister_dimension run fill 302 2 -3 298 2 24 coal_block replace white_concrete
execute in sister_dimension run fill 308 35 23 308 35 26 white_concrete
execute in sister_dimension run fill 308 29 23 308 29 26 white_concrete
execute in sister_dimension run fill 308 30 26 308 34 26 white_concrete
execute in sister_dimension run fill 308 34 23 308 30 23 white_concrete
execute in sister_dimension run fill 308 35 -2 308 35 1 white_concrete
execute in sister_dimension run fill 308 29 -2 308 29 1 white_concrete
execute in sister_dimension run fill 308 30 1 308 34 1 white_concrete
execute in sister_dimension run fill 308 34 -2 308 30 -2 white_concrete
execute in sister_dimension run setblock 298 2 0 white_concrete
execute in sister_dimension run setblock 302 2 5 white_concrete
execute in sister_dimension run setblock 302 2 19 white_concrete
execute in sister_dimension run setblock 298 2 24 white_concrete
title @a[scores={mg25=1..}] title ["",{"text":"Nobody","color":"gold"}]
title @a[scores={mg25=1..}] subtitle ["",{"text":"won the race","color":"yellow"}]
execute as @a[scores={mg25=1..}] at @s run playsound block.note_block.cow_bell master @s ~ ~ ~ 10000