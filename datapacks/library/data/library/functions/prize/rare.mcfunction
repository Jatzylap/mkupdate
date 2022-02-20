loot replace block -256 14 -119 container.13 loot library:tier
execute if data block -256 14 -119 {Items:[{tag:{t:1}}]} run loot spawn -256 15 -119 loot library:prize/common
execute if data block -256 14 -119 {Items:[{tag:{t:2}}]} run loot spawn -256 15 -119 loot library:prize/common
execute if data block -256 14 -119 {Items:[{tag:{t:3}}]} run loot spawn -256 15 -119 loot library:prize/common
execute unless data block -256 14 -119 {Items:[{tag:{t:1}}]} unless data block -256 14 -119 {Items:[{tag:{t:2}}]} unless data block -256 14 -119 {Items:[{tag:{t:3}}]} run loot spawn -256 15 -119 loot library:prize/rare