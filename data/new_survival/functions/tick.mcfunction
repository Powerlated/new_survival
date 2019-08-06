#effect give @a haste 1000000 1 true
effect give @e[type=villager] regeneration 100 100 true
effect give @e[type=villager] resistance 100 100 true
effect give @e[type=iron_golem] regeneration 100 1 true

recipe give @a *

# Creepers do no damage.
# execute as @e[type=creeper] run data merge entity @s {ExplosionRadius:0}



# XP Mining
execute as @a[scores={XPMining=1..}] at @s rotated as @s anchored eyes run experience add @s 10 points
execute as @a[scores={XPMining=1..}] run scoreboard players set @s XPMining 0

execute as @a[scores={XPMining2=1..}] at @s rotated as @s anchored eyes run experience add @s 10 points
execute as @a[scores={XPMining2=1..}] run scoreboard players set @s XPMining2 0

execute as @a store result entity @s SelectedItem.tag.RepairCost int 0 run scoreboard players get @s XPMining



# Sword FX
# execute as @a[nbt={SelectedItem:{id:"minecraft:diamond_sword"}}] run effect give @s speed 1 4 true
# execute as @a[nbt={SelectedItem:{id:"minecraft:diamond_sword"}}] run effect give @s dolphins_grace 1 10 true
