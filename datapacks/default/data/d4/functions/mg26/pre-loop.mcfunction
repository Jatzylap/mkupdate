execute unless score @e[name="M@K",limit=1] mg26 matches 1.. if data block 21 2 -377 {Items:[{}]} unless data block 21 2 -377 {Items:[{Slot:10b,tag:{gui:1}}]} run function d4:mg26/select1
execute unless score @e[name="M@K",limit=1] mg26 matches 1.. if data block 21 2 -377 {Items:[{}]} unless data block 21 2 -377 {Items:[{Slot:13b,tag:{gui:1}}]} run function d4:mg26/select2
execute unless score @e[name="M@K",limit=1] mg26 matches 1.. if data block 21 2 -377 {Items:[{}]} unless data block 21 2 -377 {Items:[{Slot:16b,tag:{gui:1}}]} run function d4:mg26/select3
execute as @e[tag=mg26,tag=chest] at @s run tp @s ~ ~ ~ ~6 0
execute unless score @e[name="M@K",limit=1] mg26 matches 1.. run data merge block 21 2 -377 {Items:[{Slot:0b,Count:1b,id:"minecraft:orange_stained_glass_pane",tag:{0:1,gui:1,display:{Name:'{"text":""}'}}},{Slot:1b,Count:1b,id:"minecraft:orange_stained_glass_pane",tag:{0:1,gui:1,display:{Name:'{"text":""}'}}},{Slot:2b,Count:1b,id:"minecraft:orange_stained_glass_pane",tag:{0:1,gui:1,display:{Name:'{"text":""}'}}},{Slot:3b,Count:1b,id:"minecraft:blue_stained_glass_pane",tag:{0:1,gui:1,display:{Name:'{"text":""}'}}},{Slot:4b,Count:1b,id:"minecraft:blue_stained_glass_pane",tag:{0:1,gui:1,display:{Name:'{"text":""}'}}},{Slot:5b,Count:1b,id:"minecraft:blue_stained_glass_pane",tag:{0:1,gui:1,display:{Name:'{"text":""}'}}},{Slot:6b,Count:1b,id:"minecraft:lime_stained_glass_pane",tag:{0:1,gui:1,display:{Name:'{"text":""}'}}},{Slot:7b,Count:1b,id:"minecraft:lime_stained_glass_pane",tag:{0:1,gui:1,display:{Name:'{"text":""}'}}},{Slot:8b,Count:1b,id:"minecraft:lime_stained_glass_pane",tag:{0:1,gui:1,display:{Name:'{"text":""}'}}},{Slot:9b,Count:1b,id:"minecraft:orange_stained_glass_pane",tag:{0:1,gui:1,display:{Name:'{"text":""}'}}},{Slot:10b,Count:1b,id:"minecraft:orange_concrete",tag:{0:1,gui:1,display:{Name:'{"text":"MK HISTORY","italic":false,"bold":true}'}}},{Slot:11b,Count:1b,id:"minecraft:orange_stained_glass_pane",tag:{0:1,gui:1,display:{Name:'{"text":""}'}}},{Slot:12b,Count:1b,id:"minecraft:blue_stained_glass_pane",tag:{0:1,gui:1,display:{Name:'{"text":""}'}}},{Slot:13b,Count:1b,id:"minecraft:blue_concrete",tag:{0:1,gui:1,display:{Name:'{"text":"MK GENERAL","italic":false,"bold":true}'}}},{Slot:14b,Count:1b,id:"minecraft:blue_stained_glass_pane",tag:{0:1,gui:1,display:{Name:'{"text":""}'}}},{Slot:15b,Count:1b,id:"minecraft:lime_stained_glass_pane",tag:{0:1,gui:1,display:{Name:'{"text":""}'}}},{Slot:16b,Count:1b,id:"minecraft:lime_concrete",tag:{0:1,gui:1,display:{Name:'{"text":"MK LITERATURE","italic":false,"bold":true}'}}},{Slot:17b,Count:1b,id:"minecraft:lime_stained_glass_pane",tag:{0:1,gui:1,display:{Name:'{"text":""}'}}},{Slot:18b,Count:1b,id:"minecraft:orange_stained_glass_pane",tag:{0:1,gui:1,display:{Name:'{"text":""}'}}},{Slot:19b,Count:1b,id:"minecraft:orange_stained_glass_pane",tag:{0:1,gui:1,display:{Name:'{"text":""}'}}},{Slot:20b,Count:1b,id:"minecraft:orange_stained_glass_pane",tag:{0:1,gui:1,display:{Name:'{"text":""}'}}},{Slot:21b,Count:1b,id:"minecraft:blue_stained_glass_pane",tag:{0:1,gui:1,display:{Name:'{"text":""}'}}},{Slot:22b,Count:1b,id:"minecraft:blue_stained_glass_pane",tag:{0:1,gui:1,display:{Name:'{"text":""}'}}},{Slot:23b,Count:1b,id:"minecraft:blue_stained_glass_pane",tag:{0:1,gui:1,display:{Name:'{"text":""}'}}},{Slot:24b,Count:1b,id:"minecraft:lime_stained_glass_pane",tag:{0:1,gui:1,display:{Name:'{"text":""}'}}},{Slot:25b,Count:1b,id:"minecraft:lime_stained_glass_pane",tag:{0:1,gui:1,display:{Name:'{"text":""}'}}},{Slot:26b,Count:1b,id:"minecraft:lime_stained_glass_pane",tag:{0:1,gui:1,display:{Name:'{"text":""}'}}}]}
execute unless score @e[name="M@K",limit=1] mg26 matches 1.. if entity @a[scores={mg26=1..},tag=mg26_win1] run item replace block 21 2 -377 container.10 with light_gray_concrete{0:1,gui:1,display:{Name:'{"text":"MK HISTORY ","italic":false,"bold":true,"extra":[{"text":"✔","color":"green","bold":true}]}'}}
execute unless score @e[name="M@K",limit=1] mg26 matches 1.. if entity @a[scores={mg26=1..},tag=mg26_win2] run item replace block 21 2 -377 container.13 with light_gray_concrete{0:1,gui:1,display:{Name:'{"text":"MK GENERAL ","italic":false,"bold":true,"extra":[{"text":"✔","color":"green","bold":true}]}'}}
execute unless score @e[name="M@K",limit=1] mg26 matches 1.. if entity @a[scores={mg26=1..},tag=mg26_win3] run item replace block 21 2 -377 container.16 with light_gray_concrete{0:1,gui:1,display:{Name:'{"text":"MK LITERATURE ","italic":false,"bold":true,"extra":[{"text":"✔","color":"green","bold":true}]}'}}
execute if score @e[name="M@K",limit=1] mg26 matches 1.. run data merge block 21 2 -377 {Items:[{Slot:0b,Count:1b,id:"minecraft:orange_stained_glass_pane",tag:{0:1,gui:1,display:{Name:'{"text":""}'}}},{Slot:1b,Count:1b,id:"minecraft:orange_stained_glass_pane",tag:{0:1,gui:1,display:{Name:'{"text":""}'}}},{Slot:2b,Count:1b,id:"minecraft:orange_stained_glass_pane",tag:{0:1,gui:1,display:{Name:'{"text":""}'}}},{Slot:3b,Count:1b,id:"minecraft:blue_stained_glass_pane",tag:{0:1,gui:1,display:{Name:'{"text":""}'}}},{Slot:4b,Count:1b,id:"minecraft:blue_stained_glass_pane",tag:{0:1,gui:1,display:{Name:'{"text":""}'}}},{Slot:5b,Count:1b,id:"minecraft:blue_stained_glass_pane",tag:{0:1,gui:1,display:{Name:'{"text":""}'}}},{Slot:6b,Count:1b,id:"minecraft:lime_stained_glass_pane",tag:{0:1,gui:1,display:{Name:'{"text":""}'}}},{Slot:7b,Count:1b,id:"minecraft:lime_stained_glass_pane",tag:{0:1,gui:1,display:{Name:'{"text":""}'}}},{Slot:8b,Count:1b,id:"minecraft:lime_stained_glass_pane",tag:{0:1,gui:1,display:{Name:'{"text":""}'}}},{Slot:9b,Count:1b,id:"minecraft:orange_stained_glass_pane",tag:{0:1,gui:1,display:{Name:'{"text":""}'}}},{Slot:10b,Count:1b,id:"minecraft:air"},{Slot:11b,Count:1b,id:"minecraft:orange_stained_glass_pane",tag:{0:1,gui:1,display:{Name:'{"text":""}'}}},{Slot:12b,Count:1b,id:"minecraft:blue_stained_glass_pane",tag:{0:1,gui:1,display:{Name:'{"text":""}'}}},{Slot:13b,Count:1b,id:"minecraft:air"},{Slot:14b,Count:1b,id:"minecraft:blue_stained_glass_pane",tag:{0:1,gui:1,display:{Name:'{"text":""}'}}},{Slot:15b,Count:1b,id:"minecraft:lime_stained_glass_pane",tag:{0:1,gui:1,display:{Name:'{"text":""}'}}},{Slot:16b,Count:1b,id:"minecraft:air"},{Slot:17b,Count:1b,id:"minecraft:lime_stained_glass_pane",tag:{0:1,gui:1,display:{Name:'{"text":""}'}}},{Slot:18b,Count:1b,id:"minecraft:orange_stained_glass_pane",tag:{0:1,gui:1,display:{Name:'{"text":""}'}}},{Slot:19b,Count:1b,id:"minecraft:orange_stained_glass_pane",tag:{0:1,gui:1,display:{Name:'{"text":""}'}}},{Slot:20b,Count:1b,id:"minecraft:orange_stained_glass_pane",tag:{0:1,gui:1,display:{Name:'{"text":""}'}}},{Slot:21b,Count:1b,id:"minecraft:blue_stained_glass_pane",tag:{0:1,gui:1,display:{Name:'{"text":""}'}}},{Slot:22b,Count:1b,id:"minecraft:blue_stained_glass_pane",tag:{0:1,gui:1,display:{Name:'{"text":""}'}}},{Slot:23b,Count:1b,id:"minecraft:blue_stained_glass_pane",tag:{0:1,gui:1,display:{Name:'{"text":""}'}}},{Slot:24b,Count:1b,id:"minecraft:lime_stained_glass_pane",tag:{0:1,gui:1,display:{Name:'{"text":""}'}}},{Slot:25b,Count:1b,id:"minecraft:lime_stained_glass_pane",tag:{0:1,gui:1,display:{Name:'{"text":""}'}}},{Slot:26b,Count:1b,id:"minecraft:lime_stained_glass_pane",tag:{0:1,gui:1,display:{Name:'{"text":""}'}}}]}

#Particle
particle dust 1 1 1 0.5 ^-0.2 ^0.8 ^0 0 0 0 0 2 force @a[scores={mg26=1..}]
particle dust 1 1 1 0.5 ^-0.1 ^0.8 ^0 0 0 0 0 2 force @a[scores={mg26=1..}]
particle dust 1 1 1 0.5 ^0 ^0.8 ^0 0 0 0 0 2 force @a[scores={mg26=1..}]
particle dust 1 1 1 0.5 ^0.1 ^0.8 ^0 0 0 0 0 2 force @a[scores={mg26=1..}]
particle dust 1 1 1 0.5 ^0.2 ^0.8 ^0 0 0 0 0 2 force @a[scores={mg26=1..}]
particle dust 1 1 1 0.5 ^-0.3 ^0.7 ^0 0 0 0 0 2 force @a[scores={mg26=1..}]
particle dust 1 1 1 0.5 ^-0.2 ^0.7 ^0 0 0 0 0 2 force @a[scores={mg26=1..}]
particle dust 1 1 1 0.5 ^-0.1 ^0.7 ^0 0 0 0 0 2 force @a[scores={mg26=1..}]
particle dust 1 1 1 0.5 ^0 ^0.7 ^0 0 0 0 0 2 force @a[scores={mg26=1..}]
particle dust 1 1 1 0.5 ^0.1 ^0.7 ^0 0 0 0 0 2 force @a[scores={mg26=1..}]
particle dust 1 1 1 0.5 ^0.2 ^0.7 ^0 0 0 0 0 2 force @a[scores={mg26=1..}]
particle dust 1 1 1 0.5 ^0.3 ^0.7 ^0 0 0 0 0 2 force @a[scores={mg26=1..}]
particle dust 1 1 1 0.5 ^-0.4 ^0.6 ^0 0 0 0 0 2 force @a[scores={mg26=1..}]
particle dust 1 1 1 0.5 ^-0.3 ^0.6 ^0 0 0 0 0 2 force @a[scores={mg26=1..}]
particle dust 1 1 1 0.5 ^-0.2 ^0.6 ^0 0 0 0 0 2 force @a[scores={mg26=1..}]
particle dust 1 1 1 0.5 ^-0.1 ^0.6 ^0 0 0 0 0 2 force @a[scores={mg26=1..}]
particle dust 1 1 1 0.5 ^0 ^0.6 ^0 0 0 0 0 2 force @a[scores={mg26=1..}]
particle dust 1 1 1 0.5 ^0.1 ^0.6 ^0 0 0 0 0 2 force @a[scores={mg26=1..}]
particle dust 1 1 1 0.5 ^0.2 ^0.6 ^0 0 0 0 0 2 force @a[scores={mg26=1..}]
particle dust 1 1 1 0.5 ^0.3 ^0.6 ^0 0 0 0 0 2 force @a[scores={mg26=1..}]
particle dust 1 1 1 0.5 ^-0.4 ^0.5 ^0 0 0 0 0 2 force @a[scores={mg26=1..}]
particle dust 1 1 1 0.5 ^-0.3 ^0.5 ^0 0 0 0 0 2 force @a[scores={mg26=1..}]
particle dust 1 1 1 0.5 ^0.1 ^0.5 ^0 0 0 0 0 2 force @a[scores={mg26=1..}]
particle dust 1 1 1 0.5 ^0.2 ^0.5 ^0 0 0 0 0 2 force @a[scores={mg26=1..}]
particle dust 1 1 1 0.5 ^0.3 ^0.5 ^0 0 0 0 0 2 force @a[scores={mg26=1..}]
particle dust 1 1 1 0.5 ^0.4 ^0.5 ^0 0 0 0 0 2 force @a[scores={mg26=1..}]
particle dust 1 1 1 0.5 ^-0.4 ^0.4 ^0 0 0 0 0 2 force @a[scores={mg26=1..}]
particle dust 1 1 1 0.5 ^-0.3 ^0.4 ^0 0 0 0 0 2 force @a[scores={mg26=1..}]
particle dust 1 1 1 0.5 ^0.2 ^0.4 ^0 0 0 0 0 2 force @a[scores={mg26=1..}]
particle dust 1 1 1 0.5 ^0.3 ^0.4 ^0 0 0 0 0 2 force @a[scores={mg26=1..}]
particle dust 1 1 1 0.5 ^0.4 ^0.4 ^0 0 0 0 0 2 force @a[scores={mg26=1..}]
particle dust 1 1 1 0.5 ^-0.4 ^0.3 ^0 0 0 0 0 2 force @a[scores={mg26=1..}]
particle dust 1 1 1 0.5 ^-0.3 ^0.3 ^0 0 0 0 0 2 force @a[scores={mg26=1..}]
particle dust 1 1 1 0.5 ^0.2 ^0.3 ^0 0 0 0 0 2 force @a[scores={mg26=1..}]
particle dust 1 1 1 0.5 ^0.3 ^0.3 ^0 0 0 0 0 2 force @a[scores={mg26=1..}]
particle dust 1 1 1 0.5 ^0.4 ^0.3 ^0 0 0 0 0 2 force @a[scores={mg26=1..}]
particle dust 1 1 1 0.5 ^0.1 ^0.2 ^0 0 0 0 0 2 force @a[scores={mg26=1..}]
particle dust 1 1 1 0.5 ^0.2 ^0.2 ^0 0 0 0 0 2 force @a[scores={mg26=1..}]
particle dust 1 1 1 0.5 ^0.3 ^0.2 ^0 0 0 0 0 2 force @a[scores={mg26=1..}]
particle dust 1 1 1 0.5 ^0.4 ^0.2 ^0 0 0 0 0 2 force @a[scores={mg26=1..}]
particle dust 1 1 1 0.5 ^-0.1 ^0.1 ^0 0 0 0 0 2 force @a[scores={mg26=1..}]
particle dust 1 1 1 0.5 ^0 ^0.1 ^0 0 0 0 0 2 force @a[scores={mg26=1..}]
particle dust 1 1 1 0.5 ^0.1 ^0.1 ^0 0 0 0 0 2 force @a[scores={mg26=1..}]
particle dust 1 1 1 0.5 ^0.2 ^0.1 ^0 0 0 0 0 2 force @a[scores={mg26=1..}]
particle dust 1 1 1 0.5 ^0.3 ^0.1 ^0 0 0 0 0 2 force @a[scores={mg26=1..}]
particle dust 1 1 1 0.5 ^-0.1 ^0 ^0 0 0 0 0 2 force @a[scores={mg26=1..}]
particle dust 1 1 1 0.5 ^0 ^0 ^0 0 0 0 0 2 force @a[scores={mg26=1..}]
particle dust 1 1 1 0.5 ^0.1 ^0 ^0 0 0 0 0 2 force @a[scores={mg26=1..}]
particle dust 1 1 1 0.5 ^-0.1 ^-0.1 ^0 0 0 0 0 2 force @a[scores={mg26=1..}]
particle dust 1 1 1 0.5 ^0 ^-0.1 ^0 0 0 0 0 2 force @a[scores={mg26=1..}]
particle dust 1 1 1 0.5 ^-0.1 ^-0.2 ^0 0 0 0 0 2 force @a[scores={mg26=1..}]
particle dust 1 1 1 0.5 ^0 ^-0.2 ^0 0 0 0 0 2 force @a[scores={mg26=1..}]
particle dust 1 1 1 0.5 ^-0.1 ^-0.3 ^0 0 0 0 0 2 force @a[scores={mg26=1..}]
particle dust 1 1 1 0.5 ^0 ^-0.3 ^0 0 0 0 0 2 force @a[scores={mg26=1..}]
particle dust 1 1 1 0.5 ^-0.1 ^-0.6 ^0 0 0 0 0 2 force @a[scores={mg26=1..}]
particle dust 1 1 1 0.5 ^0 ^-0.6 ^0 0 0 0 0 2 force @a[scores={mg26=1..}]
particle dust 1 1 1 0.5 ^-0.1 ^-0.7 ^0 0 0 0 0 2 force @a[scores={mg26=1..}]
particle dust 1 1 1 0.5 ^0 ^-0.7 ^0 0 0 0 0 2 force @a[scores={mg26=1..}]