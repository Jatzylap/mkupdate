#------------------------MINIGAME CREATOR ADDONS-----------------------#

#Documentation: https://minigame-kingdom.fandom.com/wiki/MGC

#-----------------------------GUIDELINES-------------------------------#
#> Use any command that is provided by Minecraft (just don't include the '/')
#> Do not use '/kill' unless you really know what you're doing!
#> Use the '#' at the beginning of a command to cancel it, or remove the '#' to run it
#> You may remove anything redundant here (including this when these lines are understood)

#--------------------------------TIPS----------------------------------#
#> Use 'execute positioned' to set the function elsewhere at another location

#> Use '@p/@a/@e/@r[scores={mgc=-1..}]' to target players on the lower platform (at any time)
#> Use '@p/@a/@e/@r[scores={mgc=0..}]' to target players on the lower platform (when the game has started)
#> Use '@p/@a/@e/@r[scores={mgc=1..}]' to target alive players on the lower platform (when the game has started)
#> Use '@p/@a/@e/@r[scores={mgc=-1}]' to target limbo players (when game has not started)
#> Use '@p/@a/@e/@r[scores={mgc=0}]' to target dead players (when game has begun)
#> Use '@p/@a/@e/@r[scores={mgc=1,mgc-1.5=1}]' to target winner players (triggered the game end)

#> Use '@e[tag=mgc_m0b]' to target all spawned entities in the game (lower platform)
#> Use '@e[tag=3vent]' to target all placed game

#------------------------------EXAMPLES--------------------------------#
#> These commands shall execute ONLY ONCE at the start of your game!
#> PS: (you can write as many commands as you want below!)

# tellraw @a[scores={mgc=-1}] ["",{"text":"Hello world!","color":"white"}]
# execute positioned ~ ~-3 ~ run summon villager ~ ~ ~ {CustomName:'{"text":"Dinnerbone"}'}