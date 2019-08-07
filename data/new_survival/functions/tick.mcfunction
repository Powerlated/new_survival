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

# Soft Banning
execute as @a run scoreboard players set @s ns_softban_60 60
execute as @a run scoreboard players set @s ns_softban_20 20
execute as @a[scores={ns_softban=1..}] run scoreboard players remove @s ns_softban 1
execute as @a[scores={ns_softban=1..}] store result score @s ns_softban_hrs run scoreboard players get @s ns_softban
execute as @a[scores={ns_softban=1..}] run scoreboard players operation @s ns_softban_hrs /= @s ns_softban_60
execute as @a[scores={ns_softban=1..}] run scoreboard players operation @s ns_softban_hrs /= @s ns_softban_60
execute as @a[scores={ns_softban=1..}] run scoreboard players operation @s ns_softban_hrs /= @s ns_softban_20
execute as @a[scores={ns_softban=1..}] run scoreboard players add @s ns_softban_hrs 1
execute as @a[scores={ns_softban=1..}] run function new_survival:softban_effects
execute as @a[scores={ns_softban=1}] run title @s reset

execute as @a[scores={ns_softban_set=1..}] run scoreboard players operation @s ns_softban_set *= @s ns_softban_20
execute as @a[scores={ns_softban_set=1..}] run scoreboard players operation @s ns_softban_set *= @s ns_softban_60
execute as @a[scores={ns_softban_set=1..}] run scoreboard players operation @s ns_softban_set *= @s ns_softban_60
execute as @a[scores={ns_softban_set=1..}] store result score @s ns_softban run scoreboard players get @s ns_softban_set
execute as @a[scores={ns_softban_set=1..}] run scoreboard players set @s ns_softban_set 0


