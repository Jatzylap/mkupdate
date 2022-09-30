give @s bat_spawn_egg{tool:1b,EntityTag:{Tags:[pos]},display:{Name:"{\"text\":\"grass_block\"}"}}
give @s bat_spawn_egg{tool:1b,EntityTag:{Tags:[pos]},display:{Name:"{\"text\":\"stone\"}"}}
give @s bat_spawn_egg{tool:1b,EntityTag:{Tags:[pos]},display:{Name:"{\"text\":\"spruce_wood\"}"}}
give @s bat_spawn_egg{tool:1b,EntityTag:{Tags:[pos]},display:{Name:"{\"text\":\"jungle_log\"}"}}
give @s bat_spawn_egg{tool:1b,EntityTag:{Tags:[pos]},display:{Name:"{\"text\":\"air\"}"}}
tellraw @s ["",{"text":"Konichiwaa! You obtained the Mini Fill Tools!","color":"green","bold":true},{"text":"\nYou can use this by right-clicking on a block, and then another block to fill the terrain!","color":"gold"},{"text":"\n--> Try out other block names by renaming the egg in an anvil, cool eh?!","color":"green"}]
playsound entity.bat.ambient master @s ~ ~ ~ 1