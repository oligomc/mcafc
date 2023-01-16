item replace block 29999984 -63 43376 container.0 from entity @s weapon.offhand
item replace block 29999984 -63 43376 container.1 from entity @s armor.feet
item replace block 29999984 -63 43376 container.2 from entity @s armor.legs
item replace block 29999984 -63 43376 container.3 from entity @s armor.chest
item replace block 29999984 -63 43376 container.4 from entity @s armor.head
execute if score $slot afc.global matches -106 run scoreboard players set $slot afc.global 0
execute if score $slot afc.global matches 100.. run scoreboard players remove $slot afc.global 99
execute store result storage afc:data temp.queue[0][0].Slot byte 1 run scoreboard players get $slot afc.global
data modify block 29999984 -63 43376 Items append from storage afc:data temp.queue[0][0]
loot replace entity @s weapon.offhand 5 mine 29999984 -63 43376 air{drop_contents:true}