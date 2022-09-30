scoreboard players reset * pg1.3
advancement grant @a[x=-329,y=2,z=-11,dx=6,dy=4,dz=6,tag=T0] only mk:plan_party
execute if data block -327 3 -4 {Text3:'{"bold":true,"color":"red","text":"NO"}'} run tag @a[x=-329,y=2,z=-11,dx=6,dy=4,dz=6,tag=T0] add pT0
tag @e[limit=1,name="M@K"] add PGbegin

#SCHEDULE
execute if data block -327 4 -4 {Text3:'{"bold":true,"color":"yellow","text":"Immediately"}'} run schedule function library:event/set 1 append
execute if data block -327 4 -4 {Text3:'{"bold":true,"color":"yellow","text":"15 minutes"}'} run schedule function library:event/set 900s append
execute if data block -327 4 -4 {Text3:'{"bold":true,"color":"yellow","text":"1 game day"}'} run schedule function library:event/set 1d append
execute if data block -327 4 -4 {Text3:'{"bold":true,"color":"yellow","text":"2 game days"}'} run schedule function library:event/set 2d append