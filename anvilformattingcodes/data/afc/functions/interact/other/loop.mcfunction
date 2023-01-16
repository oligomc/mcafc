execute store result score $j afc.global run data get storage afc:data temp.inventory[0].Slot
execute if score $j afc.global matches ..8 run data modify storage afc:data temp.batch.hotbar append from storage afc:data temp.inventory[0]
execute if score $j afc.global matches 9..35 run function afc:interact/other/inventory
data remove storage afc:data temp.inventory[0]
scoreboard players remove $i afc.global 1
execute unless score $i afc.global matches 0 run function afc:interact/other/loop