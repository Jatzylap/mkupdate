tag @s remove t0me1
tag @s remove t0me2
tag @s remove t0me3
tag @s remove t0me4
execute in void run advancement grant @a[scores={mg15=1..}] only mk:achieve_all mg15
execute in void as @a[scores={mg15=1..}] at @s store success score @s 3 run advancement grant @s only mk:unlock_all mg15
execute in void run scoreboard players add @a[scores={mg15=1..,3=1}] 7 1
execute in void run tellraw @a[scores={mg15=1..}] ["",{"text":"\n"},{"selector":"@a[scores={mg15=1..},tag=mg15-book]","color":"yellow"},{"text":" helped discover all 4 missing SkyBlock tomes!","color":"green"}]
tag @s add mg15_win