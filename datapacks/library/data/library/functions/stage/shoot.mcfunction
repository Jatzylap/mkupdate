summon marker ~ ~ ~ {Tags:["mg-1r"]}
tp @e[tag=mg-1r,sort=nearest,limit=1] @s
execute if entity @e[tag=b0ss,tag=p0ly] as @e[tag=mg-1r] at @s run function library:stage/ray
execute if entity @e[tag=1p] as @e[tag=mg-1r] at @s run function mk:lobby/ray
execute if entity @e[tag=6p] unless entity @a[tag=mg-1] unless entity @a[tag=XPwinner] as @e[tag=mg-1r] at @s run function mk:lobby/ray