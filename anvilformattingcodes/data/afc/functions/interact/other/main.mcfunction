data modify storage afc:data temp.inventory set from entity @s Inventory
execute store result score $k afc.global run data modify storage afc:data temp.batch.hotbar append from storage afc:data temp.inventory[{tag:{checkNameUpdates:true}}]
execute if score $k afc.global matches 1.. run function afc:interact/other/nest
advancement revoke @s from afc:interact/block_entity