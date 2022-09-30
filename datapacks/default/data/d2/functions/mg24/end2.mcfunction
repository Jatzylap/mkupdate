#Check winner
execute as @a[scores={mg24=1..}] at @s run playsound ui.button.click master @s ~ ~ ~ 1000 2
tag @s add mg24_win
execute if entity @a[team=mg24-green,tag=mg24_win] as @a[scores={mg24=1..}] at @s run summon firework_rocket ~ ~ ~ {LifeTime:15,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1,Trail:0,Colors:[I;4304440],FadeColors:[I;4304440]}]}}}}
execute if entity @a[team=mg24-pink,tag=mg24_win] as @a[scores={mg24=1..}] at @s run summon firework_rocket ~ ~ ~ {LifeTime:15,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1,Trail:0,Colors:[I;11751612],FadeColors:[I;11751612]}]}}}}
execute if entity @a[tag=mg24_win] run schedule function d2:mg24/win 2s