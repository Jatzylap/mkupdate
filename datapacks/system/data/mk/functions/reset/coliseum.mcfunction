effect give @s[tag=!XPplayers] jump_boost 1 255 true
effect give @s[tag=!XPplayers] weakness 1 255 true
effect give @s resistance 1000000 255 true
effect give @s fire_resistance 1000000 90 true
effect give @s saturation 1000000 90 true
attribute @s generic.attack_speed base set 4
team leave @s[team=Member1]
team leave @s[team=Admin1]
team join Member @s[tag=Member,team=]
team join Admin @s[tag=Admin,team=]