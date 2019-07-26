effect give @a haste 1000000 1 true

# Creepers do no damage.
execute as @e[type=creeper] run data merge entity @s {ExplosionRadius:0}



# XP Mining
execute as @a at @s rotated as @s anchored eyes if score @s XPMining matches 1.. run experience add @s 16 points
execute as @a if score @s XPMining matches 1.. run scoreboard players set @s XPMining 0

execute as @a at @s rotated as @s anchored eyes if score @s XPMining2 matches 1.. run experience add @s 16 points
execute as @a if score @s XPMining2 matches 1.. run scoreboard players set @s XPMining2 0

execute as @a store result entity @s SelectedItem.tag.RepairCost int 0 run scoreboard players get @s XPMining



# Sword FX
# execute as @a[nbt={SelectedItem:{id:"minecraft:diamond_sword"}}] run effect give @s speed 1 4 true
# execute as @a[nbt={SelectedItem:{id:"minecraft:diamond_sword"}}] run effect give @s dolphins_grace 1 10 true
