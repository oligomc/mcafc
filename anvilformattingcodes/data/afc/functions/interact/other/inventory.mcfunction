scoreboard players remove $j afc.global 9
execute store result storage afc:data temp.inventory[0].Slot int 1 run scoreboard players get $j afc.global
data modify storage afc:data temp.batch.inventory append from storage afc:data temp.inventory[0]