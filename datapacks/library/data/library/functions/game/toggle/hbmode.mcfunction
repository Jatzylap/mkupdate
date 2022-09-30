execute if entity @a[scores={mgc=-1..}] run playsound entity.item.pickup master @s ~ ~ ~ 0.2 1.3
execute unless entity @a[scores={mgc=-1..}] run fill -307 -9 71 -291 11 55 air replace barrier
execute unless entity @a[scores={mgc=-1..}] store success score @s c run spreadplayers -299 63 0 6 under 11 false @s
execute unless entity @a[scores={mgc=-1..}] run playsound ui.loom.take_result master @s ~ ~ ~ 0.5 1.3
execute if score @s c matches 1 unless entity @a[scores={mgc=-1..}] run function clear:chat
execute if score @s c matches 1 unless entity @a[scores={mgc=-1..}] run tag @s add 3dit
execute if score @s c matches 1 unless entity @a[scores={mgc=-1..}] run gamemode survival
execute if score @s c matches 1 unless entity @a[scores={mgc=-1..}] run item replace block -304 5 45 container.0 from entity @s weapon.mainhand
execute if score @s c matches 1 unless entity @a[scores={mgc=-1..}] run function mk:store
execute if score @s c matches 1 unless entity @a[scores={mgc=-1..}] run spawnpoint @s -113 13 -8
execute if score @s c matches 1 unless entity @a[scores={mgc=-1..}] run item replace entity @s weapon.mainhand from block -304 5 45 container.0
execute if score @s c matches 1 unless entity @a[scores={mgc=-1..}] run give @s golden_pickaxe{Enchantments:[{id:efficiency,lvl:9}],HideFlags:15,AttributeModifiers:[{Amount:2,Slot:"mainhand",AttributeName:"generic.attack_speed",Operation:0,UUID:[I; 0,34690,0,130199]}],display:{Name:'{"text":"Tile Breaker","italic":false,"bold":true}'},Unbreakable:1}
execute if score @s c matches 1 unless entity @a[scores={mgc=-1..}] run give @s golden_axe{Enchantments:[{id:efficiency,lvl:5}],HideFlags:15,AttributeModifiers:[{Amount:2,Slot:"mainhand",AttributeName:"generic.attack_speed",Operation:0,UUID:[I; 0,34690,0,130199]}],display:{Name:'{"text":"Tile Breaker","italic":false,"bold":true}'},Unbreakable:1}
execute if score @s c matches 1 unless entity @a[scores={mgc=-1..}] run give @s golden_shovel{AttributeModifiers:[{Amount:2,Slot:"mainhand",AttributeName:"generic.attack_speed",Operation:0,UUID:[I; 0,34690,0,130199]}],HideFlags:15,display:{Name:'{"text":"Tile Breaker","italic":false,"bold":true}'},Unbreakable:1}
#errors
execute if score @s c matches 1 if data block -307 15 72 {Text2:'{"bold":true,"color":"aqua","text":"ON"}'} if entity @a[scores={mgc=-1..}] run tellraw @s ["",{"text":"You can't build for now; a game has begun!","color":"red"}]
execute if score @s c matches 0 if data block -307 15 72 {Text2:'{"bold":true,"color":"aqua","text":"ON"}'} unless entity @a[scores={mgc=-1..}] run tellraw @s ["",{"text":"Build a floor first; otherwise you'll drop into void!","color":"red"}]
scoreboard players reset @s c
item replace block -304 5 45 container.0 with air