#DIRECTIONS
execute as @e[type=villager,tag=x] at @s positioned as @p[scores={mg12=1..},nbt={SelectedItem:{id:"minecraft:iron_sword",tag:{w:1b}}}] run tp @s ~1 ~0.2 ~ facing entity @p[scores={mg12=1..},nbt={SelectedItem:{id:"minecraft:iron_sword",tag:{w:1b}}}]
execute as @e[type=villager,tag=-x] at @s positioned as @p[scores={mg12=1..},nbt={SelectedItem:{id:"minecraft:iron_sword",tag:{w:1b}}}] run tp @s ~-1 ~0.2 ~ facing entity @p[scores={mg12=1..},nbt={SelectedItem:{id:"minecraft:iron_sword",tag:{w:1b}}}]
execute as @e[type=villager,tag=z] at @s positioned as @p[scores={mg12=1..},nbt={SelectedItem:{id:"minecraft:iron_sword",tag:{w:1b}}}] run tp @s ~ ~0.2 ~1 facing entity @p[scores={mg12=1..},nbt={SelectedItem:{id:"minecraft:iron_sword",tag:{w:1b}}}]
execute as @e[type=villager,tag=-z] at @s positioned as @p[scores={mg12=1..},nbt={SelectedItem:{id:"minecraft:iron_sword",tag:{w:1b}}}] run tp @s ~ ~0.2 ~-1 facing entity @p[scores={mg12=1..},nbt={SelectedItem:{id:"minecraft:iron_sword",tag:{w:1b}}}]
execute as @e[type=villager,tag=xz] at @s positioned as @p[scores={mg12=1..},nbt={SelectedItem:{id:"minecraft:iron_sword",tag:{w:1b}}}] run tp @s ~1 ~ ~1 facing entity @p[scores={mg12=1..},nbt={SelectedItem:{id:"minecraft:iron_sword",tag:{w:1b}}}]
execute as @e[type=villager,tag=-xz] at @s positioned as @p[scores={mg12=1..},nbt={SelectedItem:{id:"minecraft:iron_sword",tag:{w:1b}}}] run tp @s ~-1 ~ ~1 facing entity @p[scores={mg12=1..},nbt={SelectedItem:{id:"minecraft:iron_sword",tag:{w:1b}}}]
execute as @e[type=villager,tag=x-z] at @s positioned as @p[scores={mg12=1..},nbt={SelectedItem:{id:"minecraft:iron_sword",tag:{w:1b}}}] run tp @s ~1 ~ ~-1 facing entity @p[scores={mg12=1..},nbt={SelectedItem:{id:"minecraft:iron_sword",tag:{w:1b}}}]
execute as @e[type=villager,tag=-x-z] at @s positioned as @p[scores={mg12=1..},nbt={SelectedItem:{id:"minecraft:iron_sword",tag:{w:1b}}}] run tp @s ~-1 ~ ~-1 facing entity @p[scores={mg12=1..},nbt={SelectedItem:{id:"minecraft:iron_sword",tag:{w:1b}}}]
execute as @e[type=slime,tag=d] at @s run tp @s ^ ^ ^ facing entity @p[scores={mg12=1..},nbt={SelectedItem:{id:"minecraft:iron_sword",tag:{w:1b}}}]
#WEAPON
execute as @a[scores={mg12=1..,v=1},nbt={SelectedItem:{id:"minecraft:iron_sword",tag:{w:1b}}}] at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Tags:[wp,pc],HandItems:[{Count:1,id:iron_sword,tag:{display:{Name:'{"text":"Dagger","italic":false}',Lore:['{"text":"Right-Click to throw","color":"light_purple","italic":false}']},PC:1,w:1b,HideFlags:30}}],Pose:{RightArm:[-20f,0f,0f]}}
execute as @e[tag=wp] at @s unless entity @s[nbt={HandItems:[{Count:1b,id:"minecraft:iron_sword",tag:{w:1b}}]}] run kill @s
scoreboard players add @a[scores={mg12=1..,v=1..}] v 1
execute as @a[scores={mg12=1..,v=30..}] at @s run scoreboard players reset @s v
execute as @a[scores={mg12=1..,v=2..3}] at @s if entity @e[tag=wp,scores={mg12.7=..79}] run clear @s iron_sword{PC:1,w:1b}
execute as @e[tag=wp,scores={mg12.7=..79}] at @s run tag @p[scores={mg12=1..,v=2..5}] add rp
execute as @a[scores={mg12=1..,s=1..},nbt={SelectedItem:{id:"minecraft:iron_sword",tag:{w:1b}}}] at @s run tp @e[tag=d,distance=..3] ~ -1000 ~
execute as @a[scores={mg12=1..}] at @s unless entity @s[nbt={SelectedItem:{id:"minecraft:iron_sword",tag:{w:1b}}}] run tp @e[tag=d,distance=..3] ~ -1000 ~
execute as @a[scores={mg12=1..}] at @s unless entity @s[nbt={SelectedItem:{id:"minecraft:iron_sword",tag:{w:1b}}}] run scoreboard players reset @s s
scoreboard players reset @a[scores={mg12=1..}] s
#PROJECTILE
execute as @e[tag=wp] at @s unless score @s mg12.7 matches 1.. run scoreboard players set @s mg12.7 0
execute as @a[scores={mg12=1..,v=2}] at @s positioned ^ ^ ^0.5 run tp @e[tag=wp,scores={mg12.7=0}] @s
execute as @e[tag=wp,scores={mg12.7=0}] at @s positioned ^ ^-0.2 ^ run tp ~0.5 ~2 ~
execute as @e[tag=wp,scores={mg12.7=..79}] at @s run scoreboard players add @s mg12.7 1
execute as @e[tag=wp,scores={mg12.7=79}] at @s if block ~ ~1.5 ~ #pc_co run tp @s ~ ~1.5 ~
execute as @e[tag=wp,scores={mg12.7=..40}] at @s unless block ^ ^-0.5 ^0.1 #pc_co run tp ^ ^-0.2 ^1
execute as @e[tag=wp,scores={mg12.7=30..}] at @s if block ^ ^-0.5 ^0.1 #pc_co unless entity @p[scores={mg12=1..},distance=..3] run scoreboard players set @s mg12.7 79
execute as @e[tag=wp] at @s positioned ^ ^-0.5 ^ unless block ^ ^ ^ #pc_co run effect give @e[tag=!d,type=!player,type=!phantom,distance=..2.5] instant_damage 1 1
execute as @e[tag=wp] at @s positioned ^ ^-0.5 ^ unless block ^ ^ ^ #pc_co run effect give @e[tag=!d,type=phantom,distance=..2.5] instant_health 1 1
execute as @e[tag=wp] at @s unless block ^ ^-1 ^ #pc_co run particle crit ^ ^ ^ 0 0 0 0 1 normal @a[scores={mg12=1..}]
execute as @e[tag=wp,scores={mg12.7=20}] at @s if block ~ ~ ~ #pc_co run playsound minecraft:entity.player.attack.sweep master @p[scores={mg12=1..}] ~ ~ ~ 0.5 0.4
execute as @e[tag=wp,scores={mg12.7=20}] at @s if block ~ ~ ~ oak_leaves run playsound minecraft:block.grass.break master @a[scores={mg12=1..}] ~ ~ ~ 0.5 0.4
execute as @a[scores={mg12=1..}] at @s if entity @e[tag=wp,scores={mg12.7=80},distance=..3] unless data entity @s Inventory[{id:"minecraft:iron_sword",tag:{w:1b}}] run give @s iron_sword{display:{Name:'{"text":"Dagger","italic":false}',Lore:['{"text":"Sneak to use normally","color":"light_purple","italic":false}']},PC:1,w:1b,HideFlags:30}
execute as @e[tag=wp,scores={mg12.7=80}] at @s if entity @a[scores={mg12=1..},tag=rp,distance=..3] run tag @s add rp
execute as @a[scores={mg12=1..}] at @s if entity @e[tag=wp,tag=rp,distance=..3] run tag @s remove rp
execute as @e[tag=wp,tag=rp] at @s run kill @s
execute as @e[tag=wp] at @s unless block ^ ^ ^1 #pc_co store result entity @s Pose.RightArm[0] float 9.333333333333333 run scoreboard players get @s mg12.7
execute as @e[tag=wp,scores={mg12.7=1..}] at @s unless block ^ ^0.5 ^1 #pc_co run tp @s ~ ~-0.2 ~
execute as @e[tag=wp] at @s if block ^ ^1 ^ #pc_co run data merge entity @s {Pose:{RightArm:[-280f]}}
execute as @e[tag=wp,scores={mg12.7=..39}] at @s if block ^ ^ ^-0.2 #pc_co run data merge entity @s {Pose:{RightArm:[20f]}}
execute as @e[tag=wp,scores={mg12.7=..39}] at @s if block ^ ^ ^0.2 #pc_co run data merge entity @s {Pose:{RightArm:[20f]}}
execute as @e[tag=wp] at @s if block ^ ^1 ^ #pc_co run data merge entity @s {Pose:{RightArm:[-280f]}}
execute as @e[tag=wp] at @s positioned ^ ^ ^1 if entity @e[type=!armor_stand,tag=!d,type=!item_frame,type=!player,dy=2] run scoreboard players set @s mg12.7 79
execute as @e[tag=wp] at @s if block ^ ^ ^1 #pc_co run execute positioned ~ ~6 ~ run particle end_rod ^-0.37 ^ ^-0.52 0 2 0 0 1 normal @a[scores={mg12=1..}]
execute as @e[tag=wp,scores={mg12.7=40..}] at @s if block ~ ~-1 ~ air unless entity @a[scores={mg12=1..},tag=rp,distance=..2] run scoreboard players set @s[scores={mg12.7=79..}] mg12.7 79
execute as @e[tag=wp,scores={mg12.7=40..}] at @s if block ~ ~-1 ~ air run tp @s ^ ^ ^1 facing entity @p[scores={mg12=1..},tag=rp,limit=1]