item replace block 29999984 -63 43376 container.0 from entity @s inventory.18
item replace block 29999984 -63 43376 container.1 from entity @s inventory.19
item replace block 29999984 -63 43376 container.2 from entity @s inventory.20
item replace block 29999984 -63 43376 container.3 from entity @s inventory.21
item replace block 29999984 -63 43376 container.4 from entity @s inventory.22
item replace block 29999984 -63 43376 container.5 from entity @s inventory.23
item replace block 29999984 -63 43376 container.6 from entity @s inventory.24
item replace block 29999984 -63 43376 container.7 from entity @s inventory.25
item replace block 29999984 -63 43376 container.8 from entity @s inventory.26
scoreboard players remove $slot afc.global 27
execute store result storage afc:data temp.queue[0][0].Slot byte 1 run scoreboard players get $slot afc.global
data modify block 29999984 -63 43376 Items append from storage afc:data temp.queue[0][0]
loot replace entity @s inventory.18 9 mine 29999984 -63 43376 air{drop_contents:true}