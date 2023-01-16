data modify storage afc:data temp.queue[0][0] set from block 29999985 -63 43376 Text1

execute if data storage afc:data temp.queue[0][0].tag.Enchantments unless data storage afc:data temp.queue[0][0].tag.Enchantments[{id:"minecraft:null"}] run data modify storage afc:data temp.queue[0][0].tag.Enchantments append value {id:"minecraft:null", lvl:0}
execute unless data storage afc:data temp.queue[0][0].tag.Enchantments run data modify storage afc:data temp.queue[0][0].tag.Enchantments set value {}