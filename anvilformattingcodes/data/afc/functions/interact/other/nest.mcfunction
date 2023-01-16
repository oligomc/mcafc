data merge storage afc:data {temp:{batch:{hotbar:[], inventory:[]}}}
data remove storage afc:data temp.inventory[{tag:{checkNameUpdates:true}}].tag.checkNameUpdates
data remove storage afc:data temp.inventory[{tag:{Enchantments:{}}}].tag.Enchantments
data remove storage afc:data temp.inventory[{tag:{Enchantments:[{id:"minecraft:null"}]}}].tag.Enchantments[{id:"minecraft:null"}]
execute store result score $i afc.global run data get storage afc:data temp.inventory
function afc:interact/other/loop
data modify block 29999984 -63 43376 Items set from storage afc:data temp.batch.hotbar
loot replace entity @s hotbar.0 9 mine 29999984 -63 43376 air{drop_contents:true}
data modify block 29999984 -63 43376 Items set from storage afc:data temp.batch.inventory
loot replace entity @s inventory.0 27 mine 29999984 -63 43376 air{drop_contents:true}
