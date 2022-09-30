execute store result score @s mgc-2.1 run data get entity @s UUID[0]
tag @s add mgc.st0re
execute as @e[limit=1,tag=mgc_m0b_d,sort=random,tag=!mgc_st0re] at @s unless score @s mgc-2.1 = @e[tag=mgc.st0re,limit=1] mgc-2.1 positioned as @e[tag=mgc.st0re,limit=1] run tp @s ~ ~1.1 ~
execute unless entity @e[dy=1,tag=mgc_st0re] as @e[tag=mgc_m0b_d,sort=nearest,tag=!mgc_st0re,limit=1] at @s run tag @s add mgc_st0re
execute unless score @e[tag=mgc_st0re,limit=1,sort=nearest] mgc-2.1 matches ..0 unless score @e[tag=mgc_st0re,limit=1,sort=nearest] mgc-2.1 matches 0.. store result score @e[tag=mgc_st0re,limit=1,dy=1,sort=nearest] mgc-2.1 run data get entity @e[tag=mgc_m0b,tag=!target,limit=1,dy=1,sort=nearest] UUID[0]