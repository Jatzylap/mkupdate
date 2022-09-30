playsound entity.item_frame.rotate_item master @s ~ ~ ~ 0.2
execute if data block -307 15 72 {Text2:'{"bold":true,"color":"aqua","text":"ON"}'} if data entity @e[tag=focus,tag=3vent,limit=1] ArmorItems[0].tag{id:"?"} run tellraw @s ["",{"text":"No item was detected! Set one in the","color":"red"},{"text":" Spawning slot ","color":"yellow"},{"text":"for this tag to be applied.","color":"red"}]
execute if data entity @s SelectedItem unless data entity @e[tag=focus,tag=3vent,limit=1] ArmorItems[0].tag{id:"?"} run data modify entity @e[tag=focus,tag=mgc_t,limit=1] ArmorItems[0].tag.tag merge value {CanPlaceOn:["?"]}
execute if data entity @s SelectedItem unless data entity @e[tag=focus,tag=3vent,limit=1] ArmorItems[0].tag{id:"?"} run data modify entity @e[tag=focus,tag=mgc_t,limit=1] ArmorItems[0].tag.tag.CanPlaceOn[0] set from entity @s SelectedItem.id
execute unless data entity @s SelectedItem if data entity @e[tag=focus,tag=3vent,limit=1] ArmorItems[0].tag.tag.CanPlaceOn[0] run tellraw @s ["",{"text":"Tag cleared!","color":"aqua"}]
execute unless data entity @s SelectedItem run data remove entity @e[tag=focus,tag=mgc_t,limit=1] ArmorItems[0].tag.tag.CanPlaceOn
execute if data entity @e[tag=sl0t,limit=1] Item run tellraw @s ["",{"text":"The item can be modified!","color":"aqua"}]
data merge entity @e[tag=sl0t,limit=1] {Item:{id:""}}