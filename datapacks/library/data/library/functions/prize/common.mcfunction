loot replace block -259 14 -114 container.13 loot library:tier
execute if data block -259 14 -114 {Items:[{tag:{t:1}}]} run loot spawn -259 15 -114 loot library:prize/rare
execute if data block -259 14 -114 {Items:[{tag:{t:2}}]} run loot spawn -259 15 -114 loot library:prize/rare
execute if data block -259 14 -114 {Items:[{tag:{t:3}}]} run loot spawn -259 15 -114 loot library:prize/rare
execute unless data block -259 14 -114 {Items:[{tag:{t:1}}]} unless data block -259 14 -114 {Items:[{tag:{t:2}}]} unless data block -259 14 -114 {Items:[{tag:{t:3}}]} run loot spawn -259 15 -114 loot library:prize/common