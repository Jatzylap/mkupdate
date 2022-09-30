execute unless entity @a[tag=mg2-ran1] unless entity @a[tag=mg2-ran2] unless entity @a[tag=mg2-ran3] if predicate 50-50 run tag @s[tag=!T0,tag=!SPmg2,tag=!mg2-ran1,tag=!mg2-ran2,tag=!mg2-ran3] add mg2-ran3
execute unless entity @a[tag=mg2-ran1] unless entity @a[tag=mg2-ran2] unless entity @a[tag=mg2-ran3] if predicate 50-50 run tag @s[tag=!T0,tag=!SPmg2,tag=!mg2-ran1,tag=!mg2-ran2,tag=!mg2-ran3] add mg2-ran2
execute unless entity @a[tag=mg2-ran1] unless entity @a[tag=mg2-ran2] unless entity @a[tag=mg2-ran3] if predicate 50-50 run tag @s[tag=!T0,tag=!SPmg2,tag=!mg2-ran1,tag=!mg2-ran2,tag=!mg2-ran3] add mg2-ran1
execute unless entity @a[tag=mg2-ran1] unless entity @a[tag=mg2-ran2] unless entity @a[tag=mg2-ran3] run tag @s[tag=!T0,tag=!SPmg2,tag=!mg2-ran1,tag=!mg2-ran2,tag=!mg2-ran3] add mg2-ran1

#2-team
execute if block 99 3 -72 lever[powered=false] if entity @a[scores={mg2=1..},tag=mg2-ran1] unless entity @a[scores={mg2=1..},tag=mg2-ran3] if data block 104 7 -62 Items[{tag:{mg2:1}}] run tag @s[tag=!T0,tag=!SPmg2,tag=!mg2-ran1,tag=!mg2-ran2,tag=!mg2-ran3] add mg2-ran2
execute if block 99 3 -72 lever[powered=false] if entity @a[scores={mg2=1..},tag=mg2-ran1] unless entity @a[scores={mg2=1..},tag=mg2-ran2] if data block 104 7 -62 Items[{tag:{mg2:2}}] run tag @s[tag=!T0,tag=!SPmg2,tag=!mg2-ran1,tag=!mg2-ran2,tag=!mg2-ran3] add mg2-ran3
execute if block 99 3 -72 lever[powered=false] if entity @a[scores={mg2=1..},tag=mg2-ran2] unless entity @a[scores={mg2=1..},tag=mg2-ran3] if data block 104 7 -62 Items[{tag:{mg2:1}}] run tag @s[tag=!T0,tag=!SPmg2,tag=!mg2-ran1,tag=!mg2-ran2,tag=!mg2-ran3] add mg2-ran1
execute if block 99 3 -72 lever[powered=false] if entity @a[scores={mg2=1..},tag=mg2-ran2] unless entity @a[scores={mg2=1..},tag=mg2-ran1] if data block 104 7 -62 Items[{tag:{mg2:2}}] run tag @s[tag=!T0,tag=!SPmg2,tag=!mg2-ran1,tag=!mg2-ran2,tag=!mg2-ran3] add mg2-ran3
execute if block 99 3 -72 lever[powered=false] if entity @a[scores={mg2=1..},tag=mg2-ran3] unless entity @a[scores={mg2=1..},tag=mg2-ran2] if data block 104 7 -62 Items[{tag:{mg2:1}}] run tag @s[tag=!T0,tag=!SPmg2,tag=!mg2-ran1,tag=!mg2-ran2,tag=!mg2-ran3] add mg2-ran1
execute if block 99 3 -72 lever[powered=false] if entity @a[scores={mg2=1..},tag=mg2-ran3] unless entity @a[scores={mg2=1..},tag=mg2-ran1] if data block 104 7 -62 Items[{tag:{mg2:2}}] run tag @s[tag=!T0,tag=!SPmg2,tag=!mg2-ran1,tag=!mg2-ran2,tag=!mg2-ran3] add mg2-ran2

#3-team
execute if block 99 3 -72 lever[powered=true] store result score #mg2-players mg2.1 if entity @a[scores={mg2=1..},team=]
execute if block 99 3 -72 lever[powered=true] store result score #mg2-quotient mg2.1 run scoreboard players get #mg2-players mg2.1
execute if block 99 3 -72 lever[powered=true] run scoreboard players operation #mg2-quotient mg2.1 /= @s mg2.1
execute if block 99 3 -72 lever[powered=true] unless score #mg2-redr mg2.1 matches 1.. store result score #mg2-redr mg2.1 run scoreboard players get #mg2-quotient mg2.1
execute if block 99 3 -72 lever[powered=true] unless score #mg2-yellowr mg2.1 matches 1.. store result score #mg2-yellowr mg2.1 run scoreboard players get #mg2-quotient mg2.1
execute if block 99 3 -72 lever[powered=true] unless score #mg2-bluer mg2.1 matches 1.. store result score #mg2-bluer mg2.1 run scoreboard players get #mg2-quotient mg2.1
execute if block 99 3 -72 lever[powered=true] if score #mg2-redr mg2.1 matches 1.. run tag @r[scores={mg2=1..},team=,tag=!mg2-ran1,tag=!mg2-ran2,tag=!mg2-ran3] add mg2-ran1
execute if block 99 3 -72 lever[powered=true] if score #mg2-bluer mg2.1 matches 1.. run tag @r[scores={mg2=1..},team=,tag=!mg2-ran1,tag=!mg2-ran2,tag=!mg2-ran3] add mg2-ran2
execute if block 99 3 -72 lever[powered=true] if score #mg2-yellowr mg2.1 matches 1.. run tag @r[scores={mg2=1..},team=,tag=!mg2-ran1,tag=!mg2-ran2,tag=!mg2-ran3] add mg2-ran3
execute if block 99 3 -72 lever[powered=true] unless score #mg2-redr mg2.1 matches ..0 run scoreboard players remove #mg2-redr mg2.1 1
execute if block 99 3 -72 lever[powered=true] unless score #mg2-yellowr mg2.1 matches ..0 run scoreboard players remove #mg2-yellowr mg2.1 1
execute if block 99 3 -72 lever[powered=true] unless score #mg2-bluer mg2.1 matches ..0 run scoreboard players remove #mg2-bluer mg2.1 1