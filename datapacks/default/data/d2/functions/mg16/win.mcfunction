execute as @a[team=mg16-red,scores={mg16.1=1..}] at @s run title @a[scores={mg16=1..}] title ["",{"text":"i","obfuscated":true},{"text":"TeamRed","color":"red","bold":true},{"text":"i","obfuscated":true}]
execute as @a[team=mg16-red,scores={mg16.1=1..}] at @s run title @a[scores={mg16=1..}] subtitle ["",{"text":"wins the assault!","color":"yellow","bold":true}]
execute as @a[scores={mg16=1..}] at @s if entity @a[team=mg16-red,scores={mg16.1=1..}] run summon firework_rocket ~ ~ ~ {LifeTime:15,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:4,Flicker:1,Trail:5,Colors:[I;9843760,9843760,14384446,9843760,9843760,9843760],FadeColors:[I;9843760,9843760,9843760,14384446,9843760,14384446]}]}}}}
execute as @a[team=mg16-red,scores={mg16.1=1..}] at @s run xp add @a[scores={mg16=1..},team=mg16-red] 63 points
execute as @a[team=mg16-blue,scores={mg16.1=1..}] at @s run title @a[scores={mg16=1..}] title ["",{"text":"i","obfuscated":true},{"text":"TeamBlue","color":"blue","bold":true},{"text":"i","obfuscated":true}]
execute as @a[team=mg16-blue,scores={mg16.1=1..}] at @s run title @a[scores={mg16=1..}] subtitle ["",{"text":"wins the assault!","color":"yellow","bold":true}]
execute as @a[scores={mg16=1..}] at @s if entity @a[team=mg16-blue,scores={mg16.1=1..}] run summon firework_rocket ~ ~ ~ {LifeTime:16,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:3,Flicker:1,Trail:1,Colors:[I;3042953,3042953,3029133,3029133,3042953,3029133],FadeColors:[I;3042953,3029133,3042953,3029133,3042953,3029133]}]}}}}
execute as @a[team=mg16-blue,scores={mg16.1=1..}] at @s run xp add @a[scores={mg16=1..},team=mg16-blue] 63 points
execute as @a[scores={mg16.1=1..}] at @s store success score @s 3 run advancement grant @s only mk:achieve_all mg16
scoreboard players add @a[scores={mg16.1=1..,3=1}] 7 1
scoreboard players add @a[tag=PG,scores={mg16.1=1..}] pg1.2 1
fill -284 2 -66 -287 2 -70 air replace redstone_block