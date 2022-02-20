loot replace block -250 14 -125 container.13 loot library:tier
execute if data block -250 14 -125 {Items:[{tag:{t:1}}]} run loot spawn -250 15 -125 loot library:prize/rare
execute if data block -250 14 -125 {Items:[{tag:{t:2}}]} run loot spawn -250 15 -125 loot library:prize/rare
execute if data block -250 14 -125 {Items:[{tag:{t:3}}]} run loot spawn -250 15 -125 loot library:prize/rare
execute unless data block -250 14 -125 {Items:[{tag:{t:1}}]} unless data block -250 14 -125 {Items:[{tag:{t:2}}]} unless data block -250 14 -125 {Items:[{tag:{t:3}}]} run loot spawn -250 15 -125 loot library:prize/epic