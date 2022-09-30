tellraw @a[scores={mg23=1..}] ["",{"text":"\nRed Team","color":"red","bold":true},{"text":"\'s flag has been restored!\n","color":"yellow","bold":true}]
clear @a[scores={mg23=1..}] red_wool{CTF:1b}
clear @a[scores={mg23=1..}] red_banner{CTF:1b}
execute in sister_dimension run summon firework_rocket -17 21.5 65 {LifeTime:25,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1,Trail:1,Colors:[I;11546150],FadeColors:[I;11546150]}]}}}}
execute in sister_dimension run particle large_smoke -17 19 65 0.3 0.3 0.3 0.05 15 normal @a[scores={mg23=1..}]
execute as @a[scores={mg23=1..}] at @s run playsound entity.wither.spawn master @s ~ ~ ~ 1000 2
execute as @a[scores={mg23=1..}] at @s run playsound entity.firework_rocket.twinkle master @s ~ ~ ~ 1000 1.2
setblock 89 25 -17 red_wool
setblock -17 19 65 air
fill 88 30 -16 89 35 -9 red_wool replace #wool