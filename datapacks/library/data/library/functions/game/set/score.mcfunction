scoreboard players add @s mgc-1.3 1

#Widgets
execute unless data block -304 14 54 {Text3:'{"bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/format"},"extra":[{"bold":false,"color":"yellow","text":">>"}],"text":"Title "}'} if data block -306 14 54 {Text3:'{"bold":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/function library:game/toggle/widget"},"extra":[{"bold":false,"color":"yellow","text":" >>"}],"text":"ON"}'} if score @s mgc-1.3 matches 1 run title @s title ["",{"text":"- ","color":"gold","bold":true},{"score":{"name":"@s","objective":"mgc-1.3"},"color":"aqua","bold":true},{"text":" point -","color":"gold","bold":true}]
execute unless data block -304 14 54 {Text3:'{"bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/format"},"extra":[{"bold":false,"color":"yellow","text":">>"}],"text":"Title "}'} if data block -306 14 54 {Text3:'{"bold":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/function library:game/toggle/widget"},"extra":[{"bold":false,"color":"yellow","text":" >>"}],"text":"ON"}'} unless score @s mgc-1.3 matches 1 run title @s title ["",{"text":"- ","color":"gold","bold":true},{"score":{"name":"@s","objective":"mgc-1.3"},"color":"aqua","bold":true},{"text":" points -","color":"gold","bold":true}]
execute unless data block -304 14 54 {Text3:'{"bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/format"},"extra":[{"bold":false,"color":"yellow","text":">>"}],"text":"Subtitle "}'} if data block -306 14 54 {Text3:'{"bold":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/function library:game/toggle/widget"},"extra":[{"bold":false,"color":"yellow","text":" >>"}],"text":"ON"}'} run title @s title [""]
execute unless data block -304 14 54 {Text3:'{"bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/format"},"extra":[{"bold":false,"color":"yellow","text":">>"}],"text":"Subtitle "}'} if data block -306 14 54 {Text3:'{"bold":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/function library:game/toggle/widget"},"extra":[{"bold":false,"color":"yellow","text":" >>"}],"text":"ON"}'} if score @s mgc-1.3 matches 1 run title @s subtitle ["",{"text":"- ","color":"gold","bold":true},{"score":{"name":"@s","objective":"mgc-1.3"},"color":"aqua","bold":true},{"text":" point -","color":"gold","bold":true}]
execute unless data block -304 14 54 {Text3:'{"bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/format"},"extra":[{"bold":false,"color":"yellow","text":">>"}],"text":"Subtitle "}'} if data block -306 14 54 {Text3:'{"bold":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/function library:game/toggle/widget"},"extra":[{"bold":false,"color":"yellow","text":" >>"}],"text":"ON"}'} unless score @s mgc-1.3 matches 1 run title @s subtitle ["",{"text":"- ","color":"gold","bold":true},{"score":{"name":"@s","objective":"mgc-1.3"},"color":"aqua","bold":true},{"text":" points -","color":"gold","bold":true}]