execute unless entity @a[tag=mg23_nowin] in overworld run setblock -351 2 -39 air
execute in sister_dimension run setblock -75 25 -122 blue_wool
execute in sister_dimension run setblock 89 25 -17 red_wool
execute in sister_dimension run fill -75 30 -121 -76 36 -114 blue_wool replace #wool
execute in sister_dimension run fill 88 30 -16 89 35 -9 red_wool replace #wool
execute if entity @a[tag=mg23_nowin] in sister_dimension run tp @a[team=mg23-red,tag=CTFplayers] -17 4 53
execute if entity @a[tag=mg23_nowin] in sister_dimension run tp @a[team=mg23-blue,tag=CTFplayers] 38 4 -166
tag @a remove mg23_nowin