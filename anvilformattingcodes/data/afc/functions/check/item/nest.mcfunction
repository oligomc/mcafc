execute if data entity @s Item.tag.Enchantments run data modify entity @s Item.tag.Enchantments append value {id:"minecraft:null", lvl:0}
execute unless data entity @s Item.tag.Enchantments run data modify entity @s Item.tag.Enchantments set value {}
data modify entity @s Item.tag.checkNameUpdates set value true