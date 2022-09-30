tag @a[scores={mg23=1..},tag=CTFplayers] add mg23_nowin
tag @a remove CTFprisoners
bossbar set ctf_countdown name ["",{"text":"Nobody won","color":"yellow","bold":true}]
title @a[scores={mg23=1..},team=!] title [""]
title @a[scores={mg23=1..},team=!] subtitle ["",{"text":"Prisoners released!","color":"yellow"}]
execute as @a[scores={mg23=1..},team=!] at @s run playsound entity.item.break master @s ~ ~ ~ 1000 1.5
execute as @a[scores={mg23=1..},team=!] at @s run playsound entity.wither.spawn master @s ~ ~ ~ 1000 2
setblock 38 19 -178 air
setblock -17 19 65 air
schedule function c2:mg23/delay 2s