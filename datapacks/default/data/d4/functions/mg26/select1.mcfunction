execute as @a[scores={mg26=1..}] at @s run playsound block.beacon.power_select master @s ~ ~ ~ 1000 0
data merge block 21 2 -377 {CustomName:'{"text":"Trivia Chest"}',Lock:"§trivia"}
effect give @a[scores={mg26=1..}] blindness 3 1 true
schedule function d4:mg26/initiate 2s
scoreboard players set @e[name="M@K",limit=1] mg26 1
#Orange
#fill 31 3 -385 31 19 -369 black_concrete
#Blue
fill 13 3 -387 29 19 -387 black_concrete
#Green
fill 29 3 -367 13 19 -367 black_concrete
#Red
fill 11 3 -369 11 19 -385 black_concrete
#Yellow
fill 13 20 -385 29 20 -369 black_concrete