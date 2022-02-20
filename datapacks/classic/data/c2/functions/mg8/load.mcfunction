setblock 386 43 -162 air
setblock 415 43 -158 air
setblock 425 43 -142 air
setblock 417 43 -112 air
setblock 387 43 -115 air
setblock 379 43 -135 air

setblock -350 2 -47 air
setblock -347 2 -52 redstone_block
execute store result bossbar sw_timer2 max run scoreboard players get @e[limit=1,name="M@K"] mg8.3
spawnpoint @a[team=mg8] 405 101 -138
playsound block.portal.trigger master @a[team=mg8] ~ ~ ~ 100000