#Set
execute if entity @e[name="M@K",limit=1,tag=!mg26_start] run bossbar set tc_progress max 6
execute if entity @e[name="M@K",limit=1,tag=!mg26_start] run bossbar set tc_progress name ["",{"text":"o__ LITERATURE __o","bold":true}]
execute if entity @e[name="M@K",limit=1,tag=!mg26_start] run bossbar set tc_progress color green
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
execute if score @e[name="M@K",limit=1] mg26.2 matches 1 run tag @e[tag=!q1,tag=!q2,tag=q,tag=mg26] add correct
execute if score @e[name="M@K",limit=1] mg26.2 matches 1 as @e[tag=q1,tag=mg26] at @s run data merge entity @s {CustomName:'{"bold":true,"text":"Unknown"}'}
execute if score @e[name="M@K",limit=1] mg26.2 matches 1 as @e[tag=q2,tag=mg26] at @s run data merge entity @s {CustomName:'{"bold":true,"text":"A prophet"}'}
execute if score @e[name="M@K",limit=1] mg26.2 matches 1 as @e[tag=q3,tag=mg26] at @s run data merge entity @s {CustomName:'{"bold":true,"text":"Poly"}'}
execute if score @e[name="M@K",limit=1] mg26.2 matches 1 as @e[tag=q4,tag=mg26] at @s run data merge entity @s {CustomName:'{"bold":true,"text":"Jatzylap"}'}

execute if score @e[name="M@K",limit=1] mg26.2 matches 2 run tag @e[tag=q4,tag=mg26] add correct
execute if score @e[name="M@K",limit=1] mg26.2 matches 2 as @e[tag=q1,tag=mg26] at @s run data merge entity @s {CustomName:'{"bold":true,"text":"A peace treaty"}'}
execute if score @e[name="M@K",limit=1] mg26.2 matches 2 as @e[tag=q2,tag=mg26] at @s run data merge entity @s {CustomName:'{"bold":true,"text":"An offering"}'}
execute if score @e[name="M@K",limit=1] mg26.2 matches 2 as @e[tag=q3,tag=mg26] at @s run data merge entity @s {CustomName:'{"bold":true,"text":"A threat of annexation"}'}
execute if score @e[name="M@K",limit=1] mg26.2 matches 2 as @e[tag=q4,tag=mg26] at @s run data merge entity @s {CustomName:'{"bold":true,"text":"An invasion"}'}

execute if score @e[name="M@K",limit=1] mg26.2 matches 3 run tag @e[tag=q2,tag=mg26] add correct
execute if score @e[name="M@K",limit=1] mg26.2 matches 3 as @e[tag=q1,tag=mg26] at @s run data merge entity @s {CustomName:'{"bold":true,"text":"Nobody"}'}
execute if score @e[name="M@K",limit=1] mg26.2 matches 3 as @e[tag=q2,tag=mg26] at @s run data merge entity @s {CustomName:'{"bold":true,"text":"Players"}'}
execute if score @e[name="M@K",limit=1] mg26.2 matches 3 as @e[tag=q3,tag=mg26] at @s run data merge entity @s {CustomName:'{"bold":true,"text":"Chabadu"}'}
execute if score @e[name="M@K",limit=1] mg26.2 matches 3 as @e[tag=q4,tag=mg26] at @s run data merge entity @s {CustomName:'{"bold":true,"text":"Flowers"}'}

execute if score @e[name="M@K",limit=1] mg26.2 matches 4 run tag @e[tag=q3,tag=mg26] add correct
execute if score @e[name="M@K",limit=1] mg26.2 matches 4 as @e[tag=q1,tag=mg26] at @s run data merge entity @s {CustomName:'{"bold":true,"text":"Extended lifespan"}'}
execute if score @e[name="M@K",limit=1] mg26.2 matches 4 as @e[tag=q2,tag=mg26] at @s run data merge entity @s {CustomName:'{"bold":true,"text":"Human dialect"}'}
execute if score @e[name="M@K",limit=1] mg26.2 matches 4 as @e[tag=q3,tag=mg26] at @s run data merge entity @s {CustomName:'{"bold":true,"text":"Polymorphosis"}'}
execute if score @e[name="M@K",limit=1] mg26.2 matches 4 as @e[tag=q4,tag=mg26] at @s run data merge entity @s {CustomName:'{"bold":true,"text":"High social traits"}'}

execute if score @e[name="M@K",limit=1] mg26.2 matches 5 run tag @e[tag=q1,tag=mg26] add correct
execute if score @e[name="M@K",limit=1] mg26.2 matches 5 as @e[tag=q1,tag=mg26] at @s run data merge entity @s {CustomName:'{"bold":true,"text":"Boredom"}'}
execute if score @e[name="M@K",limit=1] mg26.2 matches 5 as @e[tag=q2,tag=mg26] at @s run data merge entity @s {CustomName:'{"bold":true,"text":"Regret"}'}
execute if score @e[name="M@K",limit=1] mg26.2 matches 5 as @e[tag=q3,tag=mg26] at @s run data merge entity @s {CustomName:'{"bold":true,"text":"Melancoly"}'}
execute if score @e[name="M@K",limit=1] mg26.2 matches 5 as @e[tag=q4,tag=mg26] at @s run data merge entity @s {CustomName:'{"bold":true,"text":"Disgust"}'}

execute if score @e[name="M@K",limit=1] mg26.2 matches 6 run tag @e[tag=q2,tag=mg26] add correct
execute if score @e[name="M@K",limit=1] mg26.2 matches 6 as @e[tag=q1,tag=mg26] at @s run data merge entity @s {CustomName:'{"bold":true,"text":"A decade"}'}
execute if score @e[name="M@K",limit=1] mg26.2 matches 6 as @e[tag=q2,tag=mg26] at @s run data merge entity @s {CustomName:'{"bold":true,"text":"A century"}'}
execute if score @e[name="M@K",limit=1] mg26.2 matches 6 as @e[tag=q3,tag=mg26] at @s run data merge entity @s {CustomName:'{"bold":true,"text":"A millennium"}'}
execute if score @e[name="M@K",limit=1] mg26.2 matches 6 as @e[tag=q4,tag=mg26] at @s run data merge entity @s {CustomName:'{"bold":true,"text":"Since the age of genesis"}'}