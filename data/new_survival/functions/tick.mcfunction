effect give @e[type=villager] regeneration 2 2 true
effect give @e[type=villager] resistance 2 2 true
effect give @e[type=iron_golem] regeneration 100 1 true

# Creepers do no damage.
# execute as @e[type=creeper] run data merge entity @s {ExplosionRadius:0}

# XP Mining
execute as @a[scores={XPMining=1..}] at @s rotated as @s anchored eyes run experience add @s 10 points
execute as @a[scores={XPMining=1..}] run scoreboard players set @s XPMining 0

execute as @a[scores={XPMining2=1..}] at @s rotated as @s anchored eyes run experience add @s 10 points
execute as @a[scores={XPMining2=1..}] run scoreboard players set @s XPMining2 0

# Fix Cost
execute as @e[type=item] store result score @s ns_itemrc run data get entity @s Item.tag.RepairCost

#execute as @e[type=item,scores={ns_itemrc=1..}] at @s run say I am an item with a non-zero repair cost #DEBUG
execute as @e[type=item,scores={ns_itemrc=1..}] at @s if block ~ ~-1 ~ #minecraft:anvil run particle minecraft:happy_villager ~ ~ ~ .1 .1 .1 10 10
execute as @e[type=item,scores={ns_itemrc=1..}] at @s if block ~ ~-1 ~ #minecraft:anvil run data merge entity @s {Item:{tag:{RepairCost:0}}}


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
execute as @a[scores={ns_softban=1..}] if score #hc_tick hc_tick matches 99 run function new_survival:softban_effects
execute as @a[scores={ns_softban=1..}] run gamemode spectator @s
execute as @a[scores={ns_softban=1}] run title @s reset

execute as @a[scores={ns_softban_set=1..}] run scoreboard players operation @s ns_softban_set *= @s ns_softban_20
execute as @a[scores={ns_softban_set=1..}] run scoreboard players operation @s ns_softban_set *= @s ns_softban_60
execute as @a[scores={ns_softban_set=1..}] run scoreboard players operation @s ns_softban_set *= @s ns_softban_60
execute as @a[scores={ns_softban_set=1..}] store result score @s ns_softban run scoreboard players get @s ns_softban_set
execute as @a[scores={ns_softban_set=1..}] run scoreboard players set @s ns_softban_set 0

execute store result score Items SidebarStats if entity @e[type=item]
execute in minecraft:the_nether store result score Netherrack SidebarStats if entity @e[type=item,nbt={Item:{id:"minecraft:netherrack"}}]
execute store result score Entities SidebarStats if entity @e
execute store result score Hostile SidebarStats if entity @e[type=#platy:hostile]
execute store result score FarmAnimal SidebarStats if entity @e[type=#platy:farm_animals]
execute store result score Slimes SidebarStats if entity @e[type=slime]

execute in minecraft:the_nether if score Netherrack SidebarStats matches 125.. if entity @e[type=item,nbt={Item:{id:"minecraft:netherrack"}}] run tellraw @a {"color":"green","text":"Removing all netherrack..."}
execute in minecraft:the_nether if score Netherrack SidebarStats matches 125.. if entity @e[type=item,nbt={Item:{id:"minecraft:netherrack"}}] run kill @e[type=item,nbt={Item:{id:"minecraft:netherrack"}}]
