fill ~-1 ~ ~-1 ~1 ~3 ~1 air replace #td_blocks
execute positioned ~-1 ~ ~-1 as @e[type=!marker,tag=mg22,dx=2,dy=4,dz=2] at @s run data merge entity @s {Health:0,DeathTime:19s}
execute positioned ~-1 ~ ~-1 run kill @e[type=!marker,tag=mg22,dx=2,dy=4,dz=2]

execute at @s[tag=catapult,tag=!lvl1,tag=!lvl2,tag=!lvl3] run summon item ~ ~ ~ {Motion:[0d,0.6d],Item:{id:"minecraft:cod_spawn_egg",Count:1,tag:{mg:22,EntityTag:{DeathLootTable:"",Silent:1,Tags:[mg22,mg22_s1]},CanPlaceOn:[deepslate_bricks],display:{Lore:['{"text":""}'],Name:'{"text":"Stone","color":"gray","bold":true,"italic":false,"extra":[{"text":" Catapult","color":"yellow"}]}'}}}}
execute at @s[tag=ballista,tag=!lvl1,tag=!lvl2,tag=!lvl3] run summon item ~ ~ ~ {Motion:[0d,0.6d],Item:{id:"minecraft:cod_spawn_egg",Count:1,tag:{mg:22,EntityTag:{DeathLootTable:"",Silent:1,Tags:[mg22,mg22_s2]},CanPlaceOn:[deepslate_bricks],display:{Lore:['{"text":""}'],Name:'{"text":"Crossbow","color":"#ab5922","bold":true,"italic":false,"extra":[{"text":" Ballista","color":"yellow"}]}'}}}}
execute at @s[tag=double_ballista,tag=!lvl1,tag=!lvl2,tag=!lvl3] run summon item ~ ~ ~ {Motion:[0d,0.6d],Item:{id:"minecraft:cod_spawn_egg",Count:1,tag:{mg:22,EntityTag:{DeathLootTable:"",Silent:1,Tags:[mg22,mg22_s3]},CanPlaceOn:[deepslate_bricks],display:{Lore:['{"text":""}'],Name:'{"text":"Crossbow","color":"#ab5922","bold":true,"italic":false,"extra":[{"text":" x2","color":"gold","bold":false},{"text":" Ballista","color":"yellow","bold":true}]}'}}}}
execute at @s[tag=fireball_catapult,tag=!lvl1,tag=!lvl2,tag=!lvl3] run summon item ~ ~ ~ {Motion:[0d,0.6d],Item:{id:"minecraft:cod_spawn_egg",Count:1,tag:{mg:22,EntityTag:{DeathLootTable:"",Silent:1,Tags:[mg22,mg22_s4]},CanPlaceOn:[deepslate_bricks],display:{Lore:['{"text":""}'],Name:'{"text":"Fireball","color":"red","bold":true,"italic":false,"extra":[{"text":" Catapult","color":"yellow","bold":true}]}'}}}}
execute at @s[tag=mortar_cannon,tag=!lvl1,tag=!lvl2,tag=!lvl3] run summon item ~ ~ ~ {Motion:[0d,0.6d],Item:{id:"minecraft:cod_spawn_egg",Count:1,tag:{mg:22,EntityTag:{DeathLootTable:"",Silent:1,Tags:[mg22,mg22_s5]},CanPlaceOn:[deepslate_bricks],display:{Lore:['{"text":""}'],Name:'{"text":"","bold":true,"italic":false,"extra":[{"text":"Mortar Cannon","color":"yellow"}]}'}}}}
execute at @s[tag=harming_dispenser,tag=!lvl1,tag=!lvl2,tag=!lvl3] run summon item ~ ~ ~ {Motion:[0d,0.6d],Item:{id:"minecraft:cod_spawn_egg",Count:1,tag:{mg:22,EntityTag:{DeathLootTable:"",Silent:1,Tags:[mg22,mg22_s6]},CanPlaceOn:[deepslate_bricks],display:{Lore:['{"text":""}'],Name:'{"text":"[","color":"white","bold":true,"italic":false,"extra":[{"text":"Harming","color":"dark_purple"},{"text":"]","color":"white"},{"text":" Dart Dispenser","color":"yellow"}]}'}}}}
execute at @s[tag=slowing_dispenser,tag=!lvl1,tag=!lvl2,tag=!lvl3] run summon item ~ ~ ~ {Motion:[0d,0.6d],Item:{id:"minecraft:cod_spawn_egg",Count:1,tag:{mg:22,EntityTag:{DeathLootTable:"",Silent:1,Tags:[mg22,mg22_s7]},CanPlaceOn:[deepslate_bricks],display:{Lore:['{"text":""}'],Name:'{"text":"[","color":"white","bold":true,"italic":false,"extra":[{"text":"Slowing","color":"dark_aqua"},{"text":"]","color":"white"},{"text":" Dart Dispenser","color":"yellow"}]}'}}}}
execute at @s[tag=medusa_eye_tower,tag=!lvl1,tag=!lvl2,tag=!lvl3] run summon item ~ ~ ~ {Motion:[0d,0.6d],Item:{id:"minecraft:cod_spawn_egg",Count:1,tag:{mg:22,EntityTag:{DeathLootTable:"",Silent:1,Tags:[mg22,mg22_s8]},CanPlaceOn:[deepslate_bricks],display:{Lore:['{"text":""}'],Name:'{"text":"","bold":true,"italic":false,"extra":[{"text":"Medusa Eye","color":"#28a34f"},{"text":" Tower","color":"yellow"}]}'}}}}
execute at @s[tag=toxic_machine,tag=!lvl1,tag=!lvl2,tag=!lvl3] run summon item ~ ~ ~ {Motion:[0d,0.6d],Item:{id:"minecraft:cod_spawn_egg",Count:1,tag:{mg:22,EntityTag:{DeathLootTable:"",Silent:1,Tags:[mg22,mg22_s9]},CanPlaceOn:[deepslate_bricks],display:{Lore:['{"text":""}'],Name:'{"text":"","bold":true,"italic":false,"extra":[{"text":"Toxic Cloud","color":"dark_green"},{"text":" Machine","color":"yellow"}]}'}}}}
execute at @s[tag=flame_machine,tag=!lvl1,tag=!lvl2,tag=!lvl3] run summon item ~ ~ ~ {Motion:[0d,0.6d],Item:{id:"minecraft:cod_spawn_egg",Count:1,tag:{mg:22,EntityTag:{DeathLootTable:"",Silent:1,Tags:[mg22,mg22_s10]},CanPlaceOn:[deepslate_bricks],display:{Lore:['{"text":""}'],Name:'{"text":"","bold":true,"italic":false,"extra":[{"text":"Flame","color":"gold"},{"text":" Machine","color":"yellow"}]}'}}}}
execute at @s[tag=snow_golem_tower,tag=!lvl1,tag=!lvl2,tag=!lvl3] run summon item ~ ~ ~ {Motion:[0d,0.6d],Item:{id:"minecraft:cod_spawn_egg",Count:1,tag:{mg:22,EntityTag:{DeathLootTable:"",Silent:1,Tags:[mg22,mg22_s11]},CanPlaceOn:[deepslate_bricks],display:{Lore:['{"text":""}'],Name:'{"text":"Snow Golem","color":"aqua","bold":true,"italic":false,"extra":[{"text":"","color":"gold"},{"text":" Tower","color":"yellow"}]}'}}}}
execute at @s[tag=golem_tower,tag=!lvl1,tag=!lvl2,tag=!lvl3] run summon item ~ ~ ~ {Motion:[0d,0.6d],Item:{id:"minecraft:cod_spawn_egg",Count:1,tag:{mg:22,EntityTag:{DeathLootTable:"",Silent:1,Tags:[mg22,mg22_s12]},CanPlaceOn:[deepslate_bricks],display:{Lore:['{"text":""}'],Name:'{"text":"Golem","bold":true,"italic":false,"extra":[{"text":"","color":"gold"},{"text":" Tower","color":"yellow"}]}'}}}}
execute at @s[tag=witch_tower,tag=!lvl1,tag=!lvl2,tag=!lvl3] run summon item ~ ~ ~ {Motion:[0d,0.6d],Item:{id:"minecraft:cod_spawn_egg",Count:1,tag:{mg:22,EntityTag:{DeathLootTable:"",Silent:1,Tags:[mg22,mg22_s13]},CanPlaceOn:[deepslate_bricks],display:{Lore:['{"text":""}'],Name:'{"text":"Witch","color":"light_purple","bold":true,"italic":false,"extra":[{"text":"","color":"gold"},{"text":" Tower","color":"yellow"}]}'}}}}
execute at @s[tag=wizard_tower,tag=!lvl1,tag=!lvl2,tag=!lvl3] run summon item ~ ~ ~ {Motion:[0d,0.6d],Item:{id:"minecraft:cod_spawn_egg",Count:1,tag:{mg:22,EntityTag:{DeathLootTable:"",Silent:1,Tags:[mg22,mg22_s14]},CanPlaceOn:[deepslate_bricks],display:{Lore:['{"text":""}'],Name:'{"text":"Wizard","color":"dark_aqua","bold":true,"italic":false,"extra":[{"text":"","color":"gold"},{"text":" Tower","color":"yellow"}]}'}}}}
execute at @s[tag=warlock_tower,tag=!lvl1,tag=!lvl2,tag=!lvl3] run summon item ~ ~ ~ {Motion:[0d,0.6d],Item:{id:"minecraft:cod_spawn_egg",Count:1,tag:{mg:22,EntityTag:{DeathLootTable:"",Silent:1,Tags:[mg22,mg22_s15]},CanPlaceOn:[deepslate_bricks],display:{Lore:['{"text":""}'],Name:'{"text":"Warlock","color":"dark_purple","bold":true,"italic":false,"extra":[{"text":"","color":"gold"},{"text":" Tower","color":"yellow"}]}'}}}}

execute at @s[tag=catapult,tag=lvl1] run summon item ~ ~ ~ {Motion:[0d,0.6d],Item:{id:"minecraft:cod_spawn_egg",Count:1,tag:{mg:22,EntityTag:{DeathLootTable:"",Silent:1,Tags:[mg22,lvl1,mg22_s1]},CanPlaceOn:[deepslate_bricks],display:{Lore:['{"text":"x2 speed","color":"aqua","italic":false}'],Name:'{"text":"Stone","color":"gray","bold":true,"italic":false,"extra":[{"text":" Catapult","color":"yellow"}]}'}}}}
execute at @s[tag=ballista,tag=lvl1] run summon item ~ ~ ~ {Motion:[0d,0.6d],Item:{id:"minecraft:cod_spawn_egg",Count:1,tag:{mg:22,EntityTag:{DeathLootTable:"",Silent:1,Tags:[mg22,lvl1,mg22_s2]},CanPlaceOn:[deepslate_bricks],display:{Lore:['{"text":"x2 speed","color":"aqua","italic":false}'],Name:'{"text":"Crossbow","color":"#ab5922","bold":true,"italic":false,"extra":[{"text":" Ballista","color":"yellow"}]}'}}}}
execute at @s[tag=double_ballista,tag=lvl1] run summon item ~ ~ ~ {Motion:[0d,0.6d],Item:{id:"minecraft:cod_spawn_egg",Count:1,tag:{mg:22,EntityTag:{DeathLootTable:"",Silent:1,Tags:[mg22,lvl1,mg22_s3]},CanPlaceOn:[deepslate_bricks],display:{Lore:['{"text":"x2 speed","color":"aqua","italic":false}'],Name:'{"text":"Crossbow","color":"#ab5922","bold":true,"italic":false,"extra":[{"text":" x2","color":"gold","bold":false},{"text":" Ballista","color":"yellow","bold":true}]}'}}}}
execute at @s[tag=fireball_catapult,tag=lvl1] run summon item ~ ~ ~ {Motion:[0d,0.6d],Item:{id:"minecraft:cod_spawn_egg",Count:1,tag:{mg:22,EntityTag:{DeathLootTable:"",Silent:1,Tags:[mg22,lvl1,mg22_s4]},CanPlaceOn:[deepslate_bricks],display:{Lore:['{"text":"x2 speed","color":"aqua","italic":false}'],Name:'{"text":"Fireball","color":"red","bold":true,"italic":false,"extra":[{"text":" Catapult","color":"yellow","bold":true}]}'}}}}
execute at @s[tag=mortar_cannon,tag=lvl1] run summon item ~ ~ ~ {Motion:[0d,0.6d],Item:{id:"minecraft:cod_spawn_egg",Count:1,tag:{mg:22,EntityTag:{DeathLootTable:"",Silent:1,Tags:[mg22,lvl1,mg22_s5]},CanPlaceOn:[deepslate_bricks],display:{Lore:['{"text":"x2 speed","color":"aqua","italic":false}'],Name:'{"text":"","bold":true,"italic":false,"extra":[{"text":"Mortar Cannon","color":"yellow"}]}'}}}}
execute at @s[tag=harming_dispenser,tag=lvl1] run summon item ~ ~ ~ {Motion:[0d,0.6d],Item:{id:"minecraft:cod_spawn_egg",Count:1,tag:{mg:22,EntityTag:{DeathLootTable:"",Silent:1,Tags:[mg22,lvl1,mg22_s6]},CanPlaceOn:[deepslate_bricks],display:{Lore:['{"text":"x2 speed","color":"aqua","italic":false}'],Name:'{"text":"[","color":"white","bold":true,"italic":false,"extra":[{"text":"Harming","color":"dark_purple"},{"text":"]","color":"white"},{"text":" Dart Dispenser","color":"yellow"}]}'}}}}
execute at @s[tag=slowing_dispenser,tag=lvl1] run summon item ~ ~ ~ {Motion:[0d,0.6d],Item:{id:"minecraft:cod_spawn_egg",Count:1,tag:{mg:22,EntityTag:{DeathLootTable:"",Silent:1,Tags:[mg22,lvl1,mg22_s7]},CanPlaceOn:[deepslate_bricks],display:{Lore:['{"text":"x2 speed","color":"aqua","italic":false}'],Name:'{"text":"[","color":"white","bold":true,"italic":false,"extra":[{"text":"Slowing","color":"dark_aqua"},{"text":"]","color":"white"},{"text":" Dart Dispenser","color":"yellow"}]}'}}}}
execute at @s[tag=medusa_eye_tower,tag=lvl1] run summon item ~ ~ ~ {Motion:[0d,0.6d],Item:{id:"minecraft:cod_spawn_egg",Count:1,tag:{mg:22,EntityTag:{DeathLootTable:"",Silent:1,Tags:[mg22,lvl1,mg22_s8]},CanPlaceOn:[deepslate_bricks],display:{Lore:['{"text":"x2 speed","color":"aqua","italic":false}'],Name:'{"text":"","bold":true,"italic":false,"extra":[{"text":"Medusa Eye","color":"#28a34f"},{"text":" Tower","color":"yellow"}]}'}}}}
execute at @s[tag=toxic_machine,tag=lvl1] run summon item ~ ~ ~ {Motion:[0d,0.6d],Item:{id:"minecraft:cod_spawn_egg",Count:1,tag:{mg:22,EntityTag:{DeathLootTable:"",Silent:1,Tags:[mg22,lvl1,mg22_s9]},CanPlaceOn:[deepslate_bricks],display:{Lore:['{"text":"x2 speed","color":"aqua","italic":false}'],Name:'{"text":"","bold":true,"italic":false,"extra":[{"text":"Toxic Cloud","color":"dark_green"},{"text":" Machine","color":"yellow"}]}'}}}}
execute at @s[tag=flame_machine,tag=lvl1] run summon item ~ ~ ~ {Motion:[0d,0.6d],Item:{id:"minecraft:cod_spawn_egg",Count:1,tag:{mg:22,EntityTag:{DeathLootTable:"",Silent:1,Tags:[mg22,lvl1,mg22_s10]},CanPlaceOn:[deepslate_bricks],display:{Lore:['{"text":"x2 speed","color":"aqua","italic":false}'],Name:'{"text":"","bold":true,"italic":false,"extra":[{"text":"Flame","color":"gold"},{"text":" Machine","color":"yellow"}]}'}}}}
execute at @s[tag=snow_golem_tower,tag=lvl1] run summon item ~ ~ ~ {Motion:[0d,0.6d],Item:{id:"minecraft:cod_spawn_egg",Count:1,tag:{mg:22,EntityTag:{DeathLootTable:"",Silent:1,Tags:[mg22,lvl1,mg22_s11]},CanPlaceOn:[deepslate_bricks],display:{Lore:['{"text":"x2 speed","color":"aqua","italic":false}'],Name:'{"text":"Snow Golem","color":"aqua","bold":true,"italic":false,"extra":[{"text":"","color":"gold"},{"text":" Tower","color":"yellow"}]}'}}}}
execute at @s[tag=golem_tower,tag=lvl1] run summon item ~ ~ ~ {Motion:[0d,0.6d],Item:{id:"minecraft:cod_spawn_egg",Count:1,tag:{mg:22,EntityTag:{DeathLootTable:"",Silent:1,Tags:[mg22,lvl1,mg22_s12]},CanPlaceOn:[deepslate_bricks],display:{Lore:['{"text":"x2 speed","color":"aqua","italic":false}'],Name:'{"text":"Golem","bold":true,"italic":false,"extra":[{"text":"","color":"gold"},{"text":" Tower","color":"yellow"}]}'}}}}
execute at @s[tag=witch_tower,tag=lvl1] run summon item ~ ~ ~ {Motion:[0d,0.6d],Item:{id:"minecraft:cod_spawn_egg",Count:1,tag:{mg:22,EntityTag:{DeathLootTable:"",Silent:1,Tags:[mg22,lvl1,mg22_s13]},CanPlaceOn:[deepslate_bricks],display:{Lore:['{"text":"x2 speed","color":"aqua","italic":false}'],Name:'{"text":"Witch","color":"light_purple","bold":true,"italic":false,"extra":[{"text":"","color":"gold"},{"text":" Tower","color":"yellow"}]}'}}}}
execute at @s[tag=wizard_tower,tag=lvl1] run summon item ~ ~ ~ {Motion:[0d,0.6d],Item:{id:"minecraft:cod_spawn_egg",Count:1,tag:{mg:22,EntityTag:{DeathLootTable:"",Silent:1,Tags:[mg22,lvl1,mg22_s14]},CanPlaceOn:[deepslate_bricks],display:{Lore:['{"text":"x2 speed","color":"aqua","italic":false}'],Name:'{"text":"Wizard","color":"dark_aqua","bold":true,"italic":false,"extra":[{"text":"","color":"gold"},{"text":" Tower","color":"yellow"}]}'}}}}
execute at @s[tag=warlock_tower,tag=lvl1] run summon item ~ ~ ~ {Motion:[0d,0.6d],Item:{id:"minecraft:cod_spawn_egg",Count:1,tag:{mg:22,EntityTag:{DeathLootTable:"",Silent:1,Tags:[mg22,lvl1,mg22_s15]},CanPlaceOn:[deepslate_bricks],display:{Lore:['{"text":"x2 speed","color":"aqua","italic":false}'],Name:'{"text":"Warlock","color":"dark_purple","bold":true,"italic":false,"extra":[{"text":"","color":"gold"},{"text":" Tower","color":"yellow"}]}'}}}}

execute at @s[tag=catapult,tag=lvl2] run summon item ~ ~ ~ {Motion:[0d,0.6d],Item:{id:"minecraft:cod_spawn_egg",Count:1,tag:{mg:22,EntityTag:{DeathLootTable:"",Silent:1,Tags:[mg22,lvl2,mg22_s1]},CanPlaceOn:[deepslate_bricks],display:{Lore:['{"text":"x3 speed","color":"yellow","italic":false}'],Name:'{"text":"Stone","color":"gray","bold":true,"italic":false,"extra":[{"text":" Catapult","color":"yellow"}]}'}}}}
execute at @s[tag=ballista,tag=lvl2] run summon item ~ ~ ~ {Motion:[0d,0.6d],Item:{id:"minecraft:cod_spawn_egg",Count:1,tag:{mg:22,EntityTag:{DeathLootTable:"",Silent:1,Tags:[mg22,lvl2,mg22_s2]},CanPlaceOn:[deepslate_bricks],display:{Lore:['{"text":"x3 speed","color":"yellow","italic":false}'],Name:'{"text":"Crossbow","color":"#ab5922","bold":true,"italic":false,"extra":[{"text":" Ballista","color":"yellow"}]}'}}}}
execute at @s[tag=double_ballista,tag=lvl2] run summon item ~ ~ ~ {Motion:[0d,0.6d],Item:{id:"minecraft:cod_spawn_egg",Count:1,tag:{mg:22,EntityTag:{DeathLootTable:"",Silent:1,Tags:[mg22,lvl2,mg22_s3]},CanPlaceOn:[deepslate_bricks],display:{Lore:['{"text":"x3 speed","color":"yellow","italic":false}'],Name:'{"text":"Crossbow","color":"#ab5922","bold":true,"italic":false,"extra":[{"text":" x2","color":"gold","bold":false},{"text":" Ballista","color":"yellow","bold":true}]}'}}}}
execute at @s[tag=fireball_catapult,tag=lvl2] run summon item ~ ~ ~ {Motion:[0d,0.6d],Item:{id:"minecraft:cod_spawn_egg",Count:1,tag:{mg:22,EntityTag:{DeathLootTable:"",Silent:1,Tags:[mg22,lvl2,mg22_s4]},CanPlaceOn:[deepslate_bricks],display:{Lore:['{"text":"x3 speed","color":"yellow","italic":false}'],Name:'{"text":"Fireball","color":"red","bold":true,"italic":false,"extra":[{"text":" Catapult","color":"yellow","bold":true}]}'}}}}
execute at @s[tag=mortar_cannon,tag=lvl2] run summon item ~ ~ ~ {Motion:[0d,0.6d],Item:{id:"minecraft:cod_spawn_egg",Count:1,tag:{mg:22,EntityTag:{DeathLootTable:"",Silent:1,Tags:[mg22,lvl2,mg22_s5]},CanPlaceOn:[deepslate_bricks],display:{Lore:['{"text":"x3 speed","color":"yellow","italic":false}'],Name:'{"text":"","bold":true,"italic":false,"extra":[{"text":"Mortar Cannon","color":"yellow"}]}'}}}}
execute at @s[tag=harming_dispenser,tag=lvl2] run summon item ~ ~ ~ {Motion:[0d,0.6d],Item:{id:"minecraft:cod_spawn_egg",Count:1,tag:{mg:22,EntityTag:{DeathLootTable:"",Silent:1,Tags:[mg22,lvl2,mg22_s6]},CanPlaceOn:[deepslate_bricks],display:{Lore:['{"text":"x3 speed","color":"yellow","italic":false}'],Name:'{"text":"[","color":"white","bold":true,"italic":false,"extra":[{"text":"Harming","color":"dark_purple"},{"text":"]","color":"white"},{"text":" Dart Dispenser","color":"yellow"}]}'}}}}
execute at @s[tag=slowing_dispenser,tag=lvl2] run summon item ~ ~ ~ {Motion:[0d,0.6d],Item:{id:"minecraft:cod_spawn_egg",Count:1,tag:{mg:22,EntityTag:{DeathLootTable:"",Silent:1,Tags:[mg22,lvl2,mg22_s7]},CanPlaceOn:[deepslate_bricks],display:{Lore:['{"text":"x3 speed","color":"yellow","italic":false}'],Name:'{"text":"[","color":"white","bold":true,"italic":false,"extra":[{"text":"Slowing","color":"dark_aqua"},{"text":"]","color":"white"},{"text":" Dart Dispenser","color":"yellow"}]}'}}}}
execute at @s[tag=medusa_eye_tower,tag=lvl2] run summon item ~ ~ ~ {Motion:[0d,0.6d],Item:{id:"minecraft:cod_spawn_egg",Count:1,tag:{mg:22,EntityTag:{DeathLootTable:"",Silent:1,Tags:[mg22,lvl2,mg22_s8]},CanPlaceOn:[deepslate_bricks],display:{Lore:['{"text":"x3 speed","color":"yellow","italic":false}'],Name:'{"text":"","bold":true,"italic":false,"extra":[{"text":"Medusa Eye","color":"#28a34f"},{"text":" Tower","color":"yellow"}]}'}}}}
execute at @s[tag=toxic_machine,tag=lvl2] run summon item ~ ~ ~ {Motion:[0d,0.6d],Item:{id:"minecraft:cod_spawn_egg",Count:1,tag:{mg:22,EntityTag:{DeathLootTable:"",Silent:1,Tags:[mg22,lvl2,mg22_s9]},CanPlaceOn:[deepslate_bricks],display:{Lore:['{"text":"x3 speed","color":"yellow","italic":false}'],Name:'{"text":"","bold":true,"italic":false,"extra":[{"text":"Toxic Cloud","color":"dark_green"},{"text":" Machine","color":"yellow"}]}'}}}}
execute at @s[tag=flame_machine,tag=lvl2] run summon item ~ ~ ~ {Motion:[0d,0.6d],Item:{id:"minecraft:cod_spawn_egg",Count:1,tag:{mg:22,EntityTag:{DeathLootTable:"",Silent:1,Tags:[mg22,lvl2,mg22_s10]},CanPlaceOn:[deepslate_bricks],display:{Lore:['{"text":"x3 speed","color":"yellow","italic":false}'],Name:'{"text":"","bold":true,"italic":false,"extra":[{"text":"Flame","color":"gold"},{"text":" Machine","color":"yellow"}]}'}}}}
execute at @s[tag=snow_golem_tower,tag=lvl2] run summon item ~ ~ ~ {Motion:[0d,0.6d],Item:{id:"minecraft:cod_spawn_egg",Count:1,tag:{mg:22,EntityTag:{DeathLootTable:"",Silent:1,Tags:[mg22,lvl2,mg22_s11]},CanPlaceOn:[deepslate_bricks],display:{Lore:['{"text":"x3 speed","color":"yellow","italic":false}'],Name:'{"text":"Snow Golem","color":"aqua","bold":true,"italic":false,"extra":[{"text":"","color":"gold"},{"text":" Tower","color":"yellow"}]}'}}}}
execute at @s[tag=golem_tower,tag=lvl2] run summon item ~ ~ ~ {Motion:[0d,0.6d],Item:{id:"minecraft:cod_spawn_egg",Count:1,tag:{mg:22,EntityTag:{DeathLootTable:"",Silent:1,Tags:[mg22,lvl2,mg22_s12]},CanPlaceOn:[deepslate_bricks],display:{Lore:['{"text":"x3 speed","color":"yellow","italic":false}'],Name:'{"text":"Golem","bold":true,"italic":false,"extra":[{"text":"","color":"gold"},{"text":" Tower","color":"yellow"}]}'}}}}
execute at @s[tag=witch_tower,tag=lvl2] run summon item ~ ~ ~ {Motion:[0d,0.6d],Item:{id:"minecraft:cod_spawn_egg",Count:1,tag:{mg:22,EntityTag:{DeathLootTable:"",Silent:1,Tags:[mg22,lvl2,mg22_s13]},CanPlaceOn:[deepslate_bricks],display:{Lore:['{"text":"x3 speed","color":"yellow","italic":false}'],Name:'{"text":"Witch","color":"light_purple","bold":true,"italic":false,"extra":[{"text":"","color":"gold"},{"text":" Tower","color":"yellow"}]}'}}}}
execute at @s[tag=wizard_tower,tag=lvl2] run summon item ~ ~ ~ {Motion:[0d,0.6d],Item:{id:"minecraft:cod_spawn_egg",Count:1,tag:{mg:22,EntityTag:{DeathLootTable:"",Silent:1,Tags:[mg22,lvl2,mg22_s14]},CanPlaceOn:[deepslate_bricks],display:{Lore:['{"text":"x3 speed","color":"yellow","italic":false}'],Name:'{"text":"Wizard","color":"dark_aqua","bold":true,"italic":false,"extra":[{"text":"","color":"gold"},{"text":" Tower","color":"yellow"}]}'}}}}
execute at @s[tag=warlock_tower,tag=lvl2] run summon item ~ ~ ~ {Motion:[0d,0.6d],Item:{id:"minecraft:cod_spawn_egg",Count:1,tag:{mg:22,EntityTag:{DeathLootTable:"",Silent:1,Tags:[mg22,lvl2,mg22_s15]},CanPlaceOn:[deepslate_bricks],display:{Lore:['{"text":"x3 speed","color":"yellow","italic":false}'],Name:'{"text":"Warlock","color":"dark_purple","bold":true,"italic":false,"extra":[{"text":"","color":"gold"},{"text":" Tower","color":"yellow"}]}'}}}}

execute at @s[tag=catapult,tag=lvl3] run summon item ~ ~ ~ {Motion:[0d,0.6d],Item:{id:"minecraft:cod_spawn_egg",Count:1,tag:{mg:22,EntityTag:{DeathLootTable:"",Silent:1,Tags:[mg22,lvl3,mg22_s1]},CanPlaceOn:[deepslate_bricks],display:{Lore:['{"text":"Maximum speed!","color":"red","italic":false}'],Name:'{"text":"Stone","color":"gray","bold":true,"italic":false,"extra":[{"text":" Catapult","color":"yellow"}]}'}}}}
execute at @s[tag=ballista,tag=lvl3] run summon item ~ ~ ~ {Motion:[0d,0.6d],Item:{id:"minecraft:cod_spawn_egg",Count:1,tag:{mg:22,EntityTag:{DeathLootTable:"",Silent:1,Tags:[mg22,lvl3,mg22_s2]},CanPlaceOn:[deepslate_bricks],display:{Lore:['{"text":"Maximum speed!","color":"red","italic":false}'],Name:'{"text":"Crossbow","color":"#ab5922","bold":true,"italic":false,"extra":[{"text":" Ballista","color":"yellow"}]}'}}}}
execute at @s[tag=double_ballista,tag=lvl3] run summon item ~ ~ ~ {Motion:[0d,0.6d],Item:{id:"minecraft:cod_spawn_egg",Count:1,tag:{mg:22,EntityTag:{DeathLootTable:"",Silent:1,Tags:[mg22,lvl3,mg22_s3]},CanPlaceOn:[deepslate_bricks],display:{Lore:['{"text":"Maximum speed!","color":"red","italic":false}'],Name:'{"text":"Crossbow","color":"#ab5922","bold":true,"italic":false,"extra":[{"text":" x2","color":"gold","bold":false},{"text":" Ballista","color":"yellow","bold":true}]}'}}}}
execute at @s[tag=fireball_catapult,tag=lvl3] run summon item ~ ~ ~ {Motion:[0d,0.6d],Item:{id:"minecraft:cod_spawn_egg",Count:1,tag:{mg:22,EntityTag:{DeathLootTable:"",Silent:1,Tags:[mg22,lvl3,mg22_s4]},CanPlaceOn:[deepslate_bricks],display:{Lore:['{"text":"Maximum speed!","color":"red","italic":false}'],Name:'{"text":"Fireball","color":"red","bold":true,"italic":false,"extra":[{"text":" Catapult","color":"yellow","bold":true}]}'}}}}
execute at @s[tag=mortar_cannon,tag=lvl3] run summon item ~ ~ ~ {Motion:[0d,0.6d],Item:{id:"minecraft:cod_spawn_egg",Count:1,tag:{mg:22,EntityTag:{DeathLootTable:"",Silent:1,Tags:[mg22,lvl3,mg22_s5]},CanPlaceOn:[deepslate_bricks],display:{Lore:['{"text":"Maximum speed!","color":"red","italic":false}'],Name:'{"text":"","bold":true,"italic":false,"extra":[{"text":"Mortar Cannon","color":"yellow"}]}'}}}}
execute at @s[tag=harming_dispenser,tag=lvl3] run summon item ~ ~ ~ {Motion:[0d,0.6d],Item:{id:"minecraft:cod_spawn_egg",Count:1,tag:{mg:22,EntityTag:{DeathLootTable:"",Silent:1,Tags:[mg22,lvl3,mg22_s6]},CanPlaceOn:[deepslate_bricks],display:{Lore:['{"text":"Maximum speed!","color":"red","italic":false}'],Name:'{"text":"[","color":"white","bold":true,"italic":false,"extra":[{"text":"Harming","color":"dark_purple"},{"text":"]","color":"white"},{"text":" Dart Dispenser","color":"yellow"}]}'}}}}
execute at @s[tag=slowing_dispenser,tag=lvl3] run summon item ~ ~ ~ {Motion:[0d,0.6d],Item:{id:"minecraft:cod_spawn_egg",Count:1,tag:{mg:22,EntityTag:{DeathLootTable:"",Silent:1,Tags:[mg22,lvl3,mg22_s7]},CanPlaceOn:[deepslate_bricks],display:{Lore:['{"text":"Maximum speed!","color":"red","italic":false}'],Name:'{"text":"[","color":"white","bold":true,"italic":false,"extra":[{"text":"Slowing","color":"dark_aqua"},{"text":"]","color":"white"},{"text":" Dart Dispenser","color":"yellow"}]}'}}}}
execute at @s[tag=medusa_eye_tower,tag=lvl3] run summon item ~ ~ ~ {Motion:[0d,0.6d],Item:{id:"minecraft:cod_spawn_egg",Count:1,tag:{mg:22,EntityTag:{DeathLootTable:"",Silent:1,Tags:[mg22,lvl3,mg22_s8]},CanPlaceOn:[deepslate_bricks],display:{Lore:['{"text":"Maximum speed!","color":"red","italic":false}'],Name:'{"text":"","bold":true,"italic":false,"extra":[{"text":"Medusa Eye","color":"#28a34f"},{"text":" Tower","color":"yellow"}]}'}}}}
execute at @s[tag=toxic_machine,tag=lvl3] run summon item ~ ~ ~ {Motion:[0d,0.6d],Item:{id:"minecraft:cod_spawn_egg",Count:1,tag:{mg:22,EntityTag:{DeathLootTable:"",Silent:1,Tags:[mg22,lvl3,mg22_s9]},CanPlaceOn:[deepslate_bricks],display:{Lore:['{"text":"Maximum speed!","color":"red","italic":false}'],Name:'{"text":"","bold":true,"italic":false,"extra":[{"text":"Toxic Cloud","color":"dark_green"},{"text":" Machine","color":"yellow"}]}'}}}}
execute at @s[tag=flame_machine,tag=lvl3] run summon item ~ ~ ~ {Motion:[0d,0.6d],Item:{id:"minecraft:cod_spawn_egg",Count:1,tag:{mg:22,EntityTag:{DeathLootTable:"",Silent:1,Tags:[mg22,lvl3,mg22_s10]},CanPlaceOn:[deepslate_bricks],display:{Lore:['{"text":"Maximum speed!","color":"red","italic":false}'],Name:'{"text":"","bold":true,"italic":false,"extra":[{"text":"Flame","color":"gold"},{"text":" Machine","color":"yellow"}]}'}}}}
execute at @s[tag=snow_golem_tower,tag=lvl3] run summon item ~ ~ ~ {Motion:[0d,0.6d],Item:{id:"minecraft:cod_spawn_egg",Count:1,tag:{mg:22,EntityTag:{DeathLootTable:"",Silent:1,Tags:[mg22,lvl3,mg22_s11]},CanPlaceOn:[deepslate_bricks],display:{Lore:['{"text":"Maximum speed!","color":"red","italic":false}'],Name:'{"text":"Snow Golem","color":"aqua","bold":true,"italic":false,"extra":[{"text":"","color":"gold"},{"text":" Tower","color":"yellow"}]}'}}}}
execute at @s[tag=golem_tower,tag=lvl3] run summon item ~ ~ ~ {Motion:[0d,0.6d],Item:{id:"minecraft:cod_spawn_egg",Count:1,tag:{mg:22,EntityTag:{DeathLootTable:"",Silent:1,Tags:[mg22,lvl3,mg22_s12]},CanPlaceOn:[deepslate_bricks],display:{Lore:['{"text":"Maximum speed!","color":"red","italic":false}'],Name:'{"text":"Golem","bold":true,"italic":false,"extra":[{"text":"","color":"gold"},{"text":" Tower","color":"yellow"}]}'}}}}
execute at @s[tag=witch_tower,tag=lvl3] run summon item ~ ~ ~ {Motion:[0d,0.6d],Item:{id:"minecraft:cod_spawn_egg",Count:1,tag:{mg:22,EntityTag:{DeathLootTable:"",Silent:1,Tags:[mg22,lvl3,mg22_s13]},CanPlaceOn:[deepslate_bricks],display:{Lore:['{"text":"Maximum speed!","color":"red","italic":false}'],Name:'{"text":"Witch","color":"light_purple","bold":true,"italic":false,"extra":[{"text":"","color":"gold"},{"text":" Tower","color":"yellow"}]}'}}}}
execute at @s[tag=wizard_tower,tag=lvl3] run summon item ~ ~ ~ {Motion:[0d,0.6d],Item:{id:"minecraft:cod_spawn_egg",Count:1,tag:{mg:22,EntityTag:{DeathLootTable:"",Silent:1,Tags:[mg22,lvl3,mg22_s14]},CanPlaceOn:[deepslate_bricks],display:{Lore:['{"text":"Maximum speed!","color":"red","italic":false}'],Name:'{"text":"Wizard","color":"dark_aqua","bold":true,"italic":false,"extra":[{"text":"","color":"gold"},{"text":" Tower","color":"yellow"}]}'}}}}
execute at @s[tag=warlock_tower,tag=lvl3] run summon item ~ ~ ~ {Motion:[0d,0.6d],Item:{id:"minecraft:cod_spawn_egg",Count:1,tag:{mg:22,EntityTag:{DeathLootTable:"",Silent:1,Tags:[mg22,lvl3,mg22_s15]},CanPlaceOn:[deepslate_bricks],display:{Lore:['{"text":"Maximum speed!","color":"red","italic":false}'],Name:'{"text":"Warlock","color":"dark_purple","bold":true,"italic":false,"extra":[{"text":"","color":"gold"},{"text":" Tower","color":"yellow"}]}'}}}}

playsound block.beehive.exit master @a[scores={mg22=1..}] ~ ~ ~ 0.5 0.9
particle cloud ~ ~1 ~ 0.8 2 0.8 0.01 600 normal @a[scores={mg22=1..}]
kill @s