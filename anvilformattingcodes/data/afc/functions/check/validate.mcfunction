data merge storage afc:data {temp:{filter:[], pass:[]}}
data modify storage afc:data temp.filter append from entity @s Inventory[{tag:{display:{}}}]
data remove storage afc:data temp.filter[{tag:{Enchantments:{}}}]
data remove storage afc:data temp.filter[{tag:{Enchantments:[{id:"minecraft:null", lvl:0}]}}]
execute store result score $count afc.global run data get storage afc:data temp.filter
execute if score $count afc.global matches 1.. run function afc:check/loop
execute store result score $count afc.global run data get storage afc:data temp.pass
execute if score $count afc.global matches 1.. run function afc:parse/queue/add