execute unless data block -325 4 -4 {Text1:'{"bold":true,"color":"gray","text":"*Locked*"}'} unless entity @e[tag=PG,tag=pre,nbt={Small:1b}] unless score @e[limit=1,name="M@K"] pg1 matches ..-1 run scoreboard players remove @e[limit=1,name="M@K"] pg1 1
execute unless data block -325 4 -4 {Text1:'{"bold":true,"color":"gray","text":"*Locked*"}'} unless entity @e[tag=PG,tag=pre,nbt={Small:1b}] if score @e[limit=1,name="M@K"] pg1 matches ..-1 run scoreboard players set @e[limit=1,name="M@K"] pg1 100
data merge block -326 5 -4 {Text3:'{"color":"gold","score":{"name":"@e[limit=1,name=\\"M@K\\"]","objective":"pg1"}}'}
execute unless data block -325 4 -4 {Text3:'{"bold":true,"color":"yellow","text":"Game decision"}'} unless data block -325 4 -4 {Text3:'{"bold":true,"color":"yellow","text":"Party vote"}'} if entity @e[tag=PG,tag=pre,nbt={Small:1b}] run title @s actionbar ["",{"text":"Please clear the","color":"yellow","bold":true},{"text":" round selection","color":"green","bold":true},{"text":" first!","color":"yellow","bold":true}]