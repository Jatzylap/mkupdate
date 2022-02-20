loot replace block -245 14 -128 container.13 loot library:tier
execute unless data block -245 14 -128 {Items:[{tag:{t:1}}]} run loot spawn -245 15 -128 loot library:prize/lucky
execute if data block -245 14 -128 {Items:[{tag:{t:1}}]} run loot spawn -245 15 -128 loot library:prize/epic