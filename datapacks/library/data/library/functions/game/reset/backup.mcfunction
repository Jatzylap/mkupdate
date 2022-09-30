execute as @e[tag=!3vent,tag=!mgc_r3s,tag=start] at @s unless data entity @s Passengers[0] run data modify entity @s AbsorptionAmount set from entity @e[tag=3vent,tag=start,limit=1] AbsorptionAmount
execute as @e[tag=!3vent,tag=!mgc_r3s,tag=end] at @s unless data entity @s Passengers[0] run data modify entity @s DisabledSlots set from entity @e[tag=3vent,tag=end,limit=1,tag=ob.1] DisabledSlots
execute as @e[tag=!3vent,tag=!mgc_r3s,tag=end] at @s unless data entity @s Passengers[0] run data modify entity @s DisabledSlots set from entity @e[tag=3vent,tag=end,limit=1,tag=ob.2] DisabledSlots
execute as @e[tag=!3vent,tag=!mgc_r3s,tag=end] at @s unless data entity @s Passengers[0] run data modify entity @s AbsorptionAmount set from entity @e[tag=3vent,tag=end,limit=1] AbsorptionAmount
