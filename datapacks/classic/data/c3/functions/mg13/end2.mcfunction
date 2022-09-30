tag @a[scores={mg13=1..},tag=Drop2,x=254,y=1,z=65,dx=19,dy=3,dz=18] add Win
xp add @a[scores={mg13=1..},tag=Drop2,tag=Win] 12 points
playsound entity.firework_rocket.blast master @a[scores={mg13=1..},tag=Drop2] ~ ~ ~ 100000 0.9
spawnpoint @a[scores={mg13=1..},tag=Drop2] 258 2 48
tellraw @a[scores={mg13=1..},tag=!PG,tag=Drop2] ["",{"selector":"@a[scores={mg13=1..},tag=Drop2,tag=Win]","color":"yellow","bold":true},{"text":" has finished!","color":"yellow","bold":true}]
tellraw @a[scores={mg13=1..},tag=PG] ["",{"selector":"@a[scores={mg13=1..},tag=Drop2,tag=Win]","color":"yellow","bold":true},{"text":" has finished!","color":"yellow","bold":true}]
tp @a[scores={mg13=1..},tag=Drop2,tag=Win] 258 2 48
setblock 253 2 48 spruce_button[face=wall,facing=east]
setblock 253 2 48 spruce_button[face=wall,facing=east] destroy
execute as @a[scores={mg13=1..},tag=Drop2,tag=Win] at @s run function c3:reset