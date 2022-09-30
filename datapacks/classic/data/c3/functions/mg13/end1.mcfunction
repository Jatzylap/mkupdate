tag @a[scores={mg13=1..},tag=Drop1,x=222,y=1,z=34,dx=19,dy=3,dz=18] add Win
xp add @a[scores={mg13=1..},tag=Drop1,tag=Win] 9 points
playsound entity.firework_rocket.blast master @a[scores={mg13=1..},tag=Drop1] ~ ~ ~ 100000 0.9
spawnpoint @a[scores={mg13=1..},tag=Drop1] 258 2 48
tellraw @a[scores={mg13=1..},tag=!PG,tag=Drop1] ["",{"selector":"@a[scores={mg13=1..},tag=Drop1,tag=Win]","color":"yellow","bold":true},{"text":" has finished!","color":"yellow","bold":true}]
tellraw @a[scores={mg13=1..},tag=PG] ["",{"selector":"@a[scores={mg13=1..},tag=Drop1,tag=Win]","color":"yellow","bold":true},{"text":" has finished!","color":"yellow","bold":true}]
tp @a[scores={mg13=1..},tag=Drop1,tag=Win] 258 2 48
setblock 263 2 48 stone_button[face=wall,facing=west]
setblock 263 2 48 stone_button[face=wall,facing=west] destroy
execute as @a[scores={mg13=1..},tag=Drop1,tag=Win] at @s run function c3:reset