#Questions
summon armor_stand 21 2 -377 {Invisible:1,Small:1,Invulnerable:1,Tags:[mg26,q,q1],NoBasePlate:1,Motion:[.63d,.75d,.63d]}
summon armor_stand 21 2 -377 {Invisible:1,Small:1,Invulnerable:1,Tags:[mg26,q,q2],NoBasePlate:1,Motion:[.63d,.75d,-.63d]}
summon armor_stand 21 2 -377 {Invisible:1,Small:1,Invulnerable:1,Tags:[mg26,q,q3],NoBasePlate:1,Motion:[-.63d,.75d,.63d]}
summon armor_stand 21 2 -377 {Invisible:1,Small:1,Invulnerable:1,Tags:[mg26,q,q4],NoBasePlate:1,Motion:[-.63d,.75d,-.63d]}
execute as @e[tag=q,tag=mg26] at @s run particle dust 1 1 1 3 ~ ~0.5 ~ .3 1 .3 .6 900 force @a[scores={mg26=1..}]
schedule function d4:mg26/elevate1 6s