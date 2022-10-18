#Set
execute if entity @e[name="M@K",limit=1,tag=!mg26_start] run bossbar set tc_progress max 9
execute if entity @e[name="M@K",limit=1,tag=!mg26_start] run bossbar set tc_progress name ["",{"text":"o__ GENERAL __o","bold":true}]
execute if entity @e[name="M@K",limit=1,tag=!mg26_start] run bossbar set tc_progress color blue
tag @e[tag=q,tag=mg26] remove correct
execute as @e[tag=q,tag=mg26] at @s run data merge entity @s {CustomNameVisible:1,NoGravity:1,Small:0,ArmorItems:[{},{},{},{Count:1,id:player_head,tag:{gui:1,SkullOwner:{Id:[I;-1976825215,236734549,-1658047453,463009043],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDNkMDRkYmE1MWY4OTI0OTU4MzRmZjcxYTQyOWE4YTkxMDE1YTVhNzg2Yjg1NmZmZTljMDI0Y2RiNTJmYmM4ZiJ9fX0="}]}}}}]}
particle end_rod 21 1.8 -377 .3 .3 .3 .15 500 force @a[scores={mg26=1..}]
execute in sister_dimension run setblock 21 2 -377 polished_blackstone_pressure_plate keep

#Question counter
scoreboard players add @e[name="M@K",limit=1] mg26.2 1
execute if entity @e[name="M@K",limit=1] as @a[scores={mg26=1..}] at @s run playsound entity.allay.ambient_without_item master @s ~ ~ ~ 1000 0.4
tag @e[name="M@K",limit=1,scores={mg26.2=0..}] add mg26_start

#Trivia
execute if entity @e[tag=mg26_start] run schedule function d4:mg26/ask 1s
execute if score @e[name="M@K",limit=1] mg26.2 matches 1 run tag @e[tag=q3,tag=mg26] add correct
execute if score @e[name="M@K",limit=1] mg26.2 matches 1 as @e[tag=q1,tag=mg26] at @s run data merge entity @s {CustomName:'{"bold":true,"text":"Jappa"}'}
execute if score @e[name="M@K",limit=1] mg26.2 matches 1 as @e[tag=q2,tag=mg26] at @s run data merge entity @s {CustomName:'{"bold":true,"text":"J4TZplayZ"}'}
execute if score @e[name="M@K",limit=1] mg26.2 matches 1 as @e[tag=q3,tag=mg26] at @s run data merge entity @s {CustomName:'{"bold":true,"text":"Jatzylap"}'}
execute if score @e[name="M@K",limit=1] mg26.2 matches 1 as @e[tag=q4,tag=mg26] at @s run data merge entity @s {CustomName:'{"bold":true,"text":"Jabberwock"}'}

execute if score @e[name="M@K",limit=1] mg26.2 matches 2 run tag @e[tag=q4,tag=mg26] add correct
execute if score @e[name="M@K",limit=1] mg26.2 matches 2 as @e[tag=q1,tag=mg26] at @s run data merge entity @s {CustomName:'{"bold":true,"text":"13"}'}
execute if score @e[name="M@K",limit=1] mg26.2 matches 2 as @e[tag=q2,tag=mg26] at @s run data merge entity @s {CustomName:'{"bold":true,"text":"26"}'}
execute if score @e[name="M@K",limit=1] mg26.2 matches 2 as @e[tag=q3,tag=mg26] at @s run data merge entity @s {CustomName:'{"bold":true,"text":"5"}'}
execute if score @e[name="M@K",limit=1] mg26.2 matches 2 as @e[tag=q4,tag=mg26] at @s run data merge entity @s {CustomName:'{"bold":true,"text":"22"}'}

execute if score @e[name="M@K",limit=1] mg26.2 matches 3 run tag @e[tag=q2,tag=mg26] add correct
execute if score @e[name="M@K",limit=1] mg26.2 matches 3 as @e[tag=q1,tag=mg26] at @s run data merge entity @s {CustomName:'{"bold":true,"text":"Branchium"}'}
execute if score @e[name="M@K",limit=1] mg26.2 matches 3 as @e[tag=q2,tag=mg26] at @s run data merge entity @s {CustomName:'{"bold":true,"text":"Chabadupax"}'}
execute if score @e[name="M@K",limit=1] mg26.2 matches 3 as @e[tag=q3,tag=mg26] at @s run data merge entity @s {CustomName:'{"bold":true,"text":"Gamenu"}'}
execute if score @e[name="M@K",limit=1] mg26.2 matches 3 as @e[tag=q4,tag=mg26] at @s run data merge entity @s {CustomName:'{"bold":true,"text":"Shulkonado"}'}

execute if score @e[name="M@K",limit=1] mg26.2 matches 4 run tag @e[tag=q2,tag=mg26] add correct
execute if score @e[name="M@K",limit=1] mg26.2 matches 4 as @e[tag=q1,tag=mg26] at @s run data merge entity @s {CustomName:'{"bold":true,"text":"27"}'}
execute if score @e[name="M@K",limit=1] mg26.2 matches 4 as @e[tag=q2,tag=mg26] at @s run data merge entity @s {CustomName:'{"bold":true,"text":"30"}'}
execute if score @e[name="M@K",limit=1] mg26.2 matches 4 as @e[tag=q3,tag=mg26] at @s run data merge entity @s {CustomName:'{"bold":true,"text":"29"}'}
execute if score @e[name="M@K",limit=1] mg26.2 matches 4 as @e[tag=q4,tag=mg26] at @s run data merge entity @s {CustomName:'{"bold":true,"text":"28"}'}

execute if score @e[name="M@K",limit=1] mg26.2 matches 5 run tag @e[tag=q1,tag=mg26] add correct
execute if score @e[name="M@K",limit=1] mg26.2 matches 5 as @e[tag=q1,tag=mg26] at @s run data merge entity @s {CustomName:'{"bold":true,"text":"16"}'}
execute if score @e[name="M@K",limit=1] mg26.2 matches 5 as @e[tag=q2,tag=mg26] at @s run data merge entity @s {CustomName:'{"bold":true,"text":"19"}'}
execute if score @e[name="M@K",limit=1] mg26.2 matches 5 as @e[tag=q3,tag=mg26] at @s run data merge entity @s {CustomName:'{"bold":true,"text":"18"}'}
execute if score @e[name="M@K",limit=1] mg26.2 matches 5 as @e[tag=q4,tag=mg26] at @s run data merge entity @s {CustomName:'{"bold":true,"text":"17"}'}

execute if score @e[name="M@K",limit=1] mg26.2 matches 6 run tag @e[tag=q1,tag=mg26] add correct
execute if score @e[name="M@K",limit=1] mg26.2 matches 6 as @e[tag=q1,tag=mg26] at @s run data merge entity @s {CustomName:'{"bold":true,"text":"Find Gold Ingots"}'}
execute if score @e[name="M@K",limit=1] mg26.2 matches 6 as @e[tag=q2,tag=mg26] at @s run data merge entity @s {CustomName:'{"bold":true,"text":"Mine Gold Ore"}'}
execute if score @e[name="M@K",limit=1] mg26.2 matches 6 as @e[tag=q3,tag=mg26] at @s run data merge entity @s {CustomName:'{"bold":true,"text":"Find Gold Nuggets"}'}
execute if score @e[name="M@K",limit=1] mg26.2 matches 6 as @e[tag=q4,tag=mg26] at @s run data merge entity @s {CustomName:'{"bold":true,"text":"Smelt Golden Swords"}'}

execute if score @e[name="M@K",limit=1] mg26.2 matches 7 run tag @e[tag=q2,tag=mg26] add correct
execute if score @e[name="M@K",limit=1] mg26.2 matches 7 as @e[tag=q1,tag=mg26] at @s run data merge entity @s {CustomName:'{"bold":true,"text":"Creeper"}'}
execute if score @e[name="M@K",limit=1] mg26.2 matches 7 as @e[tag=q2,tag=mg26] at @s run data merge entity @s {CustomName:'{"bold":true,"text":"Goat"}'}
execute if score @e[name="M@K",limit=1] mg26.2 matches 7 as @e[tag=q3,tag=mg26] at @s run data merge entity @s {CustomName:'{"bold":true,"text":"Ravager"}'}
execute if score @e[name="M@K",limit=1] mg26.2 matches 7 as @e[tag=q4,tag=mg26] at @s run data merge entity @s {CustomName:'{"bold":true,"text":"Zoglin"}'}

execute if score @e[name="M@K",limit=1] mg26.2 matches 8 run tag @e[tag=q3,tag=mg26] add correct
execute if score @e[name="M@K",limit=1] mg26.2 matches 8 as @e[tag=q1,tag=mg26] at @s run data merge entity @s {CustomName:'{"bold":true,"text":"Lucky Crate"}'}
execute if score @e[name="M@K",limit=1] mg26.2 matches 8 as @e[tag=q2,tag=mg26] at @s run data merge entity @s {CustomName:'{"bold":true,"text":"Dungeon Dwellers"}'}
execute if score @e[name="M@K",limit=1] mg26.2 matches 8 as @e[tag=q3,tag=mg26] at @s run data merge entity @s {CustomName:'{"bold":true,"text":"Defend The Villager"}'}
execute if score @e[name="M@K",limit=1] mg26.2 matches 8 as @e[tag=q4,tag=mg26] at @s run data merge entity @s {CustomName:'{"bold":true,"text":"Sky-Team Wars"}'}

execute if score @e[name="M@K",limit=1] mg26.2 matches 9 run tag @e[tag=q1,tag=mg26] add correct
execute if score @e[name="M@K",limit=1] mg26.2 matches 9 as @e[tag=q1,tag=mg26] at @s run data merge entity @s {CustomName:'{"bold":true,"text":"18"}'}
execute if score @e[name="M@K",limit=1] mg26.2 matches 9 as @e[tag=q2,tag=mg26] at @s run data merge entity @s {CustomName:'{"bold":true,"text":"6"}'}
execute if score @e[name="M@K",limit=1] mg26.2 matches 9 as @e[tag=q3,tag=mg26] at @s run data merge entity @s {CustomName:'{"bold":true,"text":"19"}'}
execute if score @e[name="M@K",limit=1] mg26.2 matches 9 as @e[tag=q4,tag=mg26] at @s run data merge entity @s {CustomName:'{"bold":true,"text":"30"}'}