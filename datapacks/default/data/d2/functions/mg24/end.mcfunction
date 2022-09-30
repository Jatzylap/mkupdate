#Check winner
execute as @a[scores={mg24=1..}] at @s run playsound ui.button.click master @s ~ ~ ~ 1000 2
execute if score @r[team=mg24-pink] mg24.7 < @r[team=mg24-green] mg24.7 run tag @a[team=mg24-green,tag=MMplayers] add mg24_win
execute if score @r[team=mg24-pink] mg24.7 > @r[team=mg24-green] mg24.7 run tag @a[team=mg24-pink,tag=MMplayers] add mg24_win
execute unless entity @a[tag=mg24_win] if score @r[team=mg24-pink] mg24.7 = @r[team=mg24-green] mg24.7 run scoreboard players set @s mg24.8 0
execute unless score @e[name="M@K",limit=1] mg24.8 matches 0 if entity @a[team=mg24-green,tag=mg24_win] as @a[scores={mg24=1..}] at @s run summon firework_rocket ~ ~ ~ {LifeTime:15,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1,Trail:0,Colors:[I;4304440],FadeColors:[I;4304440]}]}}}}
execute unless score @e[name="M@K",limit=1] mg24.8 matches 0 if entity @a[team=mg24-pink,tag=mg24_win] as @a[scores={mg24=1..}] at @s run summon firework_rocket ~ ~ ~ {LifeTime:15,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1,Trail:0,Colors:[I;11751612],FadeColors:[I;11751612]}]}}}}
execute if score @e[name="M@K",limit=1] mg24.8 matches 0 as @a[scores={mg24=1..}] at @s run summon firework_rocket ~ ~ ~ {LifeTime:15,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1,Trail:0,Colors:[I;11743532,2437522,4312372,14602026,6719955,15435844],FadeColors:[I;11743532,2437522,4312372,14602026,6719955,15435844]}]}}}}
schedule function d2:mg24/win 2s