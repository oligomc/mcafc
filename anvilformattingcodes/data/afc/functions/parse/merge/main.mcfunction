data modify storage afc:data temp.queue[0][0].tag.display.Name set from block 29999985 -63 43376 Text1
execute if data storage afc:data temp.queue[0][0].tag.Enchantments unless data storage afc:data temp.queue[0][0].tag.Enchantments[{id:"minecraft:null"}] run data modify storage afc:data temp.queue[0][0].tag.Enchantments append value {id:"minecraft:null", lvl:0}
execute unless data storage afc:data temp.queue[0][0].tag.Enchantments run data modify storage afc:data temp.queue[0][0].tag.Enchantments set value {}
execute store result score $slot afc.global run data get storage afc:data temp.queue[0][0].Slot
execute if score $slot afc.global matches 0..26 run function afc:parse/merge/nest0
execute if score $slot afc.global matches 27..35 run function afc:parse/merge/nest1
execute unless score $slot afc.global matches 0..35 run function afc:parse/merge/nest2