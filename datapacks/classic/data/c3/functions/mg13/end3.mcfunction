tag @a[scores={mg13=1..},tag=Drop3,x=274,y=1,z=48,dx=19,dy=3,dz=18] add Win
xp add @a[scores={mg13=1..},tag=Drop3,tag=Win] 16 points
playsound entity.firework_rocket.blast master @a[scores={mg13=1..},tag=Drop3] ~ ~ ~ 100000 0.9
spawnpoint @a[scores={mg13=1..},tag=Drop3] 258 2 48
tellraw @a[scores={mg13=1..},tag=!PG,tag=Drop3] ["",{"selector":"@a[scores={mg13=1..},tag=Drop3,tag=Win]","color":"yellow","bold":true},{"text":" has finished!","color":"yellow","bold":true}]
tellraw @a[scores={mg13=1..},tag=PG] ["",{"selector":"@a[scores={mg13=1..},tag=Drop3,tag=Win]","color":"yellow","bold":true},{"text":" has finished!","color":"yellow","bold":true}]
tp @a[scores={mg13=1..},tag=Drop3,tag=Win] 258 2 48
setblock 258 2 43 spruce_button[face=wall,facing=south]
setblock 258 2 43 spruce_button[face=wall,facing=south] destroy
execute as @a[scores={mg13=1..},tag=Drop3,tag=Win] at @s run function c3:reset