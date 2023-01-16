data merge storage afc:data {temp:{renamed:[], batch:{hotbar:[], inventory:[]}}}
data modify storage afc:data temp.inventory set from entity @s Inventory
data modify storage afc:data temp.inventory[].tag.checkNameUpdates set value true
execute store result score $j afc.global run data get storage afc:data temp.inventory
function afc:interact/anvil/loop
data modify block 29999984 -63 43376 Items set from storage afc:data temp.batch.hotbar
loot replace entity @s hotbar.0 9 mine 29999984 -63 43376 air{drop_contents:true}
data modify block 29999984 -63 43376 Items set from storage afc:data temp.batch.inventory
loot replace entity @s inventory.0 27 mine 29999984 -63 43376 air{drop_contents:true}
advancement revoke @s only afc:interact/anvil