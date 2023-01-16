execute store result score $k afc.global run data get storage afc:data temp.inventory[0].Slot
execute if score $k afc.global matches ..8 run function afc:interact/anvil/hotbar
execute if score $k afc.global matches 9..35 run function afc:interact/anvil/inventory
data remove storage afc:data temp.inventory[0]
scoreboard players remove $j afc.global 1
execute unless score $j afc.global matches 0 run function afc:interact/anvil/loop