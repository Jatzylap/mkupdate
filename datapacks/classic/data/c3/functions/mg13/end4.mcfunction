tag @a[scores={mg13=1..},tag=Drop4,x=307,y=1,z=53,dx=19,dy=3,dz=18] add Win
xp add @a[scores={mg13=1..},tag=Drop4,tag=Win] 19 points
playsound entity.firework_rocket.blast master @a[scores={mg13=1..},tag=Drop4] ~ ~ ~ 100000 0.9
spawnpoint @a[scores={mg13=1..},tag=Drop4] 258 2 48
tellraw @a[scores={mg13=1..},tag=!PG,tag=Drop4] ["",{"selector":"@a[scores={mg13=1..},tag=Drop4,tag=Win]","color":"aqua","bold":true},{"text":" has finished the last ","color":"yellow","bold":true},{"text":"Dropper","color":"gold","bold":true},{"text":" level!","color":"yellow","bold":true}]
tellraw @a[scores={mg13=1..},tag=PG] ["",{"selector":"@a[scores={mg13=1..},tag=Drop4,tag=Win]","color":"aqua","bold":true},{"text":" has finished the last ","color":"yellow","bold":true},{"text":"Dropper","color":"gold","bold":true},{"text":" level!","color":"yellow","bold":true}]
setblock 258 2 43 air destroy
setblock 263 2 48 air destroy
setblock 253 2 48 air destroy
tp @a[scores={mg13=1..},tag=Drop4,tag=Win] 258 2 48
advancement grant @a[scores={mg13=1..},tag=Drop4,tag=Win] only mk:achieve_all mg13
advancement grant @a[scores={mg13=1..},tag=Drop4,tag=Win] only mk:unlock_all mg13
execute as @a[scores={mg13=1..},tag=Drop4,tag=Win] at @s run function c3:reset