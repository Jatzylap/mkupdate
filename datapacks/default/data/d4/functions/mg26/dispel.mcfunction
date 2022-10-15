kill @e[tag=mg26,tag=q]
execute as @a[scores={mg26=1..}] at @s run function clear:chat
execute as @a[scores={mg26=1..}] at @s run playsound entity.evoker.prepare_summon master @s ~ ~ ~ 1000 0.6
execute in sister_dimension run particle dust 1 1 1 2 21 2.4 -377 .3 .3 .3 1 1500 force @a[scores={mg26=1..}]
execute in sister_dimension if block 21 2 -377 chest run setblock 21 2 -377 air
execute in sister_dimension run fill 13 -1 -369 29 -1 -385 air replace redstone_block
execute in sister_dimension unless entity @e[tag=mg26,tag=q] if predicate 50-50 run function d4:mg26/summon1
execute in sister_dimension unless entity @e[tag=mg26,tag=q] run function d4:mg26/summon2
kill @s