give @s bat_spawn_egg{kill:1,tool:1b,EntityTag:{Tags:[pos]},display:{Name:'{"text":"kill"}'}}
give @s carrot_on_a_stick{kill:1,tool:1b,display:{Lore:['{"text":"--> Right-Click to Shoot an accurate death ray","color":"red","italic":false}'],Name:'{"text":"Kill Tool","color":"gold","italic":false,"bold":true}'}}
tellraw @s ["",{"text":"Sayonaraa! You obtained the Kill Tool!","color":"green","bold":true},{"text":"\nYou can use this by right-clicking it, from one position to another on a surface to clear all mobs! (","color":"gold"},{"text":"apart from: Armour Stands, Players & Item Frames","color":"light_purple"},{"text":") \n--> You can also rename eggs in the anvil to a specific entity!","color":"gold"}]
playsound entity.bat.death master @s ~ ~ ~ 1