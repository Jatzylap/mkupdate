execute unless entity @a[scores={3.1=1..}] run setblock -113 8 9 iron_block
scoreboard players reset @a 3.1

# <patches>
execute in overworld run setblock -284 2 -65 air
execute in overworld run data merge block -113 46 76 {Text4:'{"obfuscated":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/tellraw @s [\\"\\",{\\"text\\":\\"[\\",\\"color\\":\\"yellow\\",\\"bold\\":true},{\\"text\\":\\"Click here\\",\\"color\\":\\"dark_green\\",\\"hoverEvent\\":{\\"action\\":\\"show_text\\",\\"value\\":\\"Subscribe to Jatzylap!\\"},\\"clickEvent\\":{\\"action\\":\\"open_url\\",\\"value\\":\\"https://www.youtube.com/channel/UC6d_nGPYtUDTEmQ5Cl4V4QA\\"}},{\\"text\\":\\"]\\",\\"color\\":\\"yellow\\",\\"bold\\":true},{\\"text\\":\\" to visit my\\",\\"color\\":\\"yellow\\"},{\\"text\\":\\" You\\",\\"color\\":\\"reset\\",\\"bold\\":true},{\\"text\\":\\"Tube\\",\\"color\\":\\"red\\",\\"bold\\":true},{\\"text\\":\\" channel!\\\\n\\",\\"color\\":\\"yellow\\"},{\\"text\\":\\"[\\",\\"color\\":\\"yellow\\",\\"bold\\":true},{\\"text\\":\\"Click here\\",\\"color\\":\\"dark_aqua\\",\\"hoverEvent\\":{\\"action\\":\\"show_text\\",\\"value\\":\\"Follow Jatzylap!\\"},\\"clickEvent\\":{\\"action\\":\\"open_url\\",\\"value\\":\\"https://twitter.com/j4tzplayz\\"}},{\\"text\\":\\"]\\",\\"color\\":\\"yellow\\",\\"bold\\":true},{\\"text\\":\\" to visit my\\",\\"color\\":\\"yellow\\"},{\\"text\\":\\" Twi\\",\\"color\\":\\"dark_aqua\\",\\"bold\\":true},{\\"text\\":\\"tter\\",\\"color\\":\\"aqua\\",\\"bold\\":true},{\\"text\\":\\" account!\\\\n\\",\\"color\\":\\"yellow\\"},{\\"text\\":\\"[\\",\\"color\\":\\"yellow\\",\\"bold\\":true},{\\"text\\":\\"Click here\\",\\"color\\":\\"light_purple\\",\\"hoverEvent\\":{\\"action\\":\\"show_text\\",\\"value\\":\\"Join the Jatzycord!\\"},\\"clickEvent\\":{\\"action\\":\\"open_url\\",\\"value\\":\\"https://discord.gg/S4bBd4Xk3P\\"}},{\\"text\\":\\"]\\",\\"color\\":\\"yellow\\",\\"bold\\":true},{\\"text\\":\\" to join my \\",\\"color\\":\\"yellow\\"},{\\"text\\":\\"Dis\\",\\"color\\":\\"gray\\",\\"bold\\":true},{\\"text\\":\\"cord\\",\\"color\\":\\"light_purple\\",\\"bold\\":true},{\\"text\\":\\" server!\\",\\"color\\":\\"yellow\\"}]"},"text":"jjjjjjjjjjjjj"}'}
execute in overworld run setblock -336 4 -95 air
execute in overworld run fill -332 2 -90 -330 2 -90 air
execute in overworld run setblock -330 2 -90 command_block[facing=up]{Command:"function d2:mg11/reset"}
execute in overworld run setblock -320 3 -95 command_block[facing=up]{Command:"function d2:mg11/load"}
execute in overworld run fill -318 2 -95 -318 3 -95 cobblestone
execute in overworld run setblock -319 4 -95 repeater[facing=west,delay=2]
execute in overworld run setblock -318 4 -95 repeating_command_block{Command:"function d2:mg11/loop"}
execute in overworld run forceload add 968 1095 1015 1272

# <new minigames>






