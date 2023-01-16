execute store result score $len afc.global run data get storage afc:data temp.filter[0].tag.display.Name
execute unless score $len afc.global matches 62.. run data modify storage afc:data temp.pass append from storage afc:data temp.filter[0]
data remove storage afc:data temp.filter[0]
scoreboard players remove $count afc.global 1
execute unless score $count afc.global matches 0 run function afc:check/loop