tellraw @a[scores={mg23=1..}] ["",{"text":"\nBlue Team","color":"blue","bold":true},{"text":"\'s flag has been restored!\n","color":"yellow","bold":true}]
clear @a[scores={mg23=1..}] blue_wool{CTF:1b}
clear @a[scores={mg23=1..}] blue_banner{CTF:1b}
execute in sister_dimension run summon firework_rocket 38 21.5 -178 {LifeTime:25,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1,Trail:1,Colors:[I;3949738],FadeColors:[I;3949738]}]}}}}
particle large_smoke 38 19 -178 0.3 0.3 0.3 0.05 15 normal @a[scores={mg23=1..}]
execute as @a[scores={mg23=1..}] at @s run playsound entity.wither.spawn master @s ~ ~ ~ 1000 2
execute as @a[scores={mg23=1..}] at @s run playsound entity.firework_rocket.twinkle master @s ~ ~ ~ 1000 1.2
setblock -75 25 -122 blue_wool
setblock 38 19 -178 air
fill -75 30 -121 -76 36 -114 blue_wool replace #wool