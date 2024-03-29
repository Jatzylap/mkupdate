execute as @a[tag=mk.05,scores={interact=1..}] at @s run function library:event/join
#Store
execute if entity @e[tag=PG,tag=pre,nbt={Small:1b}] run setblock -326 3 -4 oak_wall_sign[facing=north]{Text4:'{"clickEvent":{"action":"run_command","value":"/tag @a[x=-329,y=2,z=-11,dx=6,dy=4,dz=6] remove T0"},"text":"---------------"}',Text3:'{"bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/kill @e[tag=PG,nbt={Small:1b}]"},"text":"SELECTION"}',Text2:'{"bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/execute if entity @e[tag=PG,nbt={Small:1b}] run title @s actionbar [\\"\\",{\\"text\\":\\"[\\",\\"color\\":\\"light_purple\\",\\"bold\\":true},{\\"text\\":\\"@\\",\\"color\\":\\"gold\\",\\"obfuscated\\":true},{\\"text\\":\\"]\\",\\"color\\":\\"light_purple\\",\\"bold\\":true},{\\"text\\":\\" Cleared all selected Rounds\\",\\"color\\":\\"green\\",\\"bold\\":true}]"},"text":"CLEAR"}',Text1:'{"text":"---------------"}'}
execute unless entity @e[tag=PG,tag=pre,nbt={Small:1b}] run setblock -326 3 -4 air destroy
execute if entity @a[tag=PG] run data merge block -326 4 -4 {Text1:'{"bold":true,"color":"gray","text":"*Locked*"}'}
execute if entity @a[tag=PG] run data merge block -325 4 -4 {Text1:'{"bold":true,"color":"gray","text":"*Locked*"}'}
bossbar set pg_timer players @a[tag=PG]
execute store result score @e[limit=1,name="M@K"] pg1.3 if entity @a[tag=PG]
execute store result bossbar pg_timer value run scoreboard players get @e[limit=1,name="M@K"] pg1.4
data merge block -326 5 -4 {Text3:'{"score":{"name":"@e[limit=1,name=\\"M@K\\"]","objective":"pg1"},"color":"gold","bold":true}'}

#Simulations
execute if entity @e[tag=s,tag=mg2,tag=PG,nbt={Small:1b}] if score @e[limit=1,name="M@K"] pg1.4 matches 1.. run function library:event/simulate/mg2
execute if entity @e[tag=s,tag=mg3,tag=PG,nbt={Small:1b}] if score @e[limit=1,name="M@K"] pg1.4 matches 1.. run function library:event/simulate/mg3
execute if entity @e[tag=s,tag=mg4,tag=PG,nbt={Small:1b}] if score @e[limit=1,name="M@K"] pg1.4 matches 1.. run function library:event/simulate/mg4
execute if entity @e[tag=s,tag=mg5,tag=PG,nbt={Small:1b}] if score @e[limit=1,name="M@K"] pg1.4 matches 1.. run function library:event/simulate/mg5
execute if entity @e[tag=s,tag=mg6,tag=PG,nbt={Small:1b}] if score @e[limit=1,name="M@K"] pg1.4 matches 1.. run function library:event/simulate/mg6
execute if entity @e[tag=s,tag=mg7,tag=PG,nbt={Small:1b}] if score @e[limit=1,name="M@K"] pg1.4 matches 1.. run function library:event/simulate/mg7
execute if entity @e[tag=s,tag=mg8,tag=PG,nbt={Small:1b}] if score @e[limit=1,name="M@K"] pg1.4 matches 1.. run function library:event/simulate/mg8
execute if entity @e[tag=s,tag=mg9,tag=PG,nbt={Small:1b}] if score @e[limit=1,name="M@K"] pg1.4 matches 1.. run function library:event/simulate/mg9
execute if entity @e[tag=s,tag=mg10,tag=PG,nbt={Small:1b}] if score @e[limit=1,name="M@K"] pg1.4 matches 1.. run function library:event/simulate/mg10
execute if entity @e[tag=s,tag=mg11,tag=PG,nbt={Small:1b}] if score @e[limit=1,name="M@K"] pg1.4 matches 1.. run function library:event/simulate/mg11
execute if entity @e[tag=s,tag=mg13,tag=PG,nbt={Small:1b}] if score @e[limit=1,name="M@K"] pg1.4 matches 1.. run function library:event/simulate/mg13
execute if entity @e[tag=s,tag=mg16,tag=PG,nbt={Small:1b}] if score @e[limit=1,name="M@K"] pg1.4 matches 1.. run function library:event/simulate/mg16
execute if entity @e[tag=s,tag=mg17,tag=PG,nbt={Small:1b}] if score @e[limit=1,name="M@K"] pg1.4 matches 1.. run function library:event/simulate/mg17
execute if entity @e[tag=s,tag=mg18,tag=PG,nbt={Small:1b}] if score @e[limit=1,name="M@K"] pg1.4 matches 1.. run function library:event/simulate/mg18
execute if entity @e[tag=s,tag=mg20,tag=PG,nbt={Small:1b}] if score @e[limit=1,name="M@K"] pg1.4 matches 1.. run function library:event/simulate/mg20
execute if entity @e[tag=s,tag=mg23,tag=PG,nbt={Small:1b}] if score @e[limit=1,name="M@K"] pg1.4 matches 1.. run function library:event/simulate/mg23
execute if entity @e[tag=s,tag=mg24,tag=PG,nbt={Small:1b}] if score @e[limit=1,name="M@K"] pg1.4 matches 1.. run function library:event/simulate/mg24
execute if entity @e[tag=s,tag=mg25,tag=PG,nbt={Small:1b}] if score @e[limit=1,name="M@K"] pg1.4 matches 1.. run function library:event/simulate/mg25
execute if entity @e[tag=s,tag=mgc,tag=PG,nbt={Small:1b}] if score @e[limit=1,name="M@K"] pg1.4 matches 1.. run function library:game/simulation

#Rounds
execute as @a[tag=T0] at @s unless entity @e[tag=PG,nbt={Small:1b}] run scoreboard players set @s pg1.1 0
execute as @e[limit=1,name="M@K"] at @s unless entity @s[tag=PGresults] if score @s pg1.4 matches ..0 run function library:event/next
execute as @e[limit=1,name="M@K"] at @s if score @s pg1.3 matches 2.. if score @s pg1.4 matches 50 run tag @s add PGpause
execute as @e[limit=1,name="M@K"] at @s if data block -325 4 -4 {Text3:'{"bold":true,"color":"yellow","text":"Party vote"}'} if score @s pg1.3 matches 2.. if score @s pg1.4 matches 600 run tag @s add PGvote
execute as @e[limit=1,name="M@K"] at @s unless data block -325 4 -4 {Text3:'{"bold":true,"color":"yellow","text":"Party vote"}'} if score @s pg1.3 matches 2.. if score @s pg1.4 matches 1.. run scoreboard players remove @s pg1.4 1
execute as @e[limit=1,name="M@K"] at @s if data block -325 4 -4 {Text3:'{"bold":true,"color":"yellow","text":"Party vote"}'} unless entity @a[tag=PG,tag=!v0ted] if score @s pg1.3 matches 2.. if score @s pg1.4 matches 1.. run scoreboard players remove @s pg1.4 1
execute as @e[limit=1,name="M@K"] at @s if score @s pg1.3 matches ..1 if score @s pg1.4 matches 1.. run scoreboard players set @s pg1.4 600
execute as @e[limit=1,name="M@K"] at @s if score @s pg1.3 matches ..1 if score @s pg1.4 matches 1.. run bossbar set pg_timer name ["",{"text":"Awaiting more players...","color":"green","bold":true}]
execute as @e[limit=1,name="M@K"] at @s if data block -325 4 -4 {Text3:'{"bold":true,"color":"yellow","text":"Party vote"}'} if score @s pg1.3 matches 2.. if score @s pg1.4 matches 100..600 run bossbar set pg_timer name ["",{"text":"Vote a minigame!","color":"yellow","bold":true},{"text":" - ","color":"aqua","bold":true},{"text":"Tip: ","color":"green","bold":true},{"text":"Use the ","color":"aqua"},{"text":"Ender chests","color":"light_purple"},{"text":"!","color":"aqua"}]

execute if score @e[limit=1,name="M@K"] pg1.4 matches 99 run scoreboard players set #highscore pg1.2 0
execute if score @e[limit=1,name="M@K"] pg1.4 matches 99 run scoreboard players operation #highscore pg1.2 > @e[tag=PG,nbt={Small:1b}] pg1.2
execute if score @e[limit=1,name="M@K"] pg1.4 matches 99 run scoreboard players operation @e[tag=PG,nbt={Small:1b}] pg1.2 -= #highscore pg1.2
execute as @e[limit=1,name="M@K"] at @s if score @s pg1.3 matches 2.. if score @s pg1.4 matches 99 run bossbar set pg_timer name ["",{"text":"Starting round...","color":"gold","bold":true}]
execute if score @e[limit=1,name="M@K"] pg1.4 matches 99 if data block -325 4 -4 {Text3:'{"bold":true,"color":"yellow","text":"Game decision"}'} run function library:event/random
execute if score @e[limit=1,name="M@K"] pg1.4 matches 99 if data block -325 4 -4 {Text2:'{"bold":true,"color":"yellow","text":"In order"}'} run tag @e[limit=1,tag=PG,tag=!pre,nbt={Small:1b}] add s
execute if score @e[limit=1,name="M@K"] pg1.4 matches 99 if data block -325 4 -4 {Text3:'{"bold":true,"color":"yellow","text":"Party vote"}'} run tag @e[limit=1,tag=PG,nbt={Small:1b},scores={pg1.2=1}] add s
execute if score @e[limit=1,name="M@K"] pg1.4 matches 99 if data block -325 4 -4 {Text3:'{"bold":true,"color":"yellow","text":"Party vote"}'} unless entity @e[tag=PG,nbt={Small:1b},tag=s] run tag @e[sort=random,tag=!pre,limit=1,tag=PG,nbt={Small:1b}] add s
execute if score @e[limit=1,name="M@K"] pg1.4 matches 99 if data block -325 4 -4 {Text2:'{"bold":true,"color":"yellow","text":"Random"}'} run tag @e[sort=random,limit=1,tag=PG,tag=!pre,nbt={Small:1b}] add s
execute as @e[limit=1,name="M@K",tag=PGpause] at @s if score @s pg1.5 matches ..0 run function library:event/results

#UI
#back
execute as @a[tag=!v0ted] at @s if entity @e[name="M@K",limit=1,tag=PGvote] unless data entity @s EnderItems[{Slot:9b}] run playsound entity.item_frame.rotate_item master @s[tag=PG,tag=!page2,tag=!page3,tag=!page4] ~ ~ ~ 1 2
execute as @a[tag=!v0ted] at @s if entity @e[name="M@K",limit=1,tag=PGvote] unless data entity @s EnderItems[{Slot:9b}] run playsound entity.villager.work_librarian master @s[tag=PG,tag=page2] ~ ~ ~ 1
execute as @a[tag=!v0ted] at @s if entity @e[name="M@K",limit=1,tag=PGvote] unless data entity @s EnderItems[{Slot:9b}] run tag @s[tag=PG,tag=page2] remove page2
execute as @a[tag=!v0ted] at @s if entity @e[name="M@K",limit=1,tag=PGvote] unless data entity @s EnderItems[{Slot:9b}] run tag @s[tag=PG,tag=page3] add page2
execute as @a[tag=!v0ted] at @s if entity @e[name="M@K",limit=1,tag=PGvote] unless data entity @s EnderItems[{Slot:9b}] run playsound entity.villager.work_librarian master @s[tag=PG,tag=page3] ~ ~ ~ 1
execute as @a[tag=!v0ted] at @s if entity @e[name="M@K",limit=1,tag=PGvote] unless data entity @s EnderItems[{Slot:9b}] run tag @s[tag=PG,tag=page3] remove page3
execute as @a[tag=!v0ted] at @s if entity @e[name="M@K",limit=1,tag=PGvote] unless data entity @s EnderItems[{Slot:9b}] run tag @s[tag=PG,tag=page4] add page3
execute as @a[tag=!v0ted] at @s if entity @e[name="M@K",limit=1,tag=PGvote] unless data entity @s EnderItems[{Slot:9b}] run playsound entity.villager.work_librarian master @s[tag=PG,tag=page4] ~ ~ ~ 1
execute as @a[tag=!v0ted] at @s if entity @e[name="M@K",limit=1,tag=PGvote] unless data entity @s EnderItems[{Slot:9b}] run tag @s[tag=PG,tag=page4] remove page4
execute as @a[tag=!v0ted] at @s if entity @e[name="M@K",limit=1,tag=PGvote] unless data entity @s EnderItems[{Slot:9b}] run tag @s[tag=PG,tag=page5] add page4
execute as @a[tag=!v0ted] at @s if entity @e[name="M@K",limit=1,tag=PGvote] unless data entity @s EnderItems[{Slot:9b}] run playsound entity.villager.work_librarian master @s[tag=PG,tag=page5] ~ ~ ~ 1
execute as @a[tag=!v0ted] at @s if entity @e[name="M@K",limit=1,tag=PGvote] unless data entity @s EnderItems[{Slot:9b}] run tag @s[tag=PG,tag=page5] remove page5

#next
execute as @a[tag=!v0ted] at @s if entity @e[name="M@K",limit=1,tag=PGvote] unless data entity @s EnderItems[{Slot:17b}] run tag @s[tag=PG,tag=page4,tag=!page5] add page5
execute as @a[tag=!v0ted] at @s if entity @e[name="M@K",limit=1,tag=PGvote] unless data entity @s EnderItems[{Slot:17b}] run playsound entity.item_frame.rotate_item master @s[tag=PG,tag=!page4,tag=page5] ~ ~ ~ 1 2
execute as @a[tag=!v0ted] at @s if entity @e[name="M@K",limit=1,tag=PGvote] unless data entity @s EnderItems[{Slot:17b}] run playsound entity.villager.work_librarian master @s[tag=PG,tag=page4,tag=page5] ~ ~ ~ 1
execute as @a[tag=!v0ted] at @s if entity @e[name="M@K",limit=1,tag=PGvote] unless data entity @s EnderItems[{Slot:17b}] run tag @s[tag=PG,tag=page3,tag=!page4] add page4
execute as @a[tag=!v0ted] at @s if entity @e[name="M@K",limit=1,tag=PGvote] unless data entity @s EnderItems[{Slot:17b}] run playsound entity.item_frame.rotate_item master @s[tag=PG,tag=!page3,tag=page4] ~ ~ ~ 1 2
execute as @a[tag=!v0ted] at @s if entity @e[name="M@K",limit=1,tag=PGvote] unless data entity @s EnderItems[{Slot:17b}] run playsound entity.villager.work_librarian master @s[tag=PG,tag=page3,tag=page4] ~ ~ ~ 1
execute as @a[tag=!v0ted] at @s if entity @e[name="M@K",limit=1,tag=PGvote] unless data entity @s EnderItems[{Slot:17b}] run tag @s[tag=PG,tag=page2,tag=!page3] add page3
execute as @a[tag=!v0ted] at @s if entity @e[name="M@K",limit=1,tag=PGvote] unless data entity @s EnderItems[{Slot:17b}] run playsound entity.item_frame.rotate_item master @s[tag=PG,tag=!page2,tag=page3] ~ ~ ~ 1 2
execute as @a[tag=!v0ted] at @s if entity @e[name="M@K",limit=1,tag=PGvote] unless data entity @s EnderItems[{Slot:17b}] run playsound entity.villager.work_librarian master @s[tag=PG,tag=page2,tag=page3] ~ ~ ~ 1
execute as @a[tag=!v0ted] at @s if entity @e[name="M@K",limit=1,tag=PGvote] unless data entity @s EnderItems[{Slot:17b}] run tag @s[tag=PG,tag=page3] remove page2
execute as @a[tag=!v0ted] at @s if entity @e[name="M@K",limit=1,tag=PGvote] unless data entity @s EnderItems[{Slot:17b}] run tag @s[tag=PG,tag=page4] remove page3
execute as @a[tag=!v0ted] at @s if entity @e[name="M@K",limit=1,tag=PGvote] unless data entity @s EnderItems[{Slot:17b}] run tag @s[tag=PG,tag=page5] remove page4
execute as @a[tag=!v0ted] at @s if entity @e[name="M@K",limit=1,tag=PGvote] unless data entity @s EnderItems[{Slot:17b}] run playsound entity.villager.work_librarian master @s[tag=PG,tag=!page2,tag=!page3,tag=!page4,tag=!page5] ~ ~ ~ 1
execute as @a[tag=!v0ted] at @s if entity @e[name="M@K",limit=1,tag=PGvote] unless data entity @s EnderItems[{Slot:17b}] run tag @s[tag=PG,tag=!page2,tag=!page3,tag=!page4,tag=!page5] add page2

#vote
execute if entity @e[name="M@K",limit=1,tag=PGvote] as @a[tag=PG,tag=!v0ted] at @s unless data entity @s EnderItems[{Slot:0b}] run function library:event/vote
execute if entity @e[name="M@K",limit=1,tag=PGvote] as @a[tag=PG,tag=!v0ted] at @s unless data entity @s EnderItems[{Slot:8b}] run function library:event/vote
execute if entity @e[name="M@K",limit=1,tag=PGvote] as @a[tag=PG,tag=!v0ted] at @s unless data entity @s EnderItems[{Slot:18b}] run function library:event/vote
execute if entity @e[name="M@K",limit=1,tag=PGvote] as @a[tag=PG,tag=!v0ted,tag=!page5] at @s unless data entity @s EnderItems[{Slot:26b}] run function library:event/vote

#p1
execute as @a[tag=!v0ted] at @s if entity @e[name="M@K",limit=1,tag=PGvote] unless entity @e[tag=PG,nbt={Small:1b},tag=mg2] run item replace entity @s[tag=PG,tag=!page2,tag=!page3,tag=!page4,tag=!page5] enderchest.0 with filled_map{gui:1,HideFlags:61,display:{Lore:['{"text":"","extra":[{"text":"Vote!","color":"white"},{"text":" x","color":"red","bold":true}],"italic":false}'],Name:'{"text":"","extra":[{"text":"Bed","color":"red","bold":true},{"text":" / ","color":"gold","bold":true},{"text":"Egg","color":"aqua","bold":true},{"text":"Wars","color":"gold","bold":true}],"italic":false}'}}
execute as @a[tag=!v0ted] at @s if entity @e[name="M@K",limit=1,tag=PGvote] if entity @e[tag=PG,nbt={Small:1b},tag=mg2] run loot replace entity @s[tag=PG,tag=!page2,tag=!page3,tag=!page4,tag=!page5] enderchest.0 loot ui/vote_mg2
execute as @a[tag=!v0ted] at @s if entity @e[name="M@K",limit=1,tag=PGvote] unless entity @e[tag=PG,nbt={Small:1b},tag=mg3] run item replace entity @s[tag=PG,tag=!page2,tag=!page3,tag=!page4,tag=!page5] enderchest.8 with filled_map{gui:1,HideFlags:61,display:{Lore:['{"text":"","extra":[{"text":"Vote!","color":"white"},{"text":" x","color":"red","bold":true}],"italic":false}'],Name:'{"text":"","extra":[{"text":"Spleef","bold":true}],"italic":false}'}}
execute as @a[tag=!v0ted] at @s if entity @e[name="M@K",limit=1,tag=PGvote] if entity @e[tag=PG,nbt={Small:1b},tag=mg3] run loot replace entity @s[tag=PG,tag=!page2,tag=!page3,tag=!page4,tag=!page5] enderchest.8 loot ui/vote_mg3
execute as @a[tag=!v0ted] at @s if entity @e[name="M@K",limit=1,tag=PGvote] unless entity @e[tag=PG,nbt={Small:1b},tag=mg5] run item replace entity @s[tag=PG,tag=!page2,tag=!page3,tag=!page4,tag=!page5] enderchest.18 with filled_map{gui:1,HideFlags:61,display:{Lore:['{"text":"","extra":[{"text":"Vote!","color":"white"},{"text":" x","color":"red","bold":true}],"italic":false}'],Name:'{"text":"","extra":[{"text":"Avalanche","color":"aqua","bold":true}],"italic":false}'}}
execute as @a[tag=!v0ted] at @s if entity @e[name="M@K",limit=1,tag=PGvote] if entity @e[tag=PG,nbt={Small:1b},tag=mg5] run loot replace entity @s[tag=PG,tag=!page2,tag=!page3,tag=!page4,tag=!page5] enderchest.18 loot ui/vote_mg5
execute as @a[tag=!v0ted] at @s if entity @e[name="M@K",limit=1,tag=PGvote] unless entity @e[tag=PG,nbt={Small:1b},tag=mg6] run item replace entity @s[tag=PG,tag=!page2,tag=!page3,tag=!page4,tag=!page5] enderchest.26 with filled_map{gui:1,HideFlags:61,display:{Lore:['{"text":"","extra":[{"text":"Vote!","color":"white"},{"text":" x","color":"red","bold":true}],"italic":false}'],Name:'{"text":"","extra":[{"text":"Volcano","color":"gold","bold":true},{"text":" Floor","color":"yellow","bold":true}],"italic":false}'}}
execute as @a[tag=!v0ted] at @s if entity @e[name="M@K",limit=1,tag=PGvote] if entity @e[tag=PG,nbt={Small:1b},tag=mg6] run loot replace entity @s[tag=PG,tag=!page2,tag=!page3,tag=!page4,tag=!page5] enderchest.26 loot ui/vote_mg6

execute as @a[tag=!v0ted] at @s if entity @e[name="M@K",limit=1,tag=PGvote] run item replace entity @s[tag=PG,tag=!page2,tag=!page3,tag=!page4,tag=!page5] enderchest.9 with gray_stained_glass_pane{gui:1,HideFlags:61,display:{Name:'{"text":"Previous Page","bold":true}'}}
execute as @a[tag=!v0ted] at @s if entity @e[name="M@K",limit=1,tag=PGvote] run item replace entity @s[tag=PG,tag=!page2,tag=!page3,tag=!page4,tag=!page5] enderchest.17 with lime_stained_glass_pane{gui:1,HideFlags:61,display:{Name:'{"text":"Next Page >>","color":"green","bold":true}'}}

#p2
execute as @a[tag=!v0ted] at @s if entity @e[name="M@K",limit=1,tag=PGvote] unless entity @e[tag=PG,nbt={Small:1b},tag=mg7] run item replace entity @s[tag=PG,tag=page2] enderchest.0 with filled_map{gui:1,HideFlags:61,display:{Lore:['{"text":"","extra":[{"text":"Vote!","color":"white"},{"text":" x","color":"red","bold":true}],"italic":false}'],Name:'{"text":"","extra":[{"text":"TNT","color":"red","bold":true},{"text":" Run","color":"yellow","bold":true}],"italic":false}'}}
execute as @a[tag=!v0ted] at @s if entity @e[name="M@K",limit=1,tag=PGvote] if entity @e[tag=PG,nbt={Small:1b},tag=mg7] run loot replace entity @s[tag=PG,tag=page2] enderchest.0 loot ui/vote_mg7
execute as @a[tag=!v0ted] at @s if entity @e[name="M@K",limit=1,tag=PGvote] unless entity @e[tag=PG,nbt={Small:1b},tag=mg8] run item replace entity @s[tag=PG,tag=page2] enderchest.8 with filled_map{gui:1,HideFlags:61,display:{Lore:['{"text":"","extra":[{"text":"Vote!","color":"white"},{"text":" x","color":"red","bold":true}],"italic":false}'],Name:'{"text":"","extra":[{"text":"Sky","color":"aqua","bold":true},{"text":"Wars","color":"gold","bold":true}],"italic":false}'}}
execute as @a[tag=!v0ted] at @s if entity @e[name="M@K",limit=1,tag=PGvote] if entity @e[tag=PG,nbt={Small:1b},tag=mg8] run loot replace entity @s[tag=PG,tag=page2] enderchest.8 loot ui/vote_mg8
execute as @a[tag=!v0ted] at @s if entity @e[name="M@K",limit=1,tag=PGvote] unless entity @e[tag=PG,nbt={Small:1b},tag=mg9] run item replace entity @s[tag=PG,tag=page2] enderchest.18 with filled_map{gui:1,HideFlags:61,display:{Lore:['{"text":"","extra":[{"text":"Vote!","color":"white"},{"text":" x","color":"red","bold":true}],"italic":false}'],Name:'{"text":"","extra":[{"text":"TNT","color":"red","bold":true},{"text":" Tag","color":"aqua","bold":true}],"italic":false}'}}
execute as @a[tag=!v0ted] at @s if entity @e[name="M@K",limit=1,tag=PGvote] if entity @e[tag=PG,nbt={Small:1b},tag=mg9] run loot replace entity @s[tag=PG,tag=page2] enderchest.18 loot ui/vote_mg9
execute as @a[tag=!v0ted] at @s if entity @e[name="M@K",limit=1,tag=PGvote] unless entity @e[tag=PG,nbt={Small:1b},tag=mg10] run item replace entity @s[tag=PG,tag=!page3,tag=page2] enderchest.26 with filled_map{gui:1,HideFlags:61,display:{Lore:['{"text":"","extra":[{"text":"Vote!","color":"white"},{"text":" x","color":"red","bold":true}],"italic":false}'],Name:'{"text":"","extra":[{"text":"Colour","bold":true},{"text":" Match","color":"light_purple","bold":true}],"italic":false}'}}
execute as @a[tag=!v0ted] at @s if entity @e[name="M@K",limit=1,tag=PGvote] if entity @e[tag=PG,nbt={Small:1b},tag=mg10] run loot replace entity @s[tag=PG,tag=page2] enderchest.26 loot ui/vote_mg10

execute as @a[tag=!v0ted] at @s if entity @e[name="M@K",limit=1,tag=PGvote] run item replace entity @s[tag=PG,tag=page2] enderchest.9 with lime_stained_glass_pane{gui:1,HideFlags:61,display:{Name:'{"text":"<< Previous Page","color":"green","bold":true}'}}
execute as @a[tag=!v0ted] at @s if entity @e[name="M@K",limit=1,tag=PGvote] run item replace entity @s[tag=PG,tag=page2] enderchest.17 with lime_stained_glass_pane{gui:1,HideFlags:61,display:{Name:'{"text":"Next Page >>","color":"green","bold":true}'}}

#p3
execute as @a[tag=!v0ted] at @s if entity @e[name="M@K",limit=1,tag=PGvote] unless entity @e[tag=PG,nbt={Small:1b},tag=mg11] run item replace entity @s[tag=PG,tag=page3] enderchest.0 with filled_map{gui:1,HideFlags:61,display:{Lore:['{"text":"","extra":[{"text":"Vote!","color":"white"},{"text":" x","color":"red","bold":true}],"italic":false}'],Name:'{"text":"","extra":[{"text":"Lucky","color":"gold","bold":true},{"text":" Crate","color":"yellow","bold":true}],"italic":false}'}}
execute as @a[tag=!v0ted] at @s if entity @e[name="M@K",limit=1,tag=PGvote] if entity @e[tag=PG,nbt={Small:1b},tag=mg11] run loot replace entity @s[tag=PG,tag=page3] enderchest.0 loot ui/vote_mg11
execute as @a[tag=!v0ted] at @s if entity @e[name="M@K",limit=1,tag=PGvote] unless entity @e[tag=PG,nbt={Small:1b},tag=mg13] run item replace entity @s[tag=PG,tag=page3] enderchest.8 with filled_map{gui:1,HideFlags:61,display:{Lore:['{"text":"","extra":[{"text":"Vote!","color":"white"},{"text":" x","color":"red","bold":true}],"italic":false}'],Name:'{"text":"","extra":[{"text":"Dropper","color":"green","bold":true}],"italic":false}'}}
execute as @a[tag=!v0ted] at @s if entity @e[name="M@K",limit=1,tag=PGvote] if entity @e[tag=PG,nbt={Small:1b},tag=mg13] run loot replace entity @s[tag=PG,tag=page3] enderchest.8 loot ui/vote_mg13
execute as @a[tag=!v0ted] at @s if entity @e[name="M@K",limit=1,tag=PGvote] unless entity @e[tag=PG,nbt={Small:1b},tag=mg16] run item replace entity @s[tag=PG,tag=page3] enderchest.18 with filled_map{gui:1,HideFlags:61,display:{Lore:['{"text":"","extra":[{"text":"Vote!","color":"white"},{"text":" x","color":"red","bold":true}],"italic":false}'],Name:'{"text":"","extra":[{"text":"Gold","color":"gold","bold":true},{"text":"Wars","color":"red","bold":true}],"italic":false}'}}
execute as @a[tag=!v0ted] at @s if entity @e[name="M@K",limit=1,tag=PGvote] if entity @e[tag=PG,nbt={Small:1b},tag=mg16] run loot replace entity @s[tag=PG,tag=page3] enderchest.18 loot ui/vote_mg16
execute as @a[tag=!v0ted] at @s if entity @e[name="M@K",limit=1,tag=PGvote] unless entity @e[tag=PG,nbt={Small:1b},tag=mg18] run item replace entity @s[tag=PG,tag=page3] enderchest.26 with filled_map{gui:1,HideFlags:61,display:{Lore:['{"text":"","extra":[{"text":"Vote!","color":"white"},{"text":" x","color":"red","bold":true}],"italic":false}'],Name:'{"text":"","extra":[{"text":"R","color":"red","bold":true},{"text":"A","color":"gold","bold":true},{"text":"I","color":"yellow","bold":true},{"text":"N","color":"green","bold":true},{"text":"B","color":"aqua","bold":true},{"text":"O","color":"light_purple","bold":true},{"text":"W","color":"white","bold":true},{"text":" Parkour","color":"white","bold":true}],"italic":false}'}}
execute as @a[tag=!v0ted] at @s if entity @e[name="M@K",limit=1,tag=PGvote] if entity @e[tag=PG,nbt={Small:1b},tag=mg18] run loot replace entity @s[tag=PG,tag=page3] enderchest.26 loot ui/vote_mg18

execute as @a[tag=!v0ted] at @s if entity @e[name="M@K",limit=1,tag=PGvote] run item replace entity @s[tag=PG,tag=page3] enderchest.9 with lime_stained_glass_pane{gui:1,HideFlags:61,display:{Name:'{"text":"<< Previous Page","color":"green","bold":true}'}}
execute as @a[tag=!v0ted] at @s if entity @e[name="M@K",limit=1,tag=PGvote] run item replace entity @s[tag=PG,tag=page3] enderchest.17 with lime_stained_glass_pane{gui:1,HideFlags:61,display:{Name:'{"text":"Next Page >>","color":"green","bold":true}'}}

#p4
execute as @a[tag=!v0ted] at @s if entity @e[name="M@K",limit=1,tag=PGvote] unless entity @e[tag=PG,nbt={Small:1b},tag=mgc] run item replace block -321 4 -5 container.0 with filled_map{gui:1,HideFlags:61,display:{Lore:['{"text":"","extra":[{"text":"Vote!","color":"white"},{"text":" x","color":"red","bold":true}],"italic":false}'],Name:'{"text":"","italic":false}'}}
execute as @a[tag=!v0ted] at @s if entity @e[name="M@K",limit=1,tag=PGvote] if entity @e[tag=PG,nbt={Small:1b},tag=mgc] run loot replace block -321 4 -5 container.0 loot ui/vote_mgc
execute as @a[tag=!v0ted] at @s if entity @e[name="M@K",limit=1,tag=PGvote] run data modify block -321 4 -5 Items[0].tag.display.Name set from block -299 7 46 Text2
execute as @a[tag=!v0ted] at @s if entity @e[name="M@K",limit=1,tag=PGvote] run item replace entity @s[tag=PG,tag=page4] enderchest.8 from block -321 4 -5 container.0
execute as @a[tag=!v0ted] at @s if entity @e[name="M@K",limit=1,tag=PGvote] unless entity @e[tag=PG,nbt={Small:1b},tag=mg4] run item replace entity @s[tag=PG,tag=page4] enderchest.0 with filled_map{gui:1,HideFlags:61,display:{Lore:['{"text":"","extra":[{"text":"Vote!","color":"white"},{"text":" x","color":"red","bold":true}],"italic":false}'],Name:'{"text":"","extra":[{"text":"Fireball","color":"yellow","bold":true},{"text":" Dodge","color":"red","bold":true}],"italic":false}'}}
execute as @a[tag=!v0ted] at @s if entity @e[name="M@K",limit=1,tag=PGvote] if entity @e[tag=PG,nbt={Small:1b},tag=mg4] run loot replace entity @s[tag=PG,tag=page4] enderchest.0 loot ui/vote_mg4
execute as @a[tag=!v0ted] at @s if entity @e[name="M@K",limit=1,tag=PGvote] unless entity @e[tag=PG,nbt={Small:1b},tag=mg20] run item replace entity @s[tag=PG,tag=page4] enderchest.18 with filled_map{gui:1,HideFlags:61,display:{Lore:['{"text":"","extra":[{"text":"Vote!","color":"white"},{"text":" x","color":"red","bold":true}],"italic":false}'],Name:'{"text":"","extra":[{"text":"The","color":"dark_green","bold":true},{"text":" Labyrinth","color":"green","bold":true}],"italic":false}'}}
execute as @a[tag=!v0ted] at @s if entity @e[name="M@K",limit=1,tag=PGvote] if entity @e[tag=PG,nbt={Small:1b},tag=mg20] run loot replace entity @s[tag=PG,tag=page4] enderchest.18 loot ui/vote_mg20
execute as @a[tag=!v0ted] at @s if entity @e[name="M@K",limit=1,tag=PGvote] unless entity @e[tag=PG,nbt={Small:1b},tag=mg17] run item replace entity @s[tag=PG,tag=page4] enderchest.26 with filled_map{gui:1,HideFlags:61,display:{Lore:['{"text":"","extra":[{"text":"Vote!","color":"white"},{"text":" x","color":"red","bold":true}],"italic":false}'],Name:'{"text":"","extra":[{"text":"Sky","color":"aqua","bold":true},{"text":"Parkour","bold":true}],"italic":false}'}}
execute as @a[tag=!v0ted] at @s if entity @e[name="M@K",limit=1,tag=PGvote] if entity @e[tag=PG,nbt={Small:1b},tag=mg17] run loot replace entity @s[tag=PG,tag=page4] enderchest.26 loot ui/vote_mg17

execute as @a[tag=!v0ted] at @s if entity @e[name="M@K",limit=1,tag=PGvote] run item replace entity @s[tag=PG,tag=page4] enderchest.9 with lime_stained_glass_pane{gui:1,HideFlags:61,display:{Name:'{"text":"<< Previous Page","color":"green","bold":true}'}}
execute as @a[tag=!v0ted] at @s if entity @e[name="M@K",limit=1,tag=PGvote] run item replace entity @s[tag=PG,tag=page4] enderchest.17 with lime_stained_glass_pane{gui:1,HideFlags:61,display:{Name:'{"text":"Next Page >>","color":"green","bold":true}'}}

#p5
execute as @a[tag=!v0ted] at @s if entity @e[name="M@K",limit=1,tag=PGvote] unless entity @e[tag=PG,nbt={Small:1b},tag=mg23] run item replace entity @s[tag=PG,tag=page5] enderchest.0 with filled_map{gui:1,HideFlags:61,display:{Lore:['{"text":"","extra":[{"text":"Vote!","color":"white"},{"text":" x","color":"red","bold":true}],"italic":false}'],Name:'{"text":"","extra":[{"text":"Capture the Flag","color":"aqua","bold":true}],"italic":false}'}}
execute as @a[tag=!v0ted] at @s if entity @e[name="M@K",limit=1,tag=PGvote] if entity @e[tag=PG,nbt={Small:1b},tag=mg23] run loot replace entity @s[tag=PG,tag=page5] enderchest.0 loot ui/vote_mg23
execute as @a[tag=!v0ted] at @s if entity @e[name="M@K",limit=1,tag=PGvote] unless entity @e[tag=PG,nbt={Small:1b},tag=mg24] run item replace entity @s[tag=PG,tag=page5] enderchest.8 with filled_map{gui:1,HideFlags:61,display:{Lore:['{"text":"","extra":[{"text":"Vote!","color":"white"},{"text":" x","color":"red","bold":true}],"italic":false}'],Name:'{"text":"","extra":[{"text":"Missile Madness","color":"red","bold":true}],"italic":false}'}}
execute as @a[tag=!v0ted] at @s if entity @e[name="M@K",limit=1,tag=PGvote] if entity @e[tag=PG,nbt={Small:1b},tag=mg24] run loot replace entity @s[tag=PG,tag=page5] enderchest.8 loot ui/vote_mg24
execute as @a[tag=!v0ted] at @s if entity @e[name="M@K",limit=1,tag=PGvote] unless entity @e[tag=PG,nbt={Small:1b},tag=mg25] run item replace entity @s[tag=PG,tag=page5] enderchest.18 with filled_map{gui:1,HideFlags:61,display:{Lore:['{"text":"","extra":[{"text":"Vote!","color":"white"},{"text":" x","color":"red","bold":true}],"italic":false}'],Name:'{"text":"","extra":[{"text":"Royal Game of Ur","color":"yellow","bold":true}],"italic":false}'}}
execute as @a[tag=!v0ted] at @s if entity @e[name="M@K",limit=1,tag=PGvote] if entity @e[tag=PG,nbt={Small:1b},tag=mg25] run loot replace entity @s[tag=PG,tag=page5] enderchest.18 loot ui/vote_mg25

execute as @a[tag=!v0ted] at @s if entity @e[name="M@K",limit=1,tag=PGvote] run item replace entity @s[tag=PG,tag=page5] enderchest.26 with barrier{gui:1,display:{Name:'{"text":""}'}}
execute as @a[tag=!v0ted] at @s if entity @e[name="M@K",limit=1,tag=PGvote] run item replace entity @s[tag=PG,tag=page5] enderchest.9 with lime_stained_glass_pane{gui:1,HideFlags:61,display:{Name:'{"text":"<< Previous Page","color":"green","bold":true}'}}
execute as @a[tag=!v0ted] at @s if entity @e[name="M@K",limit=1,tag=PGvote] run item replace entity @s[tag=PG,tag=page5] enderchest.17 with gray_stained_glass_pane{gui:1,HideFlags:61,display:{Name:'{"text":"Next Page","bold":true}'}}

#Results
execute as @a[tag=PGFinalist,scores={pg1.2=..-1}] at @s if entity @e[name="M@K",limit=1,tag=PGresults] run tag @s remove PGFinalist
execute as @e[name="M@K",limit=1,tag=PGpause,tag=PGtie] at @s if entity @a[tag=PGFinalist,scores={pg1.2=1..}] run tag @s remove PGtie
execute as @p[tag=PG,scores={pg1.7=1..}] at @s run particle end_rod ~ ~0.5 ~ 0.5 0.2 0.5 0.2 5 force @a[tag=PG]
execute as @p[tag=PG,scores={pg1.7=1..}] at @s run particle firework ~ ~-0.8 ~ 0.3 0.3 0.3 0.1 65 force @a[tag=PG]

#Conditions
execute as @e[name="M@K",limit=1,tag=PGpause,scores={pg1.3=..1}] at @s run tellraw @a[tag=PG] ["",{"text":"Whoops! The event was cancelled due to a lack of Players... for now.","color":"red"}]
execute as @e[name="M@K",limit=1,tag=PGpause,scores={pg1.3=..1}] at @s run function library:event/reset
execute unless entity @a[tag=PG] if data block -326 4 -4 {Text1:'{"bold":true,"color":"gray","text":"*Locked*"}'} if score @e[name="M@K",limit=1,tag=!PGpause] pg1.3 matches ..1 run function library:event/reset
execute as @a[scores={2=1..}] at @s run tag @s remove PG