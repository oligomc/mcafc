scoreboard players remove $k afc.global 9
execute store result storage afc:data temp.inventory[0].Slot int 1 run scoreboard players get $k afc.global
execute if data storage afc:data temp.inventory[0].tag.display.Name run function afc:interact/anvil/tag
data modify storage afc:data temp.batch.inventory append from storage afc:data temp.inventory[0]